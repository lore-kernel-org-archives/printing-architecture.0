Message-ID: <48BD6D42.7000209@gmail.com>
Date: Tue, 02 Sep 2008 18:43:46 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200808281229.31215.hvengel@astound.net>
	<48BD500D.7040903@gmail.com> <48BD5F88.5040109@yahoo.co.uk>
In-Reply-To: <48BD5F88.5040109@yahoo.co.uk>
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
To: Hin-Tak Leung <hintak_leung@yahoo.co.uk>
Cc: gs-devel <gs-devel@ghostscript.com>, OTANI Koji <sho@bbr.jp>, Tobias Hoffmann <th55@gmx.de>, "Hal V. Engel" <hvengel@astound.net>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

We switched now from a PostScript workflow without color management to a 
PDF workflow without color management. Next step would be to have color 
management being a standard part of the printing infrastructure.

All drivers except CUPS raster drivers (IJS, Ghostscript built-in, ...) 
still use Ghostscript in the first implementation of the CUPS PDF 
workflow in Ubuntu Intrepid. Foomatic 4.0 makes it possible that PDF 
gets fed into Ghostscript and using nearly the same Ghostscript command 
lines as before.

Color management is not yet completely implemented in both renderers. It 
is really a good idea for next GSoC to do projects on making color 
management work in both Ghostscript (if GS upstream developers do not 
complete it in 8.64, due in Feb 2009) and Poppler (and also the CUPS 
imagetoraster filter).

    Till

Hin-Tak Leung wrote:
> Till Kamppeter wrote:
>> Hal, thank you very much for your posting. This is a very important 
>> point.
>>
>> I think under these circumstances we should switch all PDF 
>> rasterization to Ghostscript. Otani-san, can you change the 
>> pdftoraster (and if needed also the pdftopdf filter) to be based on 
>> the Ghostscript library libgs? Lars, Alex, can you make the preview of 
>> the printing dialog be libgs-based? Tobias, Hin-Tak, can you do the 
>> appropriate changes on pdftoijs?
> 
> I don't know enough of the other issues, but libgs and poppler being 
> substantially different in so many levels, switching from one to another is
> not trivial; also, on pdftoijs going libgs - it won't be much different
> from the existing postscript-based workflow, other than some efficiency
> advantage of a customized/dedicated libgs client vs a general ghostscript
> command-line shell-script.
> 
>> We do not need to rush this into Intrepid or into the GSoC, but at 
>> some point we should be standards-conforming as far as possible and we 
>> should also support color management.
>>
>> Ghostscript developers, what are the plans for support for handling 
>> all "CIE based" objects using CIE compliant techniques and ICC 
>> profiles in Ghostscript 8.64?
> 
> I think we have a few project ideas here for next year's GSoC :-), for both
> poppler and ghostscript...
> 
> Hin-Tak
> 
> 
> 
> 

