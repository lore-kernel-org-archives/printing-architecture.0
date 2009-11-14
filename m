Message-ID: <4AFF3BEA.7090203@fakenhamweb.co.uk>
Date: Sat, 14 Nov 2009 23:23:22 +0000
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>	<200911140004.nAE04Qma005051@dsl092-065-009.bos1.dsl.speakeasy.net>	<FC7845A4-1F61-4FD7-85AE-A05EF0C448A4@apple.com>
	<200911141303.49267.hvengel@astound.net>
In-Reply-To: <200911141303.49267.hvengel@astound.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>
Cc: Robert Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, openicc@lists.freedesktop.org

Hi :)

Hal V. Engel wrote:

> I thought that GPLin was driving Epson printers as DeviceN devices.  But I may 
> not have that correct.  Alastair care to comment?

You have that correct - GPLin does indeed do DeviceN for Epson printers, 
and includes a "printdevicen" utility to print a multi-channel TIFF in 
raw mode.  You still need some way to get your data into DeviceN raster 
format in the first place, of course - so far I've used it just with 
multi-channel Argyll targets for experimenting with linearization.  In 
CUPS terminology, it's analogous to rastertogutenprint, and you'd still 
need a DeviceN-capable pdftoraster.

Which brings me to one difficulty we have with DeviceN profiling - 
there's currently no way as far as I know, to create DeviceN profiles 
without using commercial software on Windows or Mac.  Don't get me 
wrong, I'm not a particularly staunch FOSS purist - but the cost of such 
specialist software is a significant barrier-to-entry.

All the best,
--
Alastair M. Robinson
