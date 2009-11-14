From: "Hal V. Engel" <hvengel@astound.net>
Date: Sat, 14 Nov 2009 13:03:49 -0800
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<200911140004.nAE04Qma005051@dsl092-065-009.bos1.dsl.speakeasy.net>
	<FC7845A4-1F61-4FD7-85AE-A05EF0C448A4@apple.com>
In-Reply-To: <FC7845A4-1F61-4FD7-85AE-A05EF0C448A4@apple.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit
Message-Id: <200911141303.49267.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Openicc] [Gimp-print-devel]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: openicc@lists.freedesktop.org
Cc: Robert Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, Michael Sweet <msweet@apple.com>

On Friday 13 November 2009 08:51:17 pm Michael Sweet wrote:
> On Nov 13, 2009, at 4:04 PM, Robert Krawitz wrote:
> > ...
> > Gutenprint absolutely provides a true DeviceN color path (for Epson
> > printers, at any rate).  We just don't have a reasonable vehicle for
> > exposing it to end users.
> 
> Right, as a "halftone module" Gutenprint actually offers much more than
>  most vendor solutions, however as a CUPS driver it has no way to expose
>  this since no RIP filter supports more than 4 channels.

Of course right now we don't have any open source *toraster filters that are 
color management aware and the only reasonable way to drive a DeviceN, where N 
> 4, device is to use ICC profile driven separations.  Since work is underway 
on the new pdftoraster filter to add CM support shouldn't it be capable of 
doing DeviceN separations if it is supplied a DeviceN output ptofile?  After 
all we have CMMs (LCMS) that support DeviceN profiles so it should be fairly 
simple for the new pdftoraster filter to generate the correct separations if 
the device profile is a DeviceN profile or if the PDF spool file has been 
prematched using a DeviceN profile.  What happens now if CUPS gets a PDF spool 
file that has been prematched to DeviceN?  Does it fail even if the device 
supports DeviceN and the separations are correct for that device?  Or does it 
convert it to some other format like CMYK?

I thought that GPLin was driving Epson printers as DeviceN devices.  But I may 
not have that correct.  Alastair care to comment?

> 
> > I'm dubious of sRGB-only command sets for inkjet printers.  It
> > artificially restricts the available gamut, and doesn't work if you
> > use a medium other than that specified by the manufacturer.
> 
> Like it or not, you're going to see more sRGB/AdobeRGB-only devices in the
>  future, even from Epson. Only the high-end printers will support a DeviceN
>  mode that can be used by third-parties...

Again almost no one here is using the hardware vendor supplied drivers.  So I 
don't think it matters much what they do.  Our GutenPrint driven printers will 
continue to support DeviceN and CMYK print modes (even on low end devices) 
regardless of what the hardware vendors choose to do other than refusing to 
supply documentation for the printers communications protocol.  Some vendors 
have been refusing to supply this documentation for a long time but these 
vendors end up not having much penetration into the FOSS market so they are 
seeding this market segment to those vendors that supply the documentation 
needed to write open source drivers.

Hal 
