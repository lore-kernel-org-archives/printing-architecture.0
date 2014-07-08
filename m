Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1404832808; x=2268746408;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CtOg/kA0J8qHpDuiefRw0+TxFFJ75EU6lU4KRqwmpYY=;
	b=1k1+ADrIAbmBrOq878PqlhViEeG9D7DT2BaW8yXrF8SH31eeFrfNrb3AI2n2V5DC
	jzDM7M3OBTn3XdkIFK27bgFruN8hkyALhFqn8VXy2prrey2poMHtj1YRbkUZ3PmP
	2cAxTHe+PwkNEJhbpDYUNs2N5MTnX7S2Vm6XjpjjeBkgagf0gVMOmZAIeRcrjxZP
	QnmPO93oHl9VL67LFh5l2Q3WSpbW6N4n9Y0PatY5nYO24Ws3lfXZu6jCPzuBg5fI
	fEaQnHCj7BCWRvXNqvojNhRRZV1Aqtc+4tTLLLvc2Y9ndVBhsKzMilawEq1MrltZ
	w7mpqKE8PqzjpIr3SDBRjA==;
MIME-version: 1.0
Content-type: multipart/signed;
	boundary="Apple-Mail=_00BBFB0F-7EA7-4F68-80FC-0C4C374581C6";
	protocol="application/pkcs7-signature"; micalg=sha1
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gSuqu1=Y0jq6ZS+hiiJ=T4L0-Ui+JK7cBb93KjWpu9tG+Q@mail.gmail.com>
Date: Tue, 08 Jul 2014 11:20:05 -0400
Message-id: <ABD15507-E7F6-484D-974C-BFC0B69CF5B8@apple.com>
References: <1404748055.11220.7.camel@pascal.home.net>
	<CAN40gSuqu1=Y0jq6ZS+hiiJ=T4L0-Ui+JK7cBb93KjWpu9tG+Q@mail.gmail.com>
Subject: Re: [Printing-architecture] CUPS and color management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_00BBFB0F-7EA7-4F68-80FC-0C4C374581C6
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BE44E21B-8CB3-42A4-8390-364FC1804E24"


--Apple-Mail=_BE44E21B-8CB3-42A4-8390-364FC1804E24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Ira,

I'm on this list too, and I sent Pascal here because I don't know the =
answer... :/  There was discussion of adding an option for this just =
recently, but I just don't know what the final option name is...


On Jul 8, 2014, at 11:12 AM, Ira McDonald <blueroofmusic@gmail.com> =
wrote:

> Hi Pascal,
>=20
> Copying Mike Sweet (CUPS author) for the answer to you question.
>=20
> Cheers,
> - Ira
>=20
>=20
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>=20
>=20
>=20
> On Mon, Jul 7, 2014 at 11:47 AM, Pascal Obry <pascal@obry.net> wrote:
>=20
> Hello,
>=20
> I have a question regarding color management with CUPS. I need to =
print
> a raster image (jpeg, tiff) which has already been converted with the
> printer profile. The printing is done using the CUPS API
> (cupsPrintFile). I want to ensure that NO color management is done by
> CUPS or any filters.
>=20
> Is there something to do? If so What do I need to do?
>=20
> Thanks,
>=20
> --
>   Pascal Obry /  Magny Les Hameaux (78)
>=20
>   The best way to travel is by means of imagination
>=20
>   http://v2p.fr.eu.org
>   http://www.obry.net
>=20
>   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>=20

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Apple-Mail=_BE44E21B-8CB3-42A4-8390-364FC1804E24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">Ira,<div><br></div><div>I'm on this list too, and I =
sent Pascal here because I don't know the answer... :/ &nbsp;There was =
discussion of adding an option for this just recently, but I just don't =
know what the final option name =
is...</div><div><br></div><div><br><div><div>On Jul 8, 2014, at 11:12 =
AM, Ira McDonald &lt;<a =
href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr"><div><div><div>Hi =
Pascal,<br><br></div>Copying Mike Sweet (CUPS author) for the answer to =
you question.<br><br></div>Cheers,<br></div>- Ira<br><br></div><div =
class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr">

Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted =
Mobility Solutions WG<br>Chair - Linux Foundation Open Printing =
WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - =
IEEE-ISTO PWG Internet Printing Protocol WG<br>

IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High =
North Inc<br><a style=3D"color:rgb(51,51,255)" =
href=3D"http://sites.google.com/site/blueroofmusic" =
target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>

<a style=3D"color:rgb(102,0,204)" =
href=3D"http://sites.google.com/site/highnorthinc" =
target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailto:=
 <a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a><br>

Winter&nbsp; 579 Park Place&nbsp; Saline, MI&nbsp; 48176&nbsp; =
734-944-0094<br>Summer&nbsp; PO Box 221&nbsp; Grand Marais, MI =
49839&nbsp; 906-494-2434<br><br><div style=3D"display:inline"></div><div =
style=3D"display:inline"></div><div style=3D"display:inline"></div>

<div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Mon, Jul 7, 2014 at 11:47 AM, =
Pascal Obry <span dir=3D"ltr">&lt;<a href=3D"mailto:pascal@obry.net" =
target=3D"_blank">pascal@obry.net</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">

<br>
Hello,<br>
<br>
I have a question regarding color management with CUPS. I need to =
print<br>
a raster image (jpeg, tiff) which has already been converted with =
the<br>
printer profile. The printing is done using the CUPS API<br>
(cupsPrintFile). I want to ensure that NO color management is done =
by<br>
CUPS or any filters.<br>
<br>
Is there something to do? If so What do I need to do?<br>
<br>
Thanks,<br>
<br>
--<br>
&nbsp; Pascal Obry / &nbsp;Magny Les Hameaux (78)<br>
<br>
&nbsp; The best way to travel is by means of imagination<br>
<br>
&nbsp; <a href=3D"http://v2p.fr.eu.org/" =
target=3D"_blank">http://v2p.fr.eu.org</a><br>
&nbsp; <a href=3D"http://www.obry.net/" =
target=3D"_blank">http://www.obry.net</a><br>
<br>
&nbsp; gpg --keyserver <a href=3D"http://keys.gnupg.net/" =
target=3D"_blank">keys.gnupg.net</a> --recv-key F949BD3B<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing-=
architecture@lists.linux-foundation.org</a><br>
<a =
href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-archit=
ecture" =
target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/print=
ing-architecture</a><br>
</blockquote></div><br></div>
</blockquote></div><br><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Andale Mono'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Apple-Mail=_BE44E21B-8CB3-42A4-8390-364FC1804E24--

--Apple-Mail=_00BBFB0F-7EA7-4F68-80FC-0C4C374581C6
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
9w0BCQUxDxcNMTQwNzA4MTUyMDA2WjAjBgkqhkiG9w0BCQQxFgQURC9xMla+OIwTsTiiLRKAFpen
agQwgboGCSsGAQQBgjcQBDGBrDCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
OTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAOUHt1fFyUsR52q4+8ZfwIYwgbwGCyqGSIb3DQEJEAILMYGsoIGpMIGTMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlv
biBhbmQgU2VjdXJlIEVtYWlsIENBAhEA5Qe3V8XJSxHnarj7xl/AhjANBgkqhkiG9w0BAQEFAASC
AQCf4CegPbhgdMvaHsxOLsAKAQXNmnjWHogKCXefOpLwPMxKcZ6zzMb1CBOn/gL57RVvqVq8fZTE
hDsD+yPpitzGJPeEjzSpE/nsUiXdhdbM4zb+QYpb0mENHZluHSR4ZCrc6g7QsCeiJkchAD8ynx7C
0NjWcBM+YV63UZHMGYoo7gFdZBuqmyacIS3UB6Jo8fOZY4UCESRtSGuNt4gZCTalsydV+aDd76s1
8t9wjoK6nZBT7tXvqiNLMyG/H19+eQi+FUUGgho1uJ1+Luly+G8KaoGkcB9ntqhMadncnMRlCXcw
vz3MAB870dyO+04B3dmm3O9zs523z/fb3FA7mzSfAAAAAAAA

--Apple-Mail=_00BBFB0F-7EA7-4F68-80FC-0C4C374581C6--
