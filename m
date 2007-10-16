DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	bh=lpzRc2/3cmh8Obm1L+1SrLB5v000MFrcgVTrp4yQhQ0=;
	b=O4u/aXsQzxnCcXT5dBByuuxGgAjlHlGgIsvrfSa35TpnD80sM5mVD8vQG8OnB+j6OfqvrMFSq+vW3cTjIuLapC7+B2tjE+gG6pyNYGSZeJNa7oguTYeDzCO9UqzBdXINdkpTF/UZZUS+oLAieS6VPyIy4o+ifNm/5QDCW12RQZU=
Message-ID: <471483AB.9050309@gmail.com>
Date: Tue, 16 Oct 2007 10:26:03 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-summit] Re: [Printing-architecture] Posted OPS Summary
	from Montreal
References: <e395be80710151142y1c10408ei62c07ea6ddc5ec72@mail.gmail.com>
	<4713CA56.3050708@gmail.com>
	<200710152346.l9FNkVXZ018939@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200710152346.l9FNkVXZ018939@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

Robert Krawitz wrote:
> Question:
> 
>   - Installing everything in /opt/<supplier>/ to avoid conflicts with
>     distribution
> 
> What does this mean for Gutenprint or other similar packages?
> 

This means that for distribution-independent LSB packages the 
"./configure; make; make install" sequence has to be called with 
different selections of installation directories and the post-install 
script of the package has to add directories to the $PATH and links to 
system locations.

See

https://www.linux-foundation.org/en/OpenPrinting/WritingAndPackagingPrinterDrivers

for the packaging procedure and the tools to simplify the 
above-mentioned method, so that the packaging is not more complicated 
than packaging for a particular distribution.

Gutenprint I have already packaged this way. See the source RPM and the 
spec file:

http://www.linuxprinting.org/download/printdriver/SRPMS/gutenprint-5.0.1-1lsb3.1.src.rpm
http://www.linuxprinting.org/download/printdriver/SPECS/gutenprint.spec

The binary RPM (CUPS raster driver, no IJS, no GIMP plug-in) for 32-bit 
and 64-bit Linux is linked from the OpenPrinting database entry:

http://openprinting.org/show_driver.cgi?driver=gutenprint

>   - Distribution-independent drivers
> 
> The only true "distribution independence" is ultimately source,

Source is no problem for experienced users, bu the typical user 
migrating from the Windows world needs ready-to-use binaries.

> although I agree that binary packages are useful for installation.
> x86 drivers for Linux don't help people using SPARC, PPC, etc, and for
> that matter don't particularly help people using Solaris or other UNIX
> on x86.
> 

Unfortunately, one cannot make binaries which work with different 
processor architectures (without using software emulation of other 
processors) or different operating system architectures. There is 
packaging for both Intel and PPC under Mac OS X, but probably these 
packages contain every executable twice, or the executables contain the 
code twice. In general, if you try to make a software package which 
supports all operating systems and all processors within each operating 
system, your package will get huge. Also you will need continuous 
availability of maintainers for all these platforms having the 
appropriate hardware.

Having packages covering all major (LSB-compliant) distros is already a 
big step forward, as printer manufacturers can now make drivers for 
Windows, Mac, Linux, instead of Windows, Mac, Red Hat, SUSE; Ubuntu, ...

Hardware manufacturers need to make printers which do not need a 
processor/OS-dependent driver executable but only a plain-text 
description file for options and features, like PostScript and PDF 
printers with PPD files, but this one cannot produce el-cheapo ...

    Till
