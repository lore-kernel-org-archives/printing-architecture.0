Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1405523219; x=2269436819;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rVR8r36/O++y3yu/j+Ek2X/I0kQYI63lXOLCOavJWR8=;
	b=uEJVwedt/cj4ZPazoUssm2rYMdjEvpsGYDD97aSIqc0dDqM8nCFbVTnCFT3hy/Zl
	dC+K0KggNnsIKiNxkgf2y44wZDP8FXNjn4TOnH+0P0ZnrY3kpvE4kxAorqtavuCC
	29MDpB9KQBH75nBwib7j864IqGbDnyArwznCzFwjg3neQY+ggQfXZQZlgs2nohs2
	fZF4I94cfJ3J+HaQUn8BPSNTS2Fp2SDk/2dOGLQFTJD37ciHprw5YlQFGA4jyj9E
	WiHNEYUMowPZTu3TMZswhyBh5slsxCPUc+PD02nosLCLDQ2KLnhXHiN/RFA6yEG3
	IVBCF6lLgKixK7KZ2w1g7g==;
MIME-version: 1.0
From: Michael Sweet <msweet@apple.com>
Content-type: multipart/signed;
	boundary="Apple-Mail=_574D00DF-3697-4C74-B8E3-7A3029C512C4";
	protocol="application/pkcs7-signature"; micalg=sha1
Message-id: <671AA375-8084-4E36-A942-169664096611@apple.com>
Date: Wed, 16 Jul 2014 11:07:00 -0400
References: <1405506739.2713.12.camel@rubik>
In-reply-to: <1405506739.2713.12.camel@rubik>
Subject: Re: [Printing-architecture] CUPS: fail-over without load-balancing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


--Apple-Mail=_574D00DF-3697-4C74-B8E3-7A3029C512C4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Tim,

We've had a few requests for this functionality over the years.  The =
current bug tracking it is:

   http://www.cups.org/str.php?L1240

Right now the simplest thing to do is add a backend that implements the =
required functionality.  Longer term we'll address STR #1240 as a manual =
operation that (temporarily) redirects jobs queued on one queue to =
another.

More comments inline...

On Jul 16, 2014, at 6:32 AM, Tim Waugh <twaugh@redhat.com> wrote:
> Hello!
>=20
> I'm investigating how to implement fail-over for CUPS, but without
> having load-balancing as a side effect.
>=20
> The usual way of implementing fail-over is simply to use classes, so
> that printers are used round-robin fashion.
>=20
> However, I'd like to implement fail-over as follows:
>=20
> Each class will have one active printer accepting jobs, and a =
fail-over
> printer not accepting jobs. When all is well, only the active printer
> will be in use.
>=20
> When the active printer fails, a daemon will spot this and start the
> fail-over printer accepting jobs.

