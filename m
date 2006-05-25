Return-Path: <till.kamppeter@gmx.net>
Message-ID: <4475C014.4060806@gmx.net>
Date: Thu, 25 May 2006 16:32:52 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Notes of today's telecon
References: <4474E38B.5030102@gmx.net> <44750622.2050005@sun.com>
In-Reply-To: <44750622.2050005@sun.com>
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
To: Wendy Phillips <wendyp@sun.com>
Cc: printing-architecture <printing-architecture@freestandards.org>

Wendy Phillips wrote:
> I recall the ppd path differently:
> 
> /usr/share/ppd/<supplier>/<make>/<model>/<language tag>
> 

I remember that it was

/usr/share/ppd/<supplier>/<language tag>/<make>-<model>-<extra info>.ppd

> Comment on PPD files at Linuxprinting.org
>     As the user, if I select printer abc model 123, would I get a choice
> of suppliers? Such as, print vendor abc, gutenprint, linuxprinting.org,
> ... or is this for printer vendors exclusively?

You will get a choice of suppliers. Currently you can already choose
various drivers for one and the same model, and these are usually from
different suppliers. What will change in the future is that there will
be hosted or linked machine-installable binary packages of drivers for
automatization of installation of printers which are not (yet) known to
the actually installed distro.

   Till

