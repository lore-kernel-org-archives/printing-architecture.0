Return-Path: <till.kamppeter@gmx.net>
Message-ID: <44773DF8.9010802@gmx.net>
Date: Fri, 26 May 2006 19:42:16 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Notes of today's telecon
References: <789E617C880666438EDEE30C2A3E8D10EE1E@mailsrvnt05.enet.sharplabs.com>
In-Reply-To: <789E617C880666438EDEE30C2A3E8D10EE1E@mailsrvnt05.enet.sharplabs.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: Wendy Phillips <wendyp@sun.com>, Norm Jacobs <Norm.Jacobs@Sun.COM>, 'Michael Sweet' <mike@easysw.com>, printing-architecture <printing-architecture@freestandards.org>

McDonald, Ira wrote:
> Hi,
> 
> I'm going to support Michael's point here.  The prevailing
> usage in the localization industry and in most file systems
> is to use language tag directories immediately _before_ the
> terminal filename in a path.
> 

So you suggest

/usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-ljet4-en.ppd
/usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-pxlmono-en.ppd
/usr/share/ppd/foomatic/HP/en/HP-LaserJet_4050-hpijs-en.ppd
/usr/share/ppd/gutenprint/HP/en/HP-LaserJet_4050-standard-en.ppd
/usr/share/ppd/gutenprint/HP/en/HP-LaserJet_4050-simplified-en.ppd
/usr/share/ppd/gutenprint/HP/de/HP-LaserJet_4050-simplified-de.ppd

Is this what you mean?

Having the language directory as the last level makes it also easier to
install (and also to uninstall) selected languages.

> And leaving aside "extra" entirely (not that we should),
> 10,000 printers with typically 10 languages supported
> makes a directory of 100,000 PPDs with the language tag 
> as a suffix in the terminal filename - awful performance
> for search and installation tools.
>

Or should we do

/usr/share/ppd/gutenprint/HP/LaserJet_4050/simplified/de/HP-LaserJet_4050-simplified-de.ppd

but we must read the PPDs anyway to match the detected printer against
the device ID strings in them.

> Though an installation tool MIGHT have to search multiple
> directories for a given model, it could easily check the
> user's current locale and present as the default (before
> ANY other searching) a PPD for the current locale.
> 

This reduces search time a lot, and by not installing unneeded language
directories one can save a lot of disk space.

> I sympathize with Glen about standardizing "extra", but
> I tend to think it's mostly hopeless - syntax yes, content
> not worth the effort.

Some tag in "Extra" telling the meaning of the content (like a "d_" for
a driver name) could make things easier, but it is not absolutely needed.

   Till

