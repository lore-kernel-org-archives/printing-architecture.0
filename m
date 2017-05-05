Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:cc:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=8MMvPjBBRsZKO77rxHhyRpOGqx+M7HN8wwzixYPrzso=;
	b=BDxHqdu+vPiQgfaWvg0ig7CwNjM8dkVbSiJeFfm67ZXoA0AgrT0PilDpP+75Oz9xXn
	GCvXmmkfdAFk9ARxEvMeY+oaJqDo9DA7tgpd3ntFdM3ONtZtErBiv6EDMJ+Lycl2Xzua
	6k4nEdjqByp0u557+T0ilXNYSm21Eg6h91BVqP7o7Qx9rYMmVL8vWUBxZurmpxU5wq03
	Im6N0/4e6QwrguNqxo0IO6YS5QpQJKBhjELf2bTPzYNAA3CLJXwO92KPhvyPrjP2inE4
	hC9ALxP7uEk3ikZkXHCmx2L14al3s3T7rYS7R8lPq6cF1hxzJ+z8sF/9o/RkuqcaEwde
	3b/w==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <c94374fd-2e9b-f401-d2ea-0b827c3696e1@gmail.com>
Date: Thu, 4 May 2017 21:55:02 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Some info about WiFi Direct Print and PCLm
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Aveek Basu <aveek.basu@lexmark.com>

Hi,

after the discussion on the OpenPrinting Summit I have googled for WiFi 
Direct and PCLm.

WiFi Direct services are services on devices which have their own mini 
access point so that no WiFi router/access point/infrastructure is 
needed. A WiFi-capable PC, phone, tablet, ... connects to such a device 
via WiFi, preferably using WPS. Devices are typically TVs, media 
servers, cameras, and printers.

Printers provide the WiFi Direct Print service. The client connects to 
the printer-internal access point and then the printer is available as 
IPP 2.0 printers with known PDL to the client, to provide driverless 
printing.

Minimum required PDLs are one of PWG Raster and PCLm.

What is added to the driverless printing we have discussed before is 
that the printer provides a WiFi AP and so works without need of network 
infrastructure.

What I have found is a spec package, which can be downloaded throgh this 
link:

https://www.wi-fi.org/downloads-registered-guest/Wi-Fi_Peer-to-Peer_Services_Technical_Spec_Package_v1.2.zip/29561

You need to fill a form to agree to the license, but there is no cost 
and no need to be member of the WiFi alliance.

Due to the fact that you have to agree to the license or due to the fact 
that several PDFs are zipped together, Google does not find anything of 
the content of these files.

It contains PDFs with specs of WiFi Direct in general and also of 
specific services, one PDF about WiFi Direct Print.

I had a quick look into the PDF about WiFi Direct Print and saw what I 
have described in the beginning of this mail. In addition, there are 
descriptions of the specs, including of PCLm.

PCLm is, as we have already talked about, a simplified PDF which only 
contains raster images for each page, and it has the table of contents 
in the beginning, not at the end (to get streamable). For me it looks 
like that a person with knowledge in PDF could be able to generate PCLm 
with the info there.

With this we could implement support for WiFi Direct Print, and having a 
rastertopclm filter in place we could also test whether we can print on 
Mopria printers in PCLm.

Aveek, Danny, perhaps one could add to the IPP backend for the print 
dialog a facility which discovers WiFi Direct printers, connect to them, 
and list them too? Once connected they are IPP printers.

    Till








