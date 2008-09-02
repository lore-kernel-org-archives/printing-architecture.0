Message-ID: <48BD500D.7040903@gmail.com>
Date: Tue, 02 Sep 2008 16:39:09 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200808281229.31215.hvengel@astound.net>
In-Reply-To: <200808281229.31215.hvengel@astound.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] poppler vs. GhostScript & color
	management
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
Cc: gs-devel <gs-devel@ghostscript.com>, OTANI Koji <sho@bbr.jp>, Tobias Hoffmann <th55@gmx.de>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Hin-Tak Leung <hintak_leung@yahoo.co.uk>

Hal, thank you very much for your posting. This is a very important point.

I think under these circumstances we should switch all PDF rasterization 
to Ghostscript. Otani-san, can you change the pdftoraster (and if needed 
also the pdftopdf filter) to be based on the Ghostscript library libgs? 
Lars, Alex, can you make the preview of the printing dialog be 
libgs-based? Tobias, Hin-Tak, can you do the appropriate changes on 
pdftoijs?

We do not need to rush this into Intrepid or into the GSoC, but at some 
point we should be standards-conforming as far as possible and we should 
also support color management.

Ghostscript developers, what are the plans for support for handling all 
"CIE based" objects using CIE compliant techniques and ICC profiles in 
Ghostscript 8.64?

    Till

Hal V. Engel wrote:
>  From looking at the code for the new pdftoraster filter that is under 
> developement it appears that it, like the Common Printing Dialog, uses 
> poppler as it's pdf rasterization library. Inspecting the poppler code I 
> discovered that it is not compliant with any of the published PDF 
> specifications which require support for handling all "CIE based" 
> objects using CIE compliant techniques. This includes support for ICC 
> profiles imbedded in the PDF files as well as ICC profiles as an output 
> target. In addition inquiries made on the poppler developer email list 
> indicate that there are currently no plans to implement specifications 
> compliant support for "CIE based" objects although the developement team 
> would like to do this at some point. I was told that the code would need 
> major restructuring to add this support and looking at the code this 
> appears to be a correct assessment. In other words it will likely be a 
> long time before poppler is compliant with the PDF specification.
> 
> GhostScript on the other hand has partial support in place for "CIE 
> based" objects and user specified output color spaces with the current 
> stable version. There are currently two issues in this area. First 
> output color spaces can only be specified as a Postscript language CRD. 
> And, second, currently only ICC V2 profiles are supported.
> 
> ICC profiles can be converted into a Postscript language CRD using the 
> LittleCMS icc2ps utility and this can be passed on the command line to 
> GhostScript during the conversion from PDF to a raster format. The use 
> of Postscript language CRDs for specifying the output color space has 
> it's limitations and there are issues like banding when creating output 
> for larger gamut devices. Even with these limitations GhostScript is 
> much closer to being in compliance with the PDF specification than is 
> poppler. For details on how to setup and use GhostScript with the 
> currently supported color management workflow see 
> https://www.oyranos.org/wiki/index.php?title=Ghostscript .
> 
> In addition, the GhostScript team is in the process of doing a major 
> rework of how ICC color management works in GhostScript that should fix 
> all of the issues with the current implementation. For example it will 
> be possible to configure GhostScript to use an external CMS like 
> LittleCMS (currently it has an embedded cms library). LCMS has support 
> for both ICC V2 and ICC V4 profiles. In addition, the rework will allow 
> users to directly specify an ouput ICC profile and it will no longer use 
> an intermeadeate Postscript language CRD for the color space conversion 
> (IE. the conversion will use the installed CMS engine). See 
> http://www.ghostscript.com/pipermail/gs-devel/2008-August/007871.html 
> for more details about this.
> 
> Currently there is no indication when GhostScript will have the new ICC 
> profile features. Given the lack of support for color managment in 
> poppler is there any possibility that the new pdftoraster CUPS filter 
> and the Common Printing Dialog might convert to using GhostScript?
> 
> Hal
> 

