Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=7WFoTQd4FVRsXQO2RrbvPJMFcVRr8ulZB2PCVjofOJM=;
	b=EjcU77PZhX5bpe5jOvEMks4PZ+bxUenmx5pjWR0QTG4iN78j+Apd+it6+BB0PeriOU
	rmBsw6m430fZpGVtUC1WbepMAzxb6AHTeBE+6mMTvDPRSW1BNiz6JCYl96XjLA+7khvy
	9/hfGXdv4WXntED/JFNDae5aOY7TUZPgHm18fhqr47YPD1pjSfPf9btiqEpD7ryGgbLT
	zakbTW91rCeV/hbXuP9McMLyPSy7Gl5d+CEDPm3LW167oKJY/BNe8pJBVT36P2Lm+Izo
	q0P4ht04II2JDO0ft8+e9lFtd7z0SZN231b+ylUfGHYe+oH7P6X5bchBH8Qn9g4SYfQw
	9PGA==
Message-ID: <a615740a6a9a6a50edef8218158ce2783c77e4b1.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Sat, 12 Jan 2019 16:59:52 +0100
In-Reply-To: <621F4463-5A0B-4C55-837F-940FFA00E92E@apple.com>
References: <CA+9ZNifwCYYZn0Fe2JNBSRenfb8iK6q_E_Vigh6rFgWy2viyXQ@mail.gmail.com>
	<CA+9ZNidZz3EaiQ-FSVyHKeNzoJwavEmYU-LPxfwE_khXzrm43g@mail.gmail.com>
	<621F4463-5A0B-4C55-837F-940FFA00E92E@apple.com>
Content-Type: text/plain; charset="utf-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] human readable media-type
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hello Michael,

A gentle reminder about this issue to ensure it did not fall into the
cracks. Thanks in advance.

Regards,

Le mercredi 28 novembre 2018 à 13:37 -0500, Michael Sweet a écrit :
> Pascal,
> 
> Last week was a holiday for most US employees (Thanksgiving), so please be patient for replies - I know *I* am swamped catching up...
> 
> 
> > On Nov 28, 2018, at 1:25 PM, Pascal Obry <pascal@obry.net> wrote:
> > 
> > 
> > Hello,
> > 
> > Still looking for an answer to this or hint to be on the right track. With PPD API being deprecated I just can't imagine that there is no solution to this?
> > 
> > Thanks!
> > 
> > 
> > Le jeu. 22 nov. 2018 à 14:19, Pascal Obry <pascal@obry.net> a écrit :
> > Hello !
> > 
> > I have contacted you about this issue on year ago! Made no progress and waited for a new CUPS version to be out. With 2.2.9 on Debian the PPD API is deprecated for good! So I'm back on this issue.
> > 
> > With the following attached program I get:
> > 
> > $ gcc -g -o cupsmed cupsmed.c -lcups && ./cupsmed Epson3880
> > **** PRINTER [Epson3880]    URI:[ipp://localhost/printers/Epson3880]
> > count: 20
> > localized option: media-type
> > 
> >    format:           stationery      stationery
> >    format:             postcard      postcard
> >    format:  photographic-glossy      photographic-glossy
> >    format:         transparency      transparency
> >    format:             envelope      envelope
> >    format:            back-film      back-film
> >    format:   photographic-matte      photographic-matte
> >    format:          matte-heavy      matte-heavy
> >    format:    stationery-inkjet      stationery-inkjet
> >    format:    stationery-coated      stationery-coated
> >    format:                photo      photo
> >    format:  photographic-glossy      photographic-glossy
> >    format:            semigloss      semigloss
> >    format:               luster      luster
> >    format:       archival-matte      archival-matte
> >    format:  water-color-radiant      water-color-radiant
> >    format:  photographic-glossy      photographic-glossy
> >    format:               ilford      ilford
> >    format:           color-life      color-life
> >    format:                other      other
> > 
> > The first column if the media-type reported by ippGetString(attr, i, NULL) and the second column is a try to get the human-readable localized value using cupsLocalizeDestValue(). As you can see, in both case I have the same value.
> > 
> > On my Debian box using CUPS local server (http://localhost:631) I get 20 media-type too, but the names are human readable:
> > 
> > - Plain Paper
> > - Postcard
> > - Glossy Film
> > ...
> > - Premium Glossy Photo Paper
> > - Premium Semigloss Photo Paper
> > ...
> > - ColorLife Paper
> > - Others
> > 
> > And up to now, with everything I tried I have not found the way to get those names.
> > 
> > Can someone help? Put me on the right track? I must be missing something but I see nothing in the CUPS API to do so.
> > 
> > Thanks in advance,
> > 
> > -- 
> >   Pascal Obry /  Magny Les Hameaux (78)
> > 
> >   The best way to travel is by means of imagination
> > 
> >   http://photos.obry.net
> >   http://www.obry.net
> > 
> >   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
> > 
> > 
> > -- 
> >   Pascal Obry /  Magny Les Hameaux (78)
> > 
> >   The best way to travel is by means of imagination
> > 
> >   http://photos.obry.net
> >   http://www.obry.net
> > 
> >   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
> 
-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

