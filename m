Message-ID: <b801b6f40809022027s2d3718d9xc92ce14d1f2436f5@mail.gmail.com>
Date: Tue, 2 Sep 2008 22:27:47 -0500
From: "Alex Wauck" <alex.wauck@gmail.com>
In-Reply-To: <48BD500D.7040903@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_42773_17975426.1220412467047"
References: <200808281229.31215.hvengel@astound.net>
	<48BD500D.7040903@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: gs-devel <gs-devel@ghostscript.com>, OTANI Koji <sho@bbr.jp>, Tobias Hoffmann <th55@gmx.de>, "Hal V. Engel" <hvengel@astound.net>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Hin-Tak Leung <hintak_leung@yahoo.co.uk>

------=_Part_42773_17975426.1220412467047
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tue, Sep 2, 2008 at 9:39 AM, Till Kamppeter <till.kamppeter@gmail.com>wrote:

> I think under these circumstances we should switch all PDF rasterization to
> Ghostscript. Otani-san, can you change the pdftoraster (and if needed also
> the pdftopdf filter) to be based on the Ghostscript library libgs? Lars,
> Alex, can you make the preview of the printing dialog be libgs-based?
> Tobias, Hin-Tak, can you do the appropriate changes on pdftoijs?


I know nothing about libgs.  Ironically, now that the school year has
started, I will probably have more free time, so I can take a look at it.
No promises, though.  Given that krita, inkscape, and okular (according to
apt-cache rdepends) use Poppler, it may be wiser to improve Poppler
instead.  I  am thouroughly unfamiliar with the Poppler codebase though, so
I have no idea how difficult it would be to do so.

Alex

------=_Part_42773_17975426.1220412467047
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div dir="ltr">On Tue, Sep 2, 2008 at 9:39 AM, Till Kamppeter <span dir="ltr">&lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><div class="gmail_quote"><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
I think under these circumstances we should switch all PDF rasterization to Ghostscript. Otani-san, can you change the pdftoraster (and if needed also the pdftopdf filter) to be based on the Ghostscript library libgs? Lars, Alex, can you make the preview of the printing dialog be libgs-based? Tobias, Hin-Tak, can you do the appropriate changes on pdftoijs?</blockquote>
<div><br>I know nothing about libgs.&nbsp; Ironically, now that the school year has started, I will probably have more free time, so I can take a look at it.&nbsp; No promises, though.&nbsp; Given that krita, inkscape, and okular (according to apt-cache rdepends) use Poppler, it may be wiser to improve Poppler instead.&nbsp; I&nbsp; am thouroughly unfamiliar with the Poppler codebase though, so I have no idea how difficult it would be to do so.<br>
<br>Alex<br></div></div></div>

------=_Part_42773_17975426.1220412467047--
