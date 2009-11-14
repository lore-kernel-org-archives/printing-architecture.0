From: "Hal V. Engel" <hvengel@astound.net>
Date: Sat, 14 Nov 2009 12:56:21 -0800
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AFE838E.6060803@fakenhamweb.co.uk>
	<8ddb9a960911140305p3672474bv3eefc760dcd67c44@mail.gmail.com>
In-Reply-To: <8ddb9a960911140305p3672474bv3eefc760dcd67c44@mail.gmail.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <200911141256.21251.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: gimp-print-devel@lists.sourceforge.net
Cc: printing-architecture@lists.linux-foundation.org, Thomas Lianza <TLianza@xrite.com>, ICC DPWG <digital_photography@lists.color.org>, "'colorsync-users?lists.apple.com' List" <colorsync-users@lists.apple.com>, OpenICC Liste <openicc@lists.freedesktop.org>

On Saturday 14 November 2009 03:05:55 am edmund ronald wrote:
> Hi to you too :)
> 
>  Yes, being able to override any built-in or vendor supplied profile
> is obviously a necessity for power-users, and one which might be
> hidden somewhere in an "Options..." dialog which then allows saving
> named presets.
> 
>  On the other hand, printer vendors will resist easily accessible
> customisation -just as they resist user-profiling- because convincing
> Jane User that she will only get good color by using the vendor's
> listed media is their main tool to sell their branded expensive media.
> 
>  Everybody in this cluster :) has conflicting interests; but I wish
> that sane behavior would be *speedily restored * for us color
> consultants and photographers to get on with our life, while the
> solution to the world's printing problems gets debated. Please,
> someone write an utility to patch the driver -it's open source, right?
> - to enable deviceRGB and put us out of our misery.
> 
> Edmund

I see that this thread has been expanded to some additional lists and these 
folks may not know what this is really about since they are coming into this 
in the middle of the thread and just to make sure that they understand where 
this is coming from here is a little back ground.  This started on the email 
list for the OpenPrinting group which is part of the Linux Foundation to 
discuss how color management should be handled in the new Common Print Dialog 
(CPD).  This was quickly expanded to the OpenICC and GutenPrint email lists 
since these three lists are the primary communications points for those 
working on open source printing and color management. The reason that we are 
hashing out these OS/X, ColorSync issues in this thread is that we don't want 
to repeat the same mistakes on our open systems as we add color management.  

The issues Edmund brings up involve ColorSync, various vendor supplied OS/X 
printer drivers and perhaps certain applications (Photoshop has been 
mentioned).  None of these are open source so the open source community can't 
be of much help other than making sure that we don't make the same mistakes on 
our systems.

However I think we got a little side tracked and I think we need to refocus on 
the original purpose of this thread (IE. how to handle color management in the 
CPD).  The main thing we should get out of this thread is that there needs to 
be a print path that allows for convenient printing of profiling and 
calibration targets as well as prematched output so that photographers and 
color experts/consultants can do their work without having to jump through all 
kinds of (perhaps hard to find) hoops.  At the same time end users should not 
even see these CM related settings unless they pull up a special part of the 
UI that is intended for advanced color management savvy users.  

There are clearly two use cases here:

1. Your average user - the vast majority of all printing - KISS principle 
applies.

2.  Photographers, color experts... 

These are very different use cases and they fundamentally conflict with each 
other.  #1 requires that the UI and work flow be as simple as possible - it has 
to work for even the most naive user - where as #2 requires a high degree of 
control and a high level of user expertise.   I think the tension we are 
seeing in this thread is about the conflict between these two use cases.

I also agree with Edmund that it should be possible to allow saving named 
presets.  The current design of the CPD does this so at this point I think 
this is a non-issue for our open systems design since it is already included. 

Edmund also mentioned vendor branded media and the fact that much of what we 
see in the vendor supplied drivers is designed to force users to purchase that 
branded media.  This is spot on since in many cases the printer vendors make 
almost no money on the sale of the printer (at least on consumer level 
devices) but make up for that in spades when they sell their expensive high 
profit margin media for the printer.  A user might spend only $100 to buy a 
consumer level printer but over it's life they might spend 10 or 20 times that 
much on paper and ink.  That is where these vendors really make their money.  
We should not let this get in the way of making sound design choices like it 
appears to have on closed systems.

Hal

> 
> 
> 
> 
> On Sat, Nov 14, 2009 at 11:16 AM, Alastair M. Robinson
> 
> <blackfive@fakenhamweb.co.uk> wrote:
> > Hi :)
> >
> > Michael Sweet wrote:
> >> I humbly suggest that what you want is a utility that allows the user to
> >> print targets and generate/install ICC profiles for a particular
> >> combination of printer, media, and other settings. If you have to select
> >> a profile at print time, then the printing workflow is broken.
> >
> > I have to disagree here.  I have three different "grades" of glossy photo
> > paper here, from different manufacturers.  In terms of the amount of ink
> > they'll take, and thus the correct print settings, they're pretty much
> > identical, but prints do look different on each, and they have a very
> > different "feel".  Which of the three I use depends on how "prestigious"
> > I want a print to look, traded off against whether I want to use the most
> > expensive paper.
> >
> > Each paper type has (and needs) its own profile, yet the printer driver
> > has no way of telling which of the three I'm using since the print
> > settings are identical.  Thus, in my opinion, a printing workflow which
> > doesn't allow me to set a profile at print time is broken.
> >
> > At best the print dialog can select a sane *default* profile, but it's
> > imperative that if the user "knows better" it can be overridden.
> >
> > All the best
> > --
> > Alastair M. Robinson
> 
> ---------------------------------------------------------------------------
> --- Let Crystal Reports handle the reporting - Free Crystal Reports 2008
>  30-Day trial. Simplify your report design, integration and deployment -
>  and focus on what you do best, core application coding. Discover what's
>  new with Crystal Reports now.  http://p.sf.net/sfu/bobj-july
> _______________________________________________
> Gimp-print-devel mailing list
> Gimp-print-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/gimp-print-devel
> 
