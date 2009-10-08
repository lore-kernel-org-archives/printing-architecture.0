Message-ID: <4ACDAAF1.8090208@fujixerox.co.jp>
Date: Thu, 08 Oct 2009 18:03:45 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <003f01ca40f3$410eccc0$9e72150a@nsl.ad.nec.co.jp>
In-Reply-To: <003f01ca40f3$410eccc0$9e72150a@nsl.ad.nec.co.jp>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms010207000402020104040302"
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	Sep. 2009 meeting minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org
Cc: printing-architecture@lists.linux-foundation.org

This is a cryptographically signed message in MIME format.

--------------ms010207000402020104040302
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

Here is the translation of the minutes of last meeting in Japan.
I'd like to thank Sekine-san to provide Till's part quickly, also please
forgive me that using Sekine-san's in this translation without permission=
=2E

---
2009-9-29 14:30-16:30 (JST) @ The Linux Foundation Japan

Attendee:
Kunai(TLF), Olaf(Avasys), Otani(BBR), Kanjo (BBR), Chigusa (Ricoh),
Toratani (Canon), Mihara (Fuji Xerox), Miyata (Canon), Saito (NEC Soft)

<Agenda>
- Action Items Follow Up
- Feedback from SC Meeting (US/EU/Japan)
- Driver workshop proposed by Till
- Approval of Vector Driver Spec 1.0


<Action Items Follow Up>

- Feedback CPD discussion in Japan to SC Meeting (Toratani)
 -> Done

 -> Confirmed that CPD source code uploaded on the bzr is latest one.

 -> Does GSoC work contain implementation of CPD to any application?
    No. No human resource at this time.
    If do it, it should start with GNOME version.
    Application calls CPD via DBUS.

 -> How n-ups are implemented?
    Imitates the implementation by CUPS filter (pstops/pdftopdf).
    Preview and print result should be same, if it accord with the
    process in CUPS filter.  But if n-up is performed by the printer
    (hardware n-up), they can be different.

 -> Will CPD be updated to accord with current specification?
    Not confirmed.

 -> Is There any interface to inform application name to CPD?
    Not confirmed

- Confirm the status of Vector Driver Spec 1.0 Approval to
  Shida-san. (Toratani)
  -> There is no sign that documents are created.
  -> Ira will confirm the current status.


<Feedback from SC Meeting (US/EU/Japan)>

- 3-day tutorial
- Till=92s personal proposal to arrange a meeting to explain driver
   design, packaging method, and CPD tutorial
- Next SC meeting will be on 1st of December (tue)
  -> Toratani cannot attend.
  -> Ask rescheduling of the meeting to other date.


<Driver related seminar proposed by Till>

- Confirm Till=92s email
- It is not easy with the same schedule as Japan Symposium. Synergy
   between them is limted
- How many attendees can be expected? Could be 10
- Isn=92t it enough as a tutorial seminar? We need some promotion
- Driver design talk sounds interesting
- As PPD design for CPD, it is desired to be able to use CPD from AP
- Is there any person who is interested in except printer manufactures?
   o AP?
   o There isn=92t any person who develops AP in the country?
- Collaboration summit should be suitable? There won=92t be attendees fro=
m
   Japan
- Is it necessary to arrange the tutorial even with gathering attendees?
   Does OpenPrinting Wiki have most information already?
- What is different from the Wiki? It could be necessary to hear
   directly because there are many information that are not easy for many=

   people to be understood easily?
- It could be practical if we provide an hands-on seminar such as
   programming a sample. -> Training could be better than tutorial
- Tutorial is not necessary if it provides same information as the Wiki

Conclusion:

- There are a few (2-3) companies that are interested in it if it
   provides training
- It is good to wait till CPD becomes to be used from AP
- We should not combine with Japan Symposium because of different
   customers


<Vector Driver spec 1.0 Approval>
- Waiting for info from Iran.


<Others>
- License Change of Adobe CMap. Now it has BSD-like license.
- CUPS 1.4.1 released
- LSB 4.0 seems to be formally released without official announcement.
  http://refspecs.linuxfoundation.org/lsb.shtml


<Action Items>
- Ask rescheduling of SC meeting in Dec. (Toratani)
- Check announcement of LSB 4.0 (Kunai)

<Next>
 2009-10-29 (Thu) 14:30 @ The Linux Foundation
--=20
  Osamu MIHARA / Fuji Xerox






--------------ms010207000402020104040302
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
CSqGSIb3DQEJBTEPFw0wOTEwMDgwOTAzNDVaMCMGCSqGSIb3DQEJBDEWBBQ01YbBxc0Rdnqs
mRNZgiCb6PIMjjBaBgkrBgEEAYI3EAQxTTBLMD8xCzAJBgNVBAYTAkpQMRMwEQYDVQQKEwpG
dWppIFhlcm94MRswGQYDVQQDExJGdWppIFhlcm94IFhuZXQgQ0ECCEmni1LN2Bf1MFwGCyqG
SIb3DQEJEAILMU2gSzA/MQswCQYDVQQGEwJKUDETMBEGA1UEChMKRnVqaSBYZXJveDEbMBkG
A1UEAxMSRnVqaSBYZXJveCBYbmV0IENBAghJp4tSzdgX9TBfBgkqhkiG9w0BCQ8xUjBQMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEBBQAEgYCRevXGkgklNkZECAKa
TSAlSzPvzZQKYZbZYbwhmGutoa4hBJli1dyqDhS3NYbrGjC6yHkuhhRjRaNQUZNw5JhC3aag
td2cADc+4QgbsLfksPZa5vr/ianPJ0KIJq4/Yzz+6yPqwfwC5fw7a17i5JG1xaKRFYRNG8vk
sdom9gi8CgAAAAAAAA==
--------------ms010207000402020104040302--
