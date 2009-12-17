Message-ID: <4B29C62E.8080707@fujixerox.co.jp>
Date: Thu, 17 Dec 2009 14:48:30 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <20091211155240ytbI2d@bbr.jp>
In-Reply-To: <20091211155240ytbI2d@bbr.jp>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms020809050302000802000603"
Subject: [Printing-architecture] OpenPrinting Japan Dec. 2009 meeting
	minutes [Translation]
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org

This is a cryptographically signed message in MIME format.

--------------ms020809050302000802000603
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

/*
 * Time/Place
 */
Dec. 10, 2009 14:30-17:00 JST
@ Meeting room / The Linux Foundation Japan

/*
 * Attendee
 */
Kunai (TLF), Shida (Canon), Toratani (Canon), Chigusa (Ricoh), Yamagishi
(Turbolinux), Olaf (Avasys), Saitou (NEC Soft), Miyata (Canon), Mihara
(Fuji Xerox), Otani (BBR), Kanjo (BBR)


/*
 * Discussions
 */

/*** Action Items Follow-up ***/
- Re-scheduling of SC Plenary Meeting in Dec. - DONE.
- Test the OOo problem (Japanese characters missing) with Genuine
PostScript Printer - See the discussion below.
- Prepare proposals for OPJ activities in 2010 - See the discussion below=



/*** i18n/l10n of Linux Foundation/OpenPrinting Web Site ***/

- The web site already supports i18n (mechanism to switch language).
- It may be required to provide localized (Japanese) contents.
  -> We should start with study to localize contents in priority order.
        i.e. Top Page should be translated first. etc.etc
- There are many access to printer driver download.  Some vendors links
to the download page from their sites.
  -> Download page for such printers may need to be translated first.
    -> Vendors cannot decide which page should be translated first, if
it is a community driver.
  -> Does the driver download page have a mechanism to switch language?
     -> foomatic db has it.  CMS has it.  ... but are they linked?
        (Japanese web page requests foomatic db for japanese contents?)
  - In the future when vendor upload their printer driver, overall study
should be needed.

  -> At this time, we start to study Japanese translation of following
pages.  (timing - LF web site renewal?)

     http://www.linuxfoundation.org/collaborate/workgroups/openprinting
     http://www.openprinting.org/show_driver.cgi?driver=3Deplaser-jp


/*** Till-san's Printer Driver Seminar ***/

March seems to be too early.  To attract many audience, it is
recommended to hold tying up with other event such as Japan Linux
Symposium in Fall with announce of CPD achievements.

/*** CPD ***/

CPD is updated. --- need to check.


/*** SC Meeting Report ***/
- Reported via meeting minutes (Toratani)

- Topic for vector driver spec approval is missing...


/*** OOo Problem ***/
- Japanese (or other multibyte language) characters may not be printed.

- OOo is fixed (PS output is corrected).

- We may need promote PDF print workflow to OOo community)


/*** Proposals for 2010 activities ***/
- Implementation of Job Ticket API (JTAPI)

- Capability
  -> Currently static PPD based capability is supported.
  -> Dynamic update by communication with device.

- Job Attribute
  -> This should be supported via CPD.

- PDF Print Workflow
  -> This should be supported via CPD, too.

- Approval of Vector Printer Driver API

- OpenPrinting.org
  i10n (Japanese contents)

- CPD
  Promotion to major applications
  OOo, FireFox/Thunderbird, Evolution, ...

/*
 * Action Items by next meeting
 */
- Evaluation for updated CPD.

- Job Ticket case study
  Application or samples of utilization of page oriented attribution.
  Currently PostScript print workflow can support it, but PDF one cannot.=


/*
 * Next
 */

Jan. 28, 2010 (Thu) 14:30 - JST
The Linux Foundatikon Japan

--=20
  Osamu MIHARA // Fuji Xerox Co., Ltd.


