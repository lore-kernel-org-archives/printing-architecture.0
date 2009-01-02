Message-ID: <495E8A51.7000401@gmail.com>
Date: Fri, 02 Jan 2009 22:42:41 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <493F0240.8060607@fujixerox.co.jp>	<493F0F8B.7030206@gmail.com>	<20081210.143630.226786079.sho@bbr.jp>
	<20081222.142345.179944165.sho@bbr.jp>
In-Reply-To: <20081222.142345.179944165.sho@bbr.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] [Translation]
 12/5/2008 meeting minutues in OPWG/J
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Thank you for the patch. I have applied it to the Ubuntu packages of 
Poppler and XPDF. Updated packages for Jaunty and Intrepid will be 
available soon. See

https://bugs.edge.launchpad.net/ubuntu/+source/xpdf/+bug/311982

    Till

Koji Otani wrote:
> My patche was accepted and applied to the poppler repository.
> ----------
> Koji Otani.
> 
> From: Koji Otani <sho@bbr.jp>
> Subject: Re: [Printing-japan] [Translation] 12/5/2008 meeting minutues in OPWG/J
> Date: Wed, 10 Dec 2008 14:36:30 +0900 (JST)
> Message-ID: <20081210.143630.226786079.sho@bbr.jp>
> 
> sho> From: Till Kamppeter <till.kamppeter@gmail.com>
> sho> Subject: Re: [Printing-japan] [Translation] 12/5/2008 meeting minutues in OPWG/J
> sho> Date: Wed, 10 Dec 2008 01:38:35 +0100
> sho> Message-ID: <493F0F8B.7030206@gmail.com>
> sho> 
> sho> till.kamppeter> > ---------------------------------------
> sho> till.kamppeter> > 8. Issues in printing on Ubuntu 8.10
> sho> till.kamppeter> > ---------------------------------------
> sho> till.kamppeter> > See https://bugs.launchpad.net/ubuntu/+source/cups
> sho> till.kamppeter> > 
> sho> till.kamppeter> > Printing from GIMP is very slow or failed:->->->
> sho> till.kamppeter> > 
> sho> till.kamppeter> >   Cairo API does not support direct drawing of raster bitmap.  Instead,
> sho> till.kamppeter> > the apps should use "pattern" API to draw raster bitmaps, which result
> sho> till.kamppeter> > in a numerous number of "pattern" data in PDF.  It causes pdftops to
> sho> till.kamppeter> > generate "array" which size exceeds the limit in GS.  As a result,
> sho> till.kamppeter> > printing from GIMP is slow or failed.
> sho> till.kamppeter> > 
> sho> till.kamppeter> > --> currently, no idea for the solution as long as pdftops is used in
> sho> till.kamppeter> > the PDF print path.
> sho> till.kamppeter> > 
> sho> till.kamppeter> 
> sho> till.kamppeter> This issue is about to be solved. Current Ghostscript in Ubuntu Jaunty 
> sho> till.kamppeter> has a partial fix (0ubuntu12 package).
> sho> till.kamppeter> 
> sho> till.kamppeter> The Ghostscript team has solved the problem upstream yesterday. 
> sho> till.kamppeter> Unfortunately I did not succeed to apply the patches to Ghostscript 8.63 
> sho> till.kamppeter> for fixing the problem in Ubuntu. I am waiting for a backport from the 
> sho> till.kamppeter> Ghostscript team.
> sho> till.kamppeter> 
> sho> 
> sho> Great.
> sho> 
> sho> But, there is another problem.
> sho> 
> sho> GIMP produces PDF instead of PS for CUPS. (PDF workflow!!)
> sho> So, printing flow is
> sho> GIMP --> pdftopdf --> cpdftocps --> GS
> sho> 
> sho> cpdftocps uses pdftops.
> sho> Though this pdftops is a filter of CUPS, 
> sho>  it uses poppler's pdftops at last.
> sho> 
> sho> pdftops produces a incorrect PS which makes array over
> sho>    the limit of size (65535) when large images are in Pattern.
> sho> 
> sho> That's why printing large images from GIMP fails.
> sho> 
> sho> I'm making a patch for poppler and asking poppler's members to apply it.
> sho> ---------------
> sho> Koji Otani.
> sho> _______________________________________________
> sho> Printing-japan mailing list
> sho> Printing-japan@lists.linux-foundation.org
> sho> https://lists.linux-foundation.org/mailman/listinfo/printing-japan
> 

