Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
Date: Sun, 9 May 2021 09:49:59 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>

Till,

> On May 9, 2021, at 5:20 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> 1. A user wants to print photos in best possible (wide gammut) color =
reproduction quality. So he either sets his camera to produce AdobeRGB =
JPEGs or he shoots RAW and saves the processed RAW images in =
16-bit-per-color AdobeRGB. He sends his images out of his photo =
editor/manager to the printer, but the application sends print jobs in =
PDF. So we get a raster-only PDF with the raster data embedded being =
16-bit AdobeRGB (assuming that the printer supports it as the =
application's print dialog does a get-printer-attributes request and so =
knows what the printer supports).

The best solution here is to look at the image color space and try to =
match it to the closest printer-supported color space.

> In this case in the CUPS filtering process we have to discover at =
first whether the incoming PDF is raster-only. In this case we would not =
render it but pass it through pclmtoraster to extract the raster data =
with its color space info (AdobeRGB). We do not convert this to sRGB or =
anything else, but pass on a Raster file in AdobeRGB.

Again, you want to look at the input data to determine its color space, =
and then pass it through or convert as needed.

> Question here: Do we need to discover that the PDF is raster-only and =
then use pclmtoraster? Or can we simply do the standard rendering =
(GhostScript, Poppler, or MuPDF) and tell the renderer (by command line =
for example) that we want AdobeRGB output? Would the renderer pass on =
the AdobeRGB data without conversion, especially not doing AdobeRGB -> =
sRGB -> AdobeRGB?

Ideally we want whatever converts the file to know the input color =
space(s) and the printer's supported color spaces.  Then we can make a =
semi-intelligent decision about the color space that preserves as much =
of the original data as possible.

> 2. Another user wants to write a review of mobile phone providers, =
containing pictures and logos of the candidates (one of them is =
T-Mobile). In order to avoid the providers feeling stepped on their toes =
he wants to have best color reproduction. So he creates the print output =
(which is in PDF) in AdobeRGB as he knows that the printer supports it.

Again, if the source images are sRGB, it is best to stay in sRGB until =
the last possible moment.

> My question: Now how can the CUPS filters auto-discover that the PDF =
is in AdobeRGB and therefore the PDF needs to get rasterized in =
AdobeRGB? Is there some tool for that? Some special call of GhostScript =
or QPDF? Or can I uncompress the PDF and then search it for =
"/ColorSpace" keys? Also how to rasterize if there are some sRGB and =
some AdobeRGB pieces in it?

Images are almost always embedded as objects in the PDF file and =
references in the content streams, so as to take best advantage of the =
available compression filters that PDF offers.  The typical exceptions =
are small icons or logos that wouldn't benefit from this treatment and =
probably wouldn't be adversely affected by an incorrect choice about =
color space (so long as the RIP does ICC).

Therefore, you can examine the embedded image objects (all of the =
current tools provide utilities for extracting them) as a hint to what =
color space might be best if you have to choose between AdobeRGB and =
sRGB.

That said, if you have a printer ICC profile and the printer supports =
device RGB (or device gray), then *that* is the best color space for the =
"last mile" to the printer.

________________________
Michael Sweet



