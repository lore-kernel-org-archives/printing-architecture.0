Date: Mon, 2 Jun 2008 17:44:28 +0200
From: Klaus Singvogel <kssingvo@suse.de>
Message-ID: <20080602154427.GA771@suse.de>
References: <4842D3A7.2070308@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4842D3A7.2070308@gmail.com>
Subject: Re: [Printing-architecture] The Common Printing Dialog and PDF as
	standard print job format for Qt/KDE applications
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: kurt pfeifle <k1pfeifle@gmx.net>, Henrik Nilsen Omma <henrik@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, Thomas Zander <zander@kde.org>, Thomas Zander <thomas.zander@trolltech.com>, printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, Cristian Tibirna <tibirna@kde.org>

Hi,

Till Kamppeter wrote:
[...]
> PDF as the Standard Print Job Format
> ------------------------------------
> 
> To improve the reliability of the printing process, especially for 
> complex graphics, high color depths, and for jobs where pages get 
> separated and reordered (2 pages per sheet, booklets, selected pages, 
> ...) we are switching from PostScript to PDF as standard print job format.

I'm not happy about this decission, as PDF contains the document data
at the end of the document, whereas PS is containing the data in the
head of the document. Means an uncomplete document might partly be
printed in PS, whereas not in PDF.

Another issue for OpenSource distributions will be that PDF guarantees
that several fonts are always in the processing system (the Base 14
fonts). See page 3 on:
http://www.planetpdf.com/planetpdf/pdfs/pdf2k/03e/merz_fontaquarium.pdf
The issue is that these fonts are patented and NOT free to copy nor to
(re)distribute.

But I think, we'll arrange somehow with this decission in future.

Nevertheless: is there a limitation of the PDF version which will be
supported in future or not?
PDF-1.7 is approved as being the new standard:
http://www.theinquirer.net/gb/inquirer/news/2007/12/05/pdf-approved-iso-32000

But most OpenSource programs (like xpdf and clones) support only up to
PDF-1.4.

Therefore I'm asking, will be a PDF limitation made for Linux printing?

If we limit PDF printing in Linux to version 1.4, do we still have the
advantages of the switch from PS to PDF, like: complex graphics, high
color depths?


[...]
> So I am asking you whether you can change the Qt library to make the 
> "Print" command in Qt-based applications emitting PDF instead of 
> PostScript. To not break lagacy, non-PDF-capable environments, make this 
> a configurable option. If you have already doe so, please tell how to 
> configure the Qt library to output PDF, so that we will make this 
> configuration setting the default in all Linux distribution.

For better understanding: you're not asking for equal Gnome support,
because they are already doing so?
How did they solve the configuration of their library to output PDF?

Thanks in advance.

Regards,
	Klaus.
-- 
Klaus Singvogel  -  Maxfeldstr. 5  -  90409 Nuernberg  -  Germany
Phone: +49-911-74053-0
GnuPG-Key-ID: 1024R/5068792D  1994-06-27
SUSE LINUX Products GmbH,  GF: Markus Rex,  HRB 16746 (AG Nuernberg)
