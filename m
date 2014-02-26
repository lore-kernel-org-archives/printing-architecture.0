Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/signed;
	boundary="Apple-Mail=_D295959D-690A-4247-8A88-7C58DBC3953B";
	protocol="application/pkcs7-signature"; micalg=sha1
From: Michael Sweet <msweet@apple.com>
In-reply-to: <m3ios2zums.fsf@carbon.jhcloos.org>
Date: Tue, 25 Feb 2014 20:27:01 -0500
Message-id: <6755723C-26A1-40C1-B1BF-EB99A6A0483E@apple.com>
References: <CAN40gSsVN9bXYQqkewazZToBXn7v4icsJQbMpw0F=S+YZ40woA@mail.gmail.com>
	<m3txbr4o45.fsf@carbon.jhcloos.org>
	<9576314E-B688-420E-825D-523F6ABFB7D3@apple.com>
	<m3ios2zums.fsf@carbon.jhcloos.org>
Subject: Re: [Printing-architecture] How to add IPP over USB printer support
 to Linux?
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>, Jeff Licquia <jeff@licquia.org>


--Apple-Mail=_D295959D-690A-4247-8A88-7C58DBC3953B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

James,

On Feb 25, 2014, at 5:37 PM, James Cloos <cloos@jhcloos.com> wrote:
> ...
> I expect any implementation of the idea would move some of the code =
from
> the http backend into a .c file to be shared with the http and usb =
backends.

Please don't.  The HTTP state engine is quite complex and is always =
getting small bug fixes and improvements. Having a separate copy means =
you need to track all of those fixes and improvements in your own copy, =
and speaking from experience we don't want to do that (that's one of the =
reasons why the Ghostscript and PDF stuff is now maintained in one place =
rather than us bundling our own copies of those programs in CUPS...)

> MS> On OS X we have a launchd service (launch-on-demand) that is setup
> MS> when a printer is connected and removed when disconnected.
>=20
> I didn't get from your previous post that it launches on demand (as
> opposed to always running, monitoring usb changes, and linking to any
> proto 4 print endpoints as they appear).

On OS X there is a process that manages device connect/disconnect =
(similar to the udev stuff on Linux), and that creates lauunchd =
"services" that are associated with a given USB printer.  Those jobs are =
launch on demand (whenever somebody tries to connect to the service on =
its dedicated port), at which point the ippusbd process manages access =
to the printer until all clients go away, at which point it exits (after =
a suitable idle timeout) to let launchd listen for new connections.

> I agree that that is a good general solution.  I only thought that
> adding proto 4 to usb would be a quicker first step.

Unfortunately, it really doesn't buy you much of anything over the =
existing proto 1/2 support, and it would likely break scanning for MFPs =
(since the same endpoints get shared between IPP USB and the vendor =
interfaces for scanning).

> MS> This service basically acts as a proxy or gateway between IP
> MS> connections and the USB interfaces offered by the printer (minimum
> MS> requirement is 2 interfaces, which looks to be the limit for most
> MS> printers in the foreseeable future thanks to the SoCs they =
use...),
>=20
> Interesting.  I see that the spec requires at least two, but wasn't
> aware more than two are unlikely in the wild.

Yes, it basically is a limitation of the SoCs that vendors are using, =
which typically only support a maximum of 5 endpoints divvied up for the =
interfaces; each IPP USB interface needs a pair of endpoints (for =
bulk-in and bulk-out).

> MS> and the service arbitrates access from multiple IPP/HTTP clients =
to
> MS> that limited number of IP interfaces.
>=20
> I don't know about bsd, but with most linux dists udev rules would
> enable the start/quit on demand semantic.

Actually, udev gets you connect/disconnect.  Conceptually you could have =
a mini-daemon that runs as long as the printer is connected - systemd =
would allow that to be optimized further so that you don't have the =
process overhead when the printer is not being used.

> I presume libusb provides enough access to the usb protocol upon which
> to write such a daemon.

Yes.

> It will need kernel support to show up as a network interface.  =
Perhaps
> the same support the ppp daemons use?  Or tun/tap?

No, you don't need a network interface.  You need to listen for =
connections on a TCP port, and then proxy the requests and responses to =
an "idle" IPP USB interface.  So, perhaps you reserve a block of ports =
from 4000 to 4015 (I have no idea if those are free in practice) and =
then assign a port to each attached printer.  The IPP backend then just =
connects to localhost:4000 to print to the first printer, localhost:4001 =
for the second, etc.

The listen can be on the loopback interface or the "any" address to =
support simple USB printer sharing through IPP USB.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Apple-Mail=_D295959D-690A-4247-8A88-7C58DBC3953B
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
9w0BCQUxDxcNMTQwMjI2MDEyNzAyWjAjBgkqhkiG9w0BCQQxFgQU4Krm+xY8APC9wMqeuR2uQNpM
JJYwgboGCSsGAQQBgjcQBDGBrDCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
OTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAOUHt1fFyUsR52q4+8ZfwIYwgbwGCyqGSIb3DQEJEAILMYGsoIGpMIGTMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlv
biBhbmQgU2VjdXJlIEVtYWlsIENBAhEA5Qe3V8XJSxHnarj7xl/AhjANBgkqhkiG9w0BAQEFAASC
AQB6KcvEKqASzzefF0gvAQzp6IINVNnKDVwAc35S/9Mp1ZSG4c1skrezXlPYwY0CM8TchC4e9ebk
c9JKMDXxZlgacTW0WM91/ORYihOj4Nv5+3jK1Z57ZcYDNWWksTfv78NljLPI307BdEPR+csctqod
kU1hS0VKEVnDM1wISxHfgIw8x1/WZmdmqFv0Bp1pPU5n3B3a13p1WpDkC31VnO55KBLOttBRhd9p
XJZZ1/+4OJn8qfMEd5UNH54UbUvjrM2DQDAjiFIWOAL/EGVggrHoBer4SmJ32gKVqb1Kmgn0TNMJ
oozGbJC/qZjDVJpQg2anSj2ZEPlQj6ohyHpDB/gcAAAAAAAA

--Apple-Mail=_D295959D-690A-4247-8A88-7C58DBC3953B--
