Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=al1EeH97/+X9dEJEIeVfuS9mSOkTnX/YzOlubvCeib8=;
	b=ApHlAWC8RFQcu/p2Acm2XHaPrXO93GnWsPn5MHivIBQnSoKegq9hKRRvtSFgqFpFN6
	aUZH540+95w+JdMpPSDSkksPNNYgLt7Scgg/eyakPBInKIsxPu76wNdgXO221W90186o
	2FbBJQiKKoicVyLBTnDqQ0CQbEgRcUD5yHx44=
Message-ID: <4EBC4E22.9040105@gmail.com>
Date: Thu, 10 Nov 2011 23:20:18 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAN40gSseW-35rJMD3ELqpE6HA3+E5vEf0BM+JimYFzJ4xmDDqg@mail.gmail.com>
In-Reply-To: <CAN40gSseW-35rJMD3ELqpE6HA3+E5vEf0BM+JimYFzJ4xmDDqg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Work plan for the new OpenPrinting CUPS
	filter package
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Koji Otani <sho@bbr.jp>


1. CUPS upstream drops the following filters and backends which are not 
used by Mac OS X and passes them over to OpenPrinting:

Filters:

bannertops
commandtoescpx
commandtopclx
imagetops
imagetoraster
pdftops
rastertoescpx
rastertopclx
texttops

Backends:

serial
parallel

2. CUPS upstream removes all image-related functions from libcupsimage, 
separating them in the temporary libcupslegacy (to be renamed/eliminated 
by OpenPrinting).

3. All this with a correctly working build system is now downloadable 
from CUPS SVN via

svn co http://svn.easysw.com/public/cups/branches/legacy-1.6 legacy-1.6

This repository will be converted/imported to BZR and uploaded as a new 
package into the OpenPrinting BZR repositories as soon as the BZR repos 
of the LF are back.

4. The current CUPS PDF filter add-on

http://www.openprinting.org/download/printing/pdf-printing/pdf-filters.tar.gz

plus the files

http://www.openprinting.org/download/printing/pdf-printing/cpdftocps
http://www.openprinting.org/download/printing/pdf-printing/cpdftocps.convs
http://www.openprinting.org/download/printing/pdf-printing/pstopdf
http://www.openprinting.org/download/printing/pdf-printing/pstopdf.convs
http://www.openprinting.org/download/printing/pdf-printing/pstopdf.types

will be added to the new CUPS filters package at OpenPrinting.

5. The functionality of accepting image files as print jobs will get 
discontinued, removing the imagetops, imagetopdf, and imagetoraster filters.

6. Text files are continued to be accepted as print input, as it is a 
convenient facility for system administrators.

7. bannertops will be replaced by a new bannertopdf which does not 
accept image files as design elements any more, but instead accepts PDF 
template files, and text sizes and positions (Lars Uebernnickel is 
currently working on that).

8. (5) and (7) should eliminate the need of the libcupslegacy library as 
the filter stack does not need to handle image files any more.

9. As all important applications (checked by standard Ubuntu Oneiric 
installations) emit print jobs in PDF we consider the PDF printing work 
flow as completed on the client side. On the server side it is currently 
only completed on Ubuntu and Debian as distro patch, by adding the files 
from (4) to the CUPS package. To complete it upstream originally it was 
planned to get the files of (4) into CUPS upstream, but as CUIPS 
upstream is moving most of the filters to OpenPrinting we will do the 
upstream completion of the PDF printing workflow at OpenPrinting, via 
(4) and discontinuing filters which are solely for the PostScript-based 
printing workflow: bannertops, imagetops, texttops.

10. pstopdf will get continued for the few legacy applications which 
still send PostScript and which we overlooked here. Usually these are 
only apps which do not use standard libraries to create jobs and/or 
which are not maintained any more upstream. Distros should not waste 
time to patch unmaintained apps so that they send PDF. Distros can make 
the installation of pstopdf optional, when a PostScript-emitting app 
gets installed (via package dependencies, suggested by Lars Uebernickel).

11. The filter pdftops in conjunction with cpdftocps and pstops (still 
part of upstream CUPS) form the "PostScript printer driver", as 
PostScript is not the standard format any more and so PostScript 
printers need a driver. These filters (at least pdftops and
cpdftocps) will get joined to one filter. Also commandtops (still 
maintained by CUPS upstream) is part of the PostScript printer driver.

12. The build system will get modified to check whether the system's 
CUPS is 1.5.x or 1.6.x (or later). In the former case filters still 
provided by CUPS will not get installed by the OpenPrinting CUPS filter 
package.

13. The CUPS legacy SVN repository will get observed and if further 
components of CUPS get dropped into it we will decide on their continuation.

See also

https://blueprints.launchpad.net/ubuntu/+spec/desktop-p-new-cups-filters-package

and

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfasstandardprintjobformat

In addition to this, all printer driver suppliers/developers should get 
informned about that the PostScript printing workflow is deprecated and 
that they should nopt do anything which forces CUPS to generate 
PostScript if the printer is not a PostScript printer.

    Till