--------------ms020809050302000802000603
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
wXJLpqRhAbBVz+foLN8AfmJavYCHfAbrsKYYY5haiXkZkHOjwf6Hqzrnmtk+q1u0jGtZjZ+W
tWQJli+WVV0uw5nzhhQSGPF74m1SbijZmwthBLmXEUmYnm2xtYlGTEhDf0zJRDCCA+8wggNY
oAMCAQICAicSMA0GCSqGSIb3DQEBBQUAMIG7MSQwIgYDVQQHExtWYWxpQ2VydCBWYWxpZGF0
aW9uIE5ldHdvcmsxFzAVBgNVBAoTDlZhbGlDZXJ0LCBJbmMuMTUwMwYDVQQLEyxWYWxpQ2Vy
dCBDbGFzcyAxIFBvbGljeSBWYWxpZGF0aW9uIEF1dGhvcml0eTEhMB8GA1UEAxMYaHR0cDov
L3d3dy52YWxpY2VydC5jb20vMSAwHgYJKoZIhvcNAQkBFhFpbmZvQHZhbGljZXJ0LmNvbTAe
Fw0wNTAzMTYwMjM0NDJaFw0xNTAzMTYwMjM0NDJaMFAxCzAJBgNVBAYTAkpQMRgwFgYDVQQK
Ew9TRUNPTSBUcnVzdC5uZXQxJzAlBgNVBAsTHlNlY3VyaXR5IENvbW11bmljYXRpb24gUm9v
dENBMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALOz/n/TbbHvFnxXpQxtdoov
S79k+0zuivDzKXz1/+4q4OnpultkIpqabyw6JmlRBZkm3NUcanHGmn0end18bMaMZ2dKPvhx
sBknqQkMppW/S4wM+lWYO9joIqFLcTh5rJeSabOJfuohaAaYFJaH0mE2vG0nVp5X7sDAVv0y
z6TZjsIj142o89glrJfkcDj0tjq0nTuXJkOjobxJWXJMIzCHAVj2Tr4caFZmr81BXcizTSpV
Rqsf2h7iQD3bzX25koCcN90MlmSd3CL3ZIvfYd4VlFIVoH1SyUuoIcnGse3Lw5Vg0Q/wq3D4
38tNfuzW+qvZvX9U8qXpefrZ1nYkKHMCAwEAAaOB5zCB5DAdBgNVHQ4EFgQUoHNJmWjchVtl
45soL1efvTO8B0gwDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wSAYDVR0fBEEw
PzA9oDugOYY3aHR0cDovL3JlcG9zaXRvcnkuc2Vjb210cnVzdC5uZXQvcm9vdHJlcG9zaXRv
cnkvQ1JMLmNybDBYBgNVHSAEUTBPME0GCiqDCIybG2SHBQEwPzA9BggrBgEFBQcCARYxaHR0
cHM6Ly9yZXBvc2l0b3J5LnNlY29tdHJ1c3QubmV0L3Jvb3RyZXBvc2l0b3J5LzANBgkqhkiG
9w0BAQUFAAOBgQAGiFFF93N5mphKlukZHYciAU3/pMq6rHS+5VkKd7HgLHzLQxp3v402BKge
VpeXfcbUcoZkrlXxzy/Ld4hQCSxRVlFTgVJSM5kke3wHIAWwNeMwdpsv6lEpEiT/5dL5MIsb
Xqd+wmIPKJxfzZsw6yvP7qmXgDQh1qLwZFjIgQtrIjCCBAswggLzoAMCAQICCQFFmYa/W4BQ
eDANBgkqhkiG9w0BAQUFADBPMQswCQYDVQQGEwJKUDETMBEGA1UEChMKRnVqaSBYZXJveDEr
MCkGA1UEAxMiRnVqaSBYZXJveCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0wODA0Mjkx
NTAwMDBaFw0xNDEyMTcwMjEzMzJaMD8xCzAJBgNVBAYTAkpQMRMwEQYDVQQKEwpGdWppIFhl
cm94MRswGQYDVQQDExJGdWppIFhlcm94IFhuZXQgQ0EwggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQC1d4sM15cgf8VPfGjBBbLkzoPqIEPdN44PTd5nevRRnDoEeITen95/dM9X
d8n8tgmP6ddV9iiDJsbYegmWIqaK3l2MDhqoAontnG2VdPWCEnpkIym2r6pPcKrE0fiBP+fm
3Z2O7LGzdBdOpvlJpLaq3C5eQMEwW/3yAODT8tYGhZBQrm+Mzp1BxfZniM5Mautyyk5on+PG
WyNX60hexwRriRmqk7B7Qar3rW3vjZ9eTnF6zcE+2HZ4rpIahFmEnKlJ3zQozVhqdL4mQemt
8GO4Dr7AE+NTpVlK2+awpwz28wgaI3VgQWQf0EjSan4BYBIbC0Iedv2m5un+XeVDPTtdAgMB
AAGjgfkwgfYwCwYDVR0PBAQDAgEGMB0GA1UdDgQWBBRNiNbdlVh1662IG00yCEnIggRgjjAf
BgNVHSMEGDAWgBTqxadWxChSPoKl7PVQFmOP4YgteTBYBgNVHSAEUTBPME0GCysGAQQBgikB
BQEBMD4wPAYIKwYBBQUHAgEWMGh0dHA6Ly93d3cuZnVqaXhlcm94LmNvLmpwL3Byb2R1Y3Qv
Y2FwL2Z4Y2EuaHRtbDASBgNVHRMBAf8ECDAGAQH/AgEAMDkGA1UdHwQyMDAwLqAsoCqGKGh0
dHA6Ly9jYXBzLmZ1aml4ZXJveC5jby5qcC9jcmwvZnhjYS5jcmwwDQYJKoZIhvcNAQEFBQAD
ggEBABX7JmjBozKrtM0xL7wIP75Ij8M8AktycL02h9keNLI2a8ggjeHusr5uGmR2/Or85f54
AEVz4e5ZtxDGzCDKfTNxCYYLz4MMSh9ed/hd9ayhD8GjVqN6UBsUez/CcSDro2X0gaDS/2wK
s/jmXCNwfyxoVug0weEKWrbeBmbn9d/QnjLVv6p3J32NbJyxzJVrGM2J+uPoevRcDgfZ4HzO
m6MVd/7GADxs4wR+CCJUP9a6QFpSMhB6MUNeUv5VanJcO0AvQ/YIgVr+P7MvvNGV7I1ZobU7
ONryWNzlgsvt5NEA1jWgypVc3JogClm3eY4dibvCJvj3Zs7KxK+KBCh2crkwggQmMIIDDqAD
AgECAgQSubCnMA0GCSqGSIb3DQEBBQUAMFAxCzAJBgNVBAYTAkpQMRgwFgYDVQQKEw9TRUNP
TSBUcnVzdC5uZXQxJzAlBgNVBAsTHlNlY3VyaXR5IENvbW11bmljYXRpb24gUm9vdENBMTAe
Fw0wNDEyMTcwMjEzMzJaFw0xNDEyMTcwMjEzMzJaME8xCzAJBgNVBAYTAkpQMRMwEQYDVQQK
EwpGdWppIFhlcm94MSswKQYDVQQDEyJGdWppIFhlcm94IENlcnRpZmljYXRpb24gQXV0aG9y
aXR5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtyQ1+1+Md5GNGCW8TMtiG7iX
+xLIWzhiUZwEN5E9xozGHSByTNftuzH/gTvF3kkMdxS9JBMRcpXNYZK3gidArWd3aZv1Rjsb
SBYHckoIuF1adKp5wEEo1JPWpgFx1DbOdlKpEzyjzqvVD5C4XMOVxDmabZBwLJjXZWtWgwf4
k69pvZ//CCgGPgSzNxYVuLQW21ecD5Q6u9Qe8k7Zx3Samqzwaf5b54AEaR1r23EOJn0UW9SW
ooliix1vtFdKI8De+eLp0vXxmPlqjN5fYG9ugGAyNyT87YSaccobbnORJj9xYxZrkaSv1J6r
fIfJwZaifdBoGNPakL1C6xt+rosHmQIDAQABo4IBBzCCAQMwHQYDVR0OBBYEFOrFp1bEKFI+
gqXs9VAWY4/hiC15MB8GA1UdIwQYMBaAFKBzSZlo3IVbZeObKC9Xn70zvAdIMBIGA1UdEwEB
/wQIMAYBAf8CAQEwDgYDVR0PAQH/BAQDAgEGMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9y
ZXBvc2l0b3J5LnNlY29tdHJ1c3QubmV0L1NDLVJvb3QxL1NDUm9vdDFDUkwuY3JsMFIGA1Ud
IARLMEkwRwYKKoMIjJsbZIcFATA5MDcGCCsGAQUFBwIBFitodHRwczovL3JlcG9zaXRvcnku
c2Vjb210cnVzdC5uZXQvU0MtUm9vdDEvMA0GCSqGSIb3DQEBBQUAA4IBAQAtynjtnCEDvbfV
CVwTwOK20eLsVcaKpvBOFd+BJtwkwWamQiYtR/Z5BwSdXX0R3LZm/b6huy3DwzKUkR7Sh2Kz
mQCv1+D02u7CvGoVSNPi2ipjJ4nH39MYnEHlbz5ur25O1ShURqoGh5t+ABctTG/lqfFtlxWV
cJwXGUUYKnx7K2H+LZMhgjFYfB/3+UJhMYciBrvcEudq0D3i8wOAbSIQuO2umhoEscHxStHH
DGZUfe+Gw5mvulW+Ias4tbvQI+VrT4iecdvrkcFj5Q9Ko0tATGfMd2L1n6ObwdqVs/42k9n3
n8OFkIlhQSlTzFwNqBNL+k/fKpEjRKBsTCd3jEugMYICbTCCAmkCAQEwSzA/MQswCQYDVQQG
EwJKUDETMBEGA1UEChMKRnVqaSBYZXJveDEbMBkGA1UEAxMSRnVqaSBYZXJveCBYbmV0IENB
AghJp4tSzdgX9TAJBgUrDgMCGgUAoIIBeDAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwG
CSqGSIb3DQEJBTEPFw0wOTEyMTcwNTQ4MzBaMCMGCSqGSIb3DQEJBDEWBBQnAi+I/Q1g01UW
xRWTar25XaDbOzBaBgkrBgEEAYI3EAQxTTBLMD8xCzAJBgNVBAYTAkpQMRMwEQYDVQQKEwpG
dWppIFhlcm94MRswGQYDVQQDExJGdWppIFhlcm94IFhuZXQgQ0ECCEmni1LN2Bf1MFwGCyqG
SIb3DQEJEAILMU2gSzA/MQswCQYDVQQGEwJKUDETMBEGA1UEChMKRnVqaSBYZXJveDEbMBkG
A1UEAxMSRnVqaSBYZXJveCBYbmV0IENBAghJp4tSzdgX9TBfBgkqhkiG9w0BCQ8xUjBQMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEBBQAEgYAvNuocD67JkCE0rAhT
b6OqN7qwqAgXCqwqoLH8SUo0DgXqUc7vy+YfKE9/Z4N6K5vVlWefF8lKkfsbO0YSnt3uyYpB
ZKyh0I6XugIUfxTjHcnMTQ6jnYb3bRoMI4Nl4NgU140FguhAs5E0P104f0VYJDSXqC5LCdJb
Ijr/63aZ0QAAAAAAAA==
--------------ms020809050302000802000603--
