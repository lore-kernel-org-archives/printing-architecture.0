Date: Wed, 4 Jun 2008 17:41:00 +0200
From: Klaus Singvogel <kssingvo@suse.de>
Message-ID: <20080604154059.GA30247@suse.de>
References: <20080602154427.GA771@suse.de>
	<200806022202.41614.Thomas.Zander@trolltech.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <200806022202.41614.Thomas.Zander@trolltech.com>
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
To: Thomas Zander <Thomas.Zander@trolltech.com>
Cc: kurt pfeifle <k1pfeifle@gmx.net>, Henrik Nilsen Omma <henrik@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>, Celeste Lyn Paul <celeste@kde.org>, Cristian Tibirna <tibirna@kde.org>

Hi,
sorry for delay, but our next product is upcoming, and sometimes time
is getting short at the moment at my side. :-)

I noticed that you couldn't fully dispel all my arguments, and
therefore I think you caugth the issues.

Still I've some comments to your last e-mail...

Thomas Zander wrote:
> 
> The usage of references means that it you are right that it is possible to 
> have the first page reference an object at the end of the document, but thats 
> just not how pdf exporters are written.

But the PDF-1.7 reference from Adobe is written so:
http://www.adobe.com/devnet/acrobat/pdfs/pdf_reference.pdf

It could be viewed only (and only with acroread) after the file was
completely downloaded.

[...]
> > But most OpenSource programs (like xpdf and clones) support only up to
> > PDF-1.4.
> >
> > Therefore I'm asking, will be a PDF limitation made for Linux printing?
> 
> On screen PDF viewers are not really relevant here, the support of the 
> standard in the printer is.

Sorry, but how is the printout on non-brandnew or non-PDF-able printers
done?
Isn't there a conversion to older PDF versions or to a printer
specific rasterization necessary?
Which tool do you think is used for doing so, if not xpdf?

> But more to the point, newer versions tend to only add multi-media versions 
> (like 3D stuff) which obviously is not really relevant.

What about the JPEG2000 support (PDF-1.5)? I doubt that it is
multi-media related, and having doubts regarding "non relevant
feature" classification either.

What about the layering? I got bugzilla entries where the layering in
some newer PDF versions produced wrong printouts (different then in
viewer). I.e. https://bugzilla.novell.com/show_bug.cgi?id=377878

A technique, which was introduced with PDF-1.6, I think.


> On another note; KDE and poppler are working hard on getting that support up; 
> which is the obvious correct solution, again IMO.

I agree. But I heard about this rumor quiet some time now, and got
doubts that it will ever be done.

Regards,
	Klaus.
-- 
Klaus Singvogel  -  Maxfeldstr. 5  -  90409 Nuernberg  -  Germany
Phone: +49-911-74053-0
GnuPG-Key-ID: 1024R/5068792D  1994-06-27
SUSE LINUX Products GmbH,  GF: Markus Rex,  HRB 16746 (AG Nuernberg)
