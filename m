Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
	b=GSYHtMs8Mqsi8NONBNuVlamnRbP60xC2P+aT8QNQ9Sgzgv4oqwfWBVutDSqU2TGO2/fslXB5QiWX2nEImkh+tn3qOGmx0FoOlh82S/u3PlmJTIdNqrpKmSmjBpb3ll/89T21A5e5sVGzkAvoGnA+RfpRH2N3r5o2NxLtS2a1oeI=
Message-ID: <464CA989.5060803@gmail.com>
Date: Thu, 17 May 2007 20:14:17 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Merger of ESP Ghostscript and GPL
	Ghostscript
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

Hi,

as told on the last OP Arch phone meeting I have merged the extra 
functionality of ESP Ghostscript into GPL Ghostscript now.

Last year Artifex changed their license policy to providing the HEAD 
development of Ghostscript under the GPL. So distributions can ship the 
newest Ghostscript from now on and GPL Ghostscript is under the full 
attention of the upstream maintainers. In this situation maintaining a 
fork like ESP Ghostscript is not needed any more and therefore Mike 
Sweet has discontinued the development after the final 8.15.4 release. See

http://www.cups.org/espgs/

Some weeks after Mike has released ESP GS 8.15.4 and as many reports of 
ESP Ghostscript crashes have reached Ubuntu

https://bugs.launchpad.net/ubuntu/+source/gs-esp/

(note that bug 103595 has 27 duplicates and bug 105752 has 18 
duplicates) I have decided to start the merger, to soon get to 
well-maintained and up-to-date Ghostscript for the distros again.

The state of the art of the merger is available here:

http://www.openprinting.org/download/printing/esp-gpl-ghostscript-merge/README

(or click the link in http://www.cups.org/espgs/articles.php?L463)

Currently it is uploaded into the Subversion repositories at 
ghostscript.com, as the branch "gs-esp-gpl-merger". It will make part of 
the next stable GPL Ghostscript release, version 8.60. Currently testing 
is done to assure that it builds on all supported platforms and does not 
cause any regressions.

I have also made distribution-independent packages from it, and packages 
for Ubuntu Gutsy (current development version of Ubuntu, packages will 
come with the automatic update in some days).

Currently there is only one problem, which I hope can be fixed before 
the release of GPL Ghostscript 8.60. GPL Ghostscript 8.57 or later (with 
or without merger) has problems to display PDFs with gv or kghostviev or 
to convert PDFs to PostScript with pdf2ps:

http://bugs.ghostscript.com/show_bug.cgi?id=689237

GPL Ghostscript 8.60 will make ESP Ghostscript obsolete. AFPL 
Ghostscript was already made obsolete by earlier versions of GPL 
Ghostscript. So there is now only one Ghostscript -- GPL Ghostscript.

    Till

