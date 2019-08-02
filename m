Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=sender : content-type
	: mime-version : subject : from : in-reply-to : date : cc :
	content-transfer-encoding : message-id : references : to; s=20180706;
	bh=eskc3k+RveRCdNnc9p8uLEFZYkVNvcudbonYLueGxtI=;
	b=T3eg1LLwmfV1QboxGcdToc/B/v7ULlmR0qizMm7U5bOz12IdNu4Tsm92xu+bG9e3r+PQ
	X2+WFdmJGvzgyNMbMrzO0f437I++pIdoIaczw7PF8bJ8RSVVgwDbEg/I1M+Hq5Ys9ez2
	ptgXFcMh8j1EDnAHL5tTb11FILT1FwZsHIhg2qvdqODkY9Y7Cw6Vqh9+96HvkUr/jfBm
	SSi/P4bDFObCFWCWeQPfq8fvEV1xsTuj6I9mVU7RpAWFw+gB4Qq1sMl4kDYIXWNzbMh6
	C4n81IymeZ7RTs8truNtV+DUF4BgH2hqnQ1IUR/X403ScXVXNZOiPUVrgoehUS4PqIaz
	HQ== 
Sender: msweet@apple.com
Content-type: text/plain; charset=us-ascii
MIME-version: 1.0 (Mac OS X Mail 13.0 \(3570.1\))
From: Michael Sweet <msweet@apple.com>
In-reply-to: <a3fb698b-4b5a-6489-4c06-9ac3e4b219e0@gmail.com>
Date: Fri, 02 Aug 2019 17:38:12 -0400
Content-transfer-encoding: quoted-printable
Message-id: <CBC22B5F-D257-4D9B-922A-2C790BF94A02@apple.com>
References: <a3fb698b-4b5a-6489-4c06-9ac3e4b219e0@gmail.com>
Subject: Re: [Printing-architecture] DNS-SD advertising of local services
	on	Linux
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Michal Sekletar <msekleta@redhat.com>

Till,

Avahi needs to support "localhost" for the loopback interface, for all =
of the reasons you've discovered.

In addition, if Avahi returned 127.0.0.1 as one of the addresses for a =
.local lookup, that would cause some serious security problems when =
machine A looks up machine B ("b.local") and gets its own loopback =
address - by returning localhost ("localhost.") that security issue is =
avoided.



> On Aug 2, 2019, at 1:57 pm, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi,
>=20
> the development on IPP driverless printing standards and there =
implementation has created the demand of DNS-SD-advertising local =
services (on localhost).
>=20
> At first there is IPP-over-USB, the standard for driverless printing =
on USB printers. For this a daemon on the host machine, ippusbxd =
emulates an IPP printer, and as USB printers are usually visible and =
accessible only on the machine where they are connected to, ippusbxd =
does the DNS-SD advertising of the printer (which is a requirement of =
the driverless IPP printing standards) only on the local machine, under =
the host name "localhost" and therefore via the "lo" network interface, =
the loopback interface.
>=20
> The same will happen for Printer Applications (Dheeraj Yadav is =
working on a framework to convert legacy drivers in this year's GSoC). =
If there is a USB (or parallel, or serial, or proprietary local =
connection, ...) printer which does not do driverless, so requires a =
driver, will get a Printer Application which emulates an IPP printer and =
passes on the jobs to the actual printer. It again will advertise itself =
on "localhost" as it is for a locally connected printer.
>=20
> On Linux, DNS-SD (mDNS, Bonjour, Zero-Conf) broadcasting is done by =
Avahi (https://github.com/lathiat/avahi/) and in its currently released =
version Avahi does not support advertising services on "localhost" via =
the loopback device and so it does not advertise the above-mentioned =
services and whe letting these services advertise on other interfaces =
they appear in the whole network behind the interface, effectively =
sharing the printer on the network.
>=20
> Therefore I have created a simple patch (together with Rithvik =
Patibandla, former GSoC student for OpenPrinting) to add appropriate =
support to Avahi. I have created a first part which actually added the =
loopback interface support but the reported DNS-SD records for the =
service via the loopback device show the correct 127.0.0.1 IP address =
but the machine's network host name and not "localhost" as hostname. A =
client picking up this record and using the hostname for building the =
printer URi would end up not being able to access the printer. Rithvik =
then added a second part to the patch to correct the host name to =
"localhost".
>=20
> I have published the patch first in the README of ippusbxd:
>=20
> https://github.com/OpenPrinting/ippusbxd/blob/master/readme.md
>=20
> and posted it to an Issue report to Avahi:
>=20
> https://github.com/lathiat/avahi/issues/125
>=20
> Trent Lloyd, upstream maintainer and one of the original authors of =
Avahi is very much involved in his day job, unfortunately, and so he =
needed a rather long time to answer the request, even being the original =
poster of the Issue.
>=20
> On March 28 this year he finally gave his first opinion about the =
patch telling that he would only accept my part of the patch which =
actually adds the loopback support and not Rithvik's which corrects the =
"localhost" host name. He tells that the exception handling has to be =
done by CUPS and not by Avahi. See Trent's first comment of March 28.
>=20
> While fixing a bug in cups-browsed =
(https://github.com/OpenPrinting/cups-filters/issues/136, reported by =
Dheeraj) I have investigated the Avahi case more and came to the =
conclusion that the host name has to get fixed in Avahi.
>=20
> As Trent also told in his first comment on March 28, a service is =
reported on each network interface it is available on separately and =
independently (my investigations resulted in each combination of network =
interface (lo, eth0, wlan1, ...), service type (IPP, IPPS), and network =
address protocol (IPv4, IPv6)). Each reported record contains service =
name, service type, domain, interface, host name, IP address, address =
protocol, port, and optionally a TXT record with service-specific =
content. It must always be possible to talk to the service using the =
interface/IP/port or interface/hostname/port combo of this record.
>=20
> This usually works, assuming that the printer does not report its =
presence on an interface/service type/address protocol combo where it =
does not actually listen on. On all non-loopback interfaces the network =
host name is valid and resolves to the IP on the appropriate interface, =
only with the loopback DNS-SD record this does not work if only my and =
not Rithvik's part of the Avahi patch is applied, as the record then has =
the network host name as hostname and not "localhost" and the network =
host name never resolves to the 127.0.0.1 (or ::1) IP address.
>=20
> As this would not only happen with CUPS as client but also with any =
other client trying to connect to a local service this should be fixed =
in Avahi in my opinion.
>=20
> See my comments from July 31 to August 2 on
>=20
> https://github.com/lathiat/avahi/issues/125
>=20
> for more info.
>=20
> Now I would like to ask Michael Sweet and also the networking experts =
here what would be the best to solve this problem so that we can have =
all IPP driverless printing standards correctly working on Linux.
>=20
> Thanks in advance.
>=20
>   Till
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

