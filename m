Message-ID: <48BE2C3B.4070407@gmail.com>
Date: Wed, 03 Sep 2008 08:18:35 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200808281229.31215.hvengel@astound.net>
	<48BD500D.7040903@gmail.com> <48BD5F88.5040109@yahoo.co.uk>
	<48BD6D42.7000209@gmail.com>
	<Pine.LNX.4.64.0809021917440.5106@sirius.rasena>
In-Reply-To: <Pine.LNX.4.64.0809021917440.5106@sirius.rasena>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [gs-devel] Re: poppler vs. GhostScript
	& color management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: gs-devel <gs-devel@ghostscript.com>, Tobias Hoffmann <th55@gmx.de>, "Hal V. Engel" <hvengel@astound.net>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Hin-Tak Leung <hintak_leung@yahoo.co.uk>

Can everyone here with enough knowledge about color management and PDF 
standards file bugs against both Poppler and Ghostscript for everything 
which is wrong? Please attach sample PDFs to your bug reports and 
perhaps also image files (JPG, PNG, ...) which show how the output 
should look like.

    Till

Kai-Uwe Behrmann wrote:
> Hello,
> 
> first thanks to considering the colour management argument. ...
> 
> Am 02.09.08, 18:43 +0200 schrieb Till Kamppeter:
>> We switched now from a PostScript workflow without color management to a PDF
>> workflow without color management. Next step would be to have color management
>> being a standard part of the printing infrastructure.
>  
>> Color management is not yet completely implemented in both renderers. It is
>> really a good idea for next GSoC to do projects on making color management
>> work in both Ghostscript (if GS upstream developers do not complete it in
>> 8.64, due in Feb 2009) and Poppler (and also the CUPS imagetoraster filter).
> 
> In regards of a comparision I would say Xpdf has no ICC support as of 
> v3.02. 
> On a PDF with lots of different ICC colour spaces, Xpdf does get 
> only sRGB right.
> Ghostscript renders correct all those ICC profile taged images from the 
> same test PDF.
> 
> Colour people where really excited to see all the capbilities in 
> Ghostscript since v8.15 and especially 8.5x. It is good for support and 
> the over all appearance of a system to say to clients and custumers, there 
> is a CM wise working printing solution already installed on your system. 
> In the past we had often to suggest for difficult replacements or thierd 
> party products.
> 
>> Hin-Tak wrote:
>>> I think we have a few project ideas here for next year's GSoC :-), for both
>>> poppler and ghostscript...
> 
> ... and support of transparent images, which is missed in both.
> 
> kind regards
> Kai-Uwe Behrmann

