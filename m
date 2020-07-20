Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PsJi52qnw20H5xRApu4sqdD4iF8ZoKAVHwIWB2yn85Q=;
 b=LeIBMntW+4ti/ySsUBVnQT9HMKe4ExajqLLTVbCDlCTAhGgExXbpq8jZwCDvfcZHLe
 PoICDeOzabDgF57psb6/yeq9YGcCTXsHMtMvRIyxuE00fSk7Rkf+A1gm+QPtN4/cglNj
 ZrHLGZo0+i3tjJ3gUJ9Q3tQtYEddyJTwp0r7CfiW+7crJuXBNm+WyjKjmuQpjtCjat3Q
 t9+IFgaQT4BbU5rF6NkDIZ0qFLo7762nbbnQVbOUk4nHuCykJGN+cy2mg5ezsNEntrgJ
 wr7Ufw+t6thOHND+IX11yA5ZZRkRiexeMelwHt0cxiDOPlVv4LsSnIbDE5lnAbNeJEeB
 PNFQ==
References: <199c8f6d-b38a-fc14-526c-3201c473788b@gmail.com>
 <2CFDE5DA-E5B5-41BF-918C-D9F41EB0D259@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <a0c5253d-6c0b-b11c-4446-e79bc95a19a9@gmail.com>
Date: Mon, 20 Jul 2020 13:58:20 +0200
MIME-Version: 1.0
In-Reply-To: <2CFDE5DA-E5B5-41BF-918C-D9F41EB0D259@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Printer Applications: Retro-fitting
	classic drivers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: Sambhav Dusad <sambhavdusad24@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Jai Luthra <luthrajaiji@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Thank you very much for your explanations.

On 20/07/2020 01:19, Michael Sweet wrote:
> 
> OK, so in this case you probably want to not set the print function (NULL) and not set the MIME media type at all, so that the printer application only reports PDF and the various raster formats.  You'll need the raster callbacks to generate PDF or PostScript (probably easier) to pass to Ghostscript, which then produces the final printer-ready content.
>

OK, so I will set driver_data.print = NULL and driver_data.format = 
NULL. I will accept raster input formats and convert them to PDF or 
PostScript as first step of filtering, then everything gets converted to 
the printer's native format as final step of the filtering ...

> 
> Yes, however the only options/attributes required for IPP Everywhere/AirPrint that affect job filtering are:
> 
> - copies
> - media/media-col (for scaling/centering)
> - page-ranges
> - print-color-mode
> - print-scaling
> - sides (duplex needs an even number of pages and the right back side orientation for raster)
> 

So then I will let these options get executed on the job. In addition, I 
will apply form-flattening to jobs coming in in PDF format. So best is 
if I move the functionality of the pdftopdf filter into libcupsfilters 
and call the appropriate parts from my filtering function for the 
Printer Application.

> You can't assume printer-ready since iOS clients (in particular) will let the PDF printer handle the above attributes when printing a downloaded PDF.
>

OK, see my suggestion above,

> I'm not sure which functionality you are talking about?  It is enough to generate the proper Level 2/3 PS and embed the necessary printer-specific commands I think.  Oh, and make sure to support the attributes above when generating things - so if
>

The problem here is PostScript generated from PDF by Ghostscript (not 
PostScript generated from Raster). This PostScript is hitting bugs of 
some printer's PostScript interpreters. The pdftops filter of 
cups-filters is applying workarounds, either by modifying the PostScript 
or, in the worst case, by switching to Poppler for certain printer 
manufacturers/models.

> I think ippeveps's method is good enough - PostScript is a legacy format and these days the only producers will be programs that want full control.  It is enough to ensure the right JCL commands get added.
>

OK. Especially as the Printer Application will not accept PostScript as 
input format (see above, pdriver_data.format = NULL). So many options 
get applied on the PDF level.

> The reported MIME media types are "image/pwg-raster", "image/urf", any registered MIME filters ("image/png" and "image/jpeg" for the stock PAPPL, plus any others), and (if not NULL) the pdriver_data.format value.  As I mention above, non-PS printers using Ghostscript-based drivers should leave the pdriver_data.format value set to NULL.

OK.

    Till
