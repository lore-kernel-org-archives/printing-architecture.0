Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371682948;
	bh=wDj/x1ux2h0Vbu8Iyez6ewqWipadOhMAwXm05I+Sdzc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=LteiUsH7mq4omANyi0s0xsIbdk85Z7+Nakw/i7cbmEGz9ehZ6KWbLCLrpCnpMc4o8
	pN02ZiBpJI6b9oGuIX9rWmrLwXeQj48i+mzCLZkN0P6HxDrgDvA8NIeiAtEi2ieXIT
	uznUNzLUbi+DVg5kf+B8ulG8pVZuXEv1IhM3IySeP5A==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com> (Michael Sweet's
	message of "Tue, 18 Jun 2013 07:49:48 -0400")
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
Date: Wed, 19 Jun 2013 19:00:50 -0400
Message-ID: <m3obb1zow4.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
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
Cc: printing-architecture@lists.linux-foundation.org

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

>> PostScript printers are still more common than PDF printers.

MS> Most PostScript printers also support PDF these days.

I get a lot of ads for printers in the $500-$2500 range.  And try to
help those looking to use their new printer with linux, which involves
researching said printers’ capabilities.

I still see most lines avoiding hard drives on all but the high end (of
each line, that is).  I also haven't seen a manual which claims pdf
support w/o the often optional drive.

I doubt most but the highest-end of a given printer line.  I doubt even
more that many add a hard-drive after the fact.  (Especially since they
seem always to be special-order, never an in-stock item.)

MS> In fact, this year saw the introduction of some printers that
MS> support PDF but *not* PostScript.

PDF where no PDL strode before is very welcome.  And I cannot wait for
full ipp-everwhere support from everybody.

MS> And of course MOST printers sold in the last 20 years have had
MS> neither PostScript nor PDF support...

And for those I wrote that the filters should have gs render the ps
directly to raster, not first to pdf and then on to raster.  Not to
mention that most of those MOST printers likely were not accounted
as 5-year depreciation capital investments.  And some might not last any
longer in serivce than their initial ink cartridges. :)

And thus are not the sort of long-lived legacy printer I, primarily,
wrote about.

PS: Thanks for joining the thread; I hoped you'd have some insights on
    the matter.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