This was basically the point of another feature request (STR #2878), =
however after we looked at implementing such a scheme it didn't seem =
workable - right now the class accepts the job and any printer in the =
class will process the job, regardless of the state of its =
"printer-is-accepting-jobs" attribute.  And if you use change the class =
code to honor "printer-is-accepting-jobs", or use "printer-state" =
instead, you'll basically need printers that are dedicated to a =
particular class since most of the time they will be disabled/not =
accepting jobs.

In the end we decided the only thing that made sense was to track a =
selected/primary printer for the class, and have the admin change this =
when needed.  And that is what STR #1240 is tracking, for any queue =
(even a class).

> ...
> Does this sound like the best approach? Is it something that would be
> best implemented as part of CUPS, or cups-filters, or a standalone
> project?

Long term this should be part of CUPS.  Short term it can be implemented =
as a backend.  I would hesitate to patch cupsd for this since you will =
introduce long-term support issues when we finally do add the =
functionality ourselves.  At least with a backend the migration path is =
clear and can be staged over many releases.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Apple-Mail=_574D00DF-3697-4C74-B8E3-7A3029C512C4
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIPJTCCBN0w
ggPFoAMCAQICEHGS++YZX6xNEoV0cTSiGKcwDQYJKoZIhvcNAQEFBQAwezELMAkGA1UEBhMCR0Ix
GzAZBgNVBAgMEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBwwHU2FsZm9yZDEaMBgGA1UECgwR
Q29tb2RvIENBIExpbWl0ZWQxITAfBgNVBAMMGEFBQSBDZXJ0aWZpY2F0ZSBTZXJ2aWNlczAeFw0w
NDAxMDEwMDAwMDBaFw0yODEyMzEyMzU5NTlaMIGuMQswCQYDVQQGEwJVUzELMAkGA1UECBMCVVQx
FzAVBgNVBAcTDlNhbHQgTGFrZSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsx
ITAfBgNVBAsTGGh0dHA6Ly93d3cudXNlcnRydXN0LmNvbTE2MDQGA1UEAxMtVVROLVVTRVJGaXJz
dC1DbGllbnQgQXV0aGVudGljYXRpb24gYW5kIEVtYWlsMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAsjmFpPJ9q0E7YkY3rs3BYHW8OWX5ShpHornMSMxqmNVNNRm5pELlzkniii8efNIx
B8dOtINknS4p1aJkxIW9hVE1eaROaJB7HHqkkqgX8pgV8pPMyaQylbsMTzC9mKALi+VuG6JG+ni8
om+rWV6lL8/K2m2qL+usobNqqrcuZzWLeeEeaYji5kbNoKXqvgvOdjp6Dpvq/NonWz1zHyLmSGHG
TPNpsaguG7bUMSAsvIKKjqQOpdeJQ/wWWq8dcdcRWdq6hw2v+vPhwvCkxWeM1tZUOt4KpLoDd7Nl
yP0e03RiqhjKaJMeoYV+9Udly/hNVyh00jT/MLbu9mIwFIws6wIDAQABo4IBJzCCASMwHwYDVR0j
BBgwFoAUoBEKIz6W8Qfs4q8p74Klf9AwpLQwHQYDVR0OBBYEFImCZ33EnSZwAEu0UEh83j2uBG59
MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdJQQWMBQGCCsGAQUFBwMCBggr
BgEFBQcDBDARBgNVHSAECjAIMAYGBFUdIAAwewYDVR0fBHQwcjA4oDagNIYyaHR0cDovL2NybC5j
b21vZG9jYS5jb20vQUFBQ2VydGlmaWNhdGVTZXJ2aWNlcy5jcmwwNqA0oDKGMGh0dHA6Ly9jcmwu
Y29tb2RvLm5ldC9BQUFDZXJ0aWZpY2F0ZVNlcnZpY2VzLmNybDARBglghkgBhvhCAQEEBAMCAQYw
DQYJKoZIhvcNAQEFBQADggEBAJ2Vyzy4fqUJxB6/C8LHdo45PJTGEKpPDMngq4RdiVTgZTvzbRx8
NywlVF+WIfw3hJGdFdwUT4HPVB1rbEVgxy35l1FM+WbKPKCCjKbI8OLp1Er57D9Wyd12jMOCAU9s
APMeGmF0BEcDqcZAV5G8ZSLFJ2dPV9tkWtmNH7qGL/QGrpxp7en0zykX2OBKnxogL5dMUbtGB8SK
N04g4wkxaMeexIud6H4RvDJoEJYRmETYKlFgTYjrdDrfQwYyyDlWjDoRUtNBpEMD9O3vMyfbOeAU
TibJ2PU54om4k123KSZB6rObroP8d3XK6Mq1/uJlSmM+RMTQw16Hc6mYHK9/FX8wggUaMIIEAqAD
AgECAhBtGeqnGU9qMyLmIjJ6qnHeMA0GCSqGSIb3DQEBBQUAMIGuMQswCQYDVQQGEwJVUzELMAkG
A1UECBMCVVQxFzAVBgNVBAcTDlNhbHQgTGFrZSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNU
IE5ldHdvcmsxITAfBgNVBAsTGGh0dHA6Ly93d3cudXNlcnRydXN0LmNvbTE2MDQGA1UEAxMtVVRO
LVVTRVJGaXJzdC1DbGllbnQgQXV0aGVudGljYXRpb24gYW5kIEVtYWlsMB4XDTExMDQyODAwMDAw
MFoXDTIwMDUzMDEwNDgzOFowgZMxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNo
ZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMTkwNwYD
VQQDEzBDT01PRE8gQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwggEi
MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCShIRbS1eY1F4vi6ThQMijU1hfZmXxMk73nzJ9
VdB4TFW3QpTg+SdxB8XGaaS5MsTxQBqQzCdWYn8XtXFpruUgG+TLY15gyqJB9mrho/+43x9IbWVD
jCouK2M4d9+xF6zC2oIC1tQyatRnbyATj1w1+uVUgK/YcQodNwoCUFNslR2pEBS0mZVZEjH/CaLS
TNxS297iQAFbSGjdxUq04O0kHzqvcV8H46y/FDuwJXFoPfQP1hdYRhWBPGiLi4MPbXohV+Y0sNsy
fuNK4aVScmQmkU6lkg//4LFg/RpvaFGZY40ai6XMQpubfSJj06mg/M6ekN9EGfRcWzW6FvOnm//B
AgMBAAGjggFLMIIBRzAfBgNVHSMEGDAWgBSJgmd9xJ0mcABLtFBIfN49rgRufTAdBgNVHQ4EFgQU
ehNOAHRbxnhjZCfBL+KgW7x5xXswDgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAw
EQYDVR0gBAowCDAGBgRVHSAAMFgGA1UdHwRRME8wTaBLoEmGR2h0dHA6Ly9jcmwudXNlcnRydXN0
LmNvbS9VVE4tVVNFUkZpcnN0LUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kRW1haWwuY3JsMHQGCCsG
AQUFBwEBBGgwZjA9BggrBgEFBQcwAoYxaHR0cDovL2NydC51c2VydHJ1c3QuY29tL1VUTkFkZFRy
dXN0Q2xpZW50X0NBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3AudXNlcnRydXN0LmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAhda+eFdVbTN/RFL+QtUGqAEDgIr7DbL9Sr/2r0FJ9RtaxdKtG3Nu
PukmfOZMmMEwKN/L+0I8oSU+CnXW0D05hmbRoZu1TZtvryhsHa/l6nRaqNqxwPF1ei+eupN5yv7i
kR5WdLL4jdPgQ3Ib7Y/9YDkgR/uLrzplSDyYPaUlv73vYOBJ5RbI6z9Dg/Dg7g3B080zX5vQvWBq
szv++tTJOjwf7Zv/m0kzvkIpOYPuM2kugp1FTahp2oAbHj3SGl18R5mlmwhtEpmG1l1XBxunML5L
SUS4kH7K0Xk467Qz+qA6XSZYnmFVGLQh1ZnV4ENAQjC+6qXnlNKw/vN1+X9u5zCCBSIwggQKoAMC
AQICEQDlB7dXxclLEedquPvGX8CGMA0GCSqGSIb3DQEBBQUAMIGTMQswCQYDVQQGEwJHQjEbMBkG
A1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01P
RE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQg
U2VjdXJlIEVtYWlsIENBMB4XDTEzMTIxNzAwMDAwMFoXDTE0MTIxNzIzNTk1OVowITEfMB0GCSqG
SIb3DQEJARYQbXN3ZWV0QGFwcGxlLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
ANdvQYZRCVzc0wIYvIOn/0Pv7zUwuIvbAfM/W3FyemqZx3fdKxX4WxN2x5NC3hhBHGrUWirJH7rl
6It12bGQ61uHAK5jsJikV5k+mOYjZaKNIKxj0uYIk3MKQmsmM8t3nddq5mp2mxwV/U7AFPTz1fgh
dkqTb/NkHY5eA8KqksaeqwfMgoaiGVeCUhptWnXosca8PAkb+i9u5rEok5zgY+QP0IuWLJENfA4q
dEMsH+OAwMGOv9fNCgcdapFnjeSYaj70m6qUiq446+8a2rhUsEUKQayOMgjnm2bgUuNx7pOvs/Jg
zIlZoTz/llmE1HWREGzSjRnLWwQ98fspfeZWA+8CAwEAAaOCAeAwggHcMB8GA1UdIwQYMBaAFHoT
TgB0W8Z4Y2QnwS/ioFu8ecV7MB0GA1UdDgQWBBTtKBJoG9kxZisTqJg4+wr12l4stjAOBgNVHQ8B
Af8EBAMCBaAwDAYDVR0TAQH/BAIwADAgBgNVHSUEGTAXBggrBgEFBQcDBAYLKwYBBAGyMQEDBQIw
EQYJYIZIAYb4QgEBBAQDAgUgMEYGA1UdIAQ/MD0wOwYMKwYBBAGyMQECAQEBMCswKQYIKwYBBQUH
AgEWHWh0dHBzOi8vc2VjdXJlLmNvbW9kby5uZXQvQ1BTMFcGA1UdHwRQME4wTKBKoEiGRmh0dHA6
Ly9jcmwuY29tb2RvY2EuY29tL0NPTU9ET0NsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1h
aWxDQS5jcmwwgYgGCCsGAQUFBwEBBHwwejBSBggrBgEFBQcwAoZGaHR0cDovL2NydC5jb21vZG9j
YS5jb20vQ09NT0RPQ2xpZW50QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNydDAkBggr
BgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMBsGA1UdEQQUMBKBEG1zd2VldEBhcHBs
ZS5jb20wDQYJKoZIhvcNAQEFBQADggEBABg5KLQK5u9gGI75u+vYH/i6uMDKlpTILO/r/FpN2ibq
pwAB2ln9oKvPIA1/r3o+DBC87TqnlJAiPW4ADFHpRmqlprb0Tu9p98nP/wl5tBZjEP8dY4iH0TB3
B2r9JHwRwwJQ20CqJpuCn9dmvL215sZSqvJfluVlIcAQCLxp3ZKMIC2pNKitswdjjHduaKuj2TMe
xrzMtrRGRtFF9pcMcnsqE2QtJUqXPV7/M4WT2yRUmI4ThPt9O9fmPH2ku52hdb6t4qXvwdQSkDHt
xo3J/Vc/jDR2/feedDhQmG0V9j6tHsuG6bVVhcGiWnSmSoPfg13FlQwlxZTyFtiMZ2jILyoxggOu
MIIDqgIBATCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQ
MA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxOTA3BgNVBAMTMENP
TU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAOUHt1fFyUsR
52q4+8ZfwIYwCQYFKw4DAhoFAKCCAdkwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG
9w0BCQUxDxcNMTQwNzE2MTUwNzAxWjAjBgkqhkiG9w0BCQQxFgQUarAMGGlG1jMeCm2fLXAeUCz/
ZtwwgboGCSsGAQQBgjcQBDGBrDCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
OTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAOUHt1fFyUsR52q4+8ZfwIYwgbwGCyqGSIb3DQEJEAILMYGsoIGpMIGTMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlv
biBhbmQgU2VjdXJlIEVtYWlsIENBAhEA5Qe3V8XJSxHnarj7xl/AhjANBgkqhkiG9w0BAQEFAASC
AQAlSx8cfQtEX7y19wV8BhaXNL3qBzxj5OMBhbM760bcn+XXE5DYMc0YZlmCxbROaHCTDxJzx+q4
EJiZZrUgVr6qtkv3Fgy0q8bh0oIDZihcm8JXUJz7vr5r0PyHiNu6ew2yVVeqmvSNJja/WTpl+Qw3
TY6EjMfoRIVVy8kQpWOOB/T2JmW/LNXNR4RaAMZHjtbpjW5t8f7qozfpYb4geLu0VOVasfmDlnzK
y8PxZ44KLpUfqqM+Ihkn7uF4fUZPZQeUl8acAX5B7+QUJJr/fmvtV7BRX/V2pcjkYWUHn1vtRT4V
g4TTimQ0MFzh1Xcsh+EQnnUvyL3xwlGoJ5lYPfbTAAAAAAAA

--Apple-Mail=_574D00DF-3697-4C74-B8E3-7A3029C512C4--
