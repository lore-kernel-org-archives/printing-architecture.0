Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1401710018; x=2265623618;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6QYTg1XwzhCKNGGBb91fOoY/NZYtJ6NDs0UCX4sfsAA=;
	b=bZIn8mVqsF4QL0eLwovQAPwXugsOFiAmuuUlw51zaggNscSGpr5yj5xwIX35VtYN
	HCh4H6rDX6NtfMVevT6mo/uKaCv4OmYhfVa88FICIpOXNfQGZpd/Fns2kiVhdn3x
	DowCSPPuiSIxMna2No3171S+npxd1NsvGY6TNrnyvtNGV53BXGKh/vvjWHTGbv9R
	BxftjyWa57Fv9AHRaXVJYgZWYnP+j+4LBsRcZGwMRWKFMDS+WYmxyETiL8gzD6hQ
	NV6UlQeD//uy/55FhfV9eq1n9qGFnE3O4yglpwaTm8KDYldCnzJZh2MhRKorX309
	zyx43N51aK2g546OzRAuyg==;
MIME-version: 1.0
Content-type: multipart/signed;
	boundary="Apple-Mail=_E1A83E20-5D84-4A4C-9AD5-1C752622B5F3";
	protocol="application/pkcs7-signature"; micalg=sha1
From: Michael Sweet <msweet@apple.com>
In-reply-to: <m3oayc85fp.fsf@carbon.jhcloos.org>
Date: Mon, 02 Jun 2014 07:53:36 -0400
Message-id: <750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
	<m3oayc85fp.fsf@carbon.jhcloos.org>
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_E1A83E20-5D84-4A4C-9AD5-1C752622B5F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

James,

What standard defines sGray?  Because all of the informal definitions =
online and the one we (Apple) went with some 12 years ago says that =
sGray uses the sRGB transfer function (gamma).  Anything else would be =
simply confusing.

(of course gamma 2.2 is so close to sRGB's transfer function that it =
doesn't really matter, but I'm really interested in knowing why you =
think the CUPS definition of sGray is wrong...)


On Jun 1, 2014, at 9:29 PM, James Cloos <cloos@jhcloos.com> wrote:

>>>>>> "JC" =3D=3D James Cloos <cloos@jhcloos.com> writes:
>=20
> JC> [ /CalGray=20
> JC>   <<  /WhitePoint [ 0.96420288 1.0 0.82490540 ]=20
> JC>       /Gamma 2.2=20
> JC>   >>=20
> JC> ]
>=20
> JC> [ /CalRGB
> JC>   << /WhitePoint [ 0.95045471 1.0 1.08905029 ]
> JC>      /Gamma [ 2.2 2.2 2.2 ]
> JC>   >>=20
> JC> ]
>=20
> I forgot the matrix in that last one. Add:
>=20
>        /Matrix [ 0.60974121 0.31111145 0.01947021 0.20527649 =
0.62567139 0.06086731 0.14918518 0.06321716 0.74456785 ]
>=20
> to that /CalRGB.
>=20
> -JimC
> --
> James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Apple-Mail=_E1A83E20-5D84-4A4C-9AD5-1C752622B5F3
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
9w0BCQUxDxcNMTQwNjAyMTE1MzM3WjAjBgkqhkiG9w0BCQQxFgQUV84r6zoQBw1Rg2P3NuVS9qVG
/qowgboGCSsGAQQBgjcQBDGBrDCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
OTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAOUHt1fFyUsR52q4+8ZfwIYwgbwGCyqGSIb3DQEJEAILMYGsoIGpMIGTMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlv
biBhbmQgU2VjdXJlIEVtYWlsIENBAhEA5Qe3V8XJSxHnarj7xl/AhjANBgkqhkiG9w0BAQEFAASC
AQDQo9fmNQIepaL3VGy/zw7abFATV5GxWBMEvihQxxjKnZq+4BTjEubO16O3nP84cI5om/UEAhO6
FYgn7rPdyhKl78WhqXXAkO4IYdFtAIy+jUsYNlkAg/IX4Snv02leubYGo/m0NQU5cdbh8e1tX22i
C7BxSyqprRjF6O0+Atlyhx0Q+59Qm+K8cVOqkh0M9ZMbCG74RJS2O1oWXdBeRvM1LIJQE9Y6r3dG
NbOyDBECP8DzIOKh2+ewQ4iPOQCJplzdNx+93iHJk362/hfJOeU+MBsqMZukQ6OBh1Nvt4t4DPlX
3WYbs/dLeXH5CN9J4Q8zc4PAuQ1kcsXD2DZ5iWhPAAAAAAAA

--Apple-Mail=_E1A83E20-5D84-4A4C-9AD5-1C752622B5F3--
