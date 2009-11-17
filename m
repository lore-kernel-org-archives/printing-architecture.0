Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <200911170123.nAH1NDRT016538@dsl092-065-009.bos1.dsl.speakeasy.net>
Date: Tue, 17 Nov 2009 03:26:45 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <072F429A-4DC5-43CD-8649-93CE63E40C34@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>	<200911151226.49297.hvengel@astound.net>	<5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>	<Pine.LNX.4.64.0911161329000.22140@sirius.rasena>	<E9C92136-4453-4938-A130-139BFF497874@colorremedies.com>
	<Pine.LNX.4.64.0911162229300.22140@sirius.rasena>
	<4B01F77E.9090001@gmx.de>
	<200911170123.nAH1NDRT016538@dsl092-065-009.bos1.dsl.speakeasy.net>
Subject: Re: [Printing-architecture] [Openicc]  [Gimp-print-devel]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: roy@harrington.com, Gerhard Fuernkranz <nospam456@gmx.de>, msweet@apple.com, openicc@lists.freedesktop.org, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

On Nov 16, 2009, at 8:23 PM, Robert Krawitz wrote:

> That's why I think the intermediate color space should be high
> precision with extremely wide gamut.  I know memory and CPU isn't
> free, but I think arguing over 8 vs. 16 bits of precision is
> distinctly penny-wise and pound-foolish.

It's fairly well established that printers do not need more than 8bpc. =
The challenge is getting the correct 8bpc. And this is most easily =
achieved by an intermediate space with 16bpc or higher. (e.g. ACE is =
32bpc float for some time now, previously it was 20bpc integer =
regardless of source bit depth). So yeah, any conversions shouldn't be =
considering 8bpc at all. 16bpc works in most instances, and 32bpc float =
is just going to totally clobber the issue altogether so I'd work toward =
a 32bpc float model. And just totally eliminate any question about =
whatever serious torquing of color spaces may be instituted (by the =
pipeline or the user or the driver or LUTs or profiles, or whatever).

So *if* there is a debate it's between 16bpc integer and 32bpc float, =
not 8bpc or 16bpc.


Chris Murphy=
