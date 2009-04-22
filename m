Message-ID: <49EF53C7.8020901@the-axe-effect.de>
Date: Wed, 22 Apr 2009 19:28:39 +0200
From: Tobias Hoffmann <lprint-list@the-axe-effect.de>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog: Preview
 Processing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Michael Sweet <msweet@apple.com>

Petrie, Glen wrote:
> [...]
>
> [gwp] I think I understand your point. I would like to explore the=20
> case where the app does the =93layout=94 settings and, then, the print=20
> dialog has =93layout=94 settings. What is your expectation if the app=20
> (like OpenOffice Write) sets (and flows) the document to letter size;=20
> then the print dialog offers =93page size=94 attribute and the user now=20
> selects A4. Would you expect the print dialog to send the info back to=20
> application to reformat/reflow the document or clip letter content=20
> exceeding A4 or scale the letter content (without calling the=20
> application) to fit A4. I guess I would you go with the last=20
> option=85.but I have seen the system where letter formatted content is=20
> printed on 4x6 cards (silly I know) by simply clipping the letter=20
> content to 4x6. I had not seen any implementation of calling back to=20
> the application.
>
In general: Only the application knows the "right" way to print it's=20
content onto a differently sized paper:
- e.g. a PDF Viewer, or a DTP program has a fixed destination page size.=20
So they will most likely give the user an option like "scale contents to=20
fit page", as the user might want to get either of these.
- a web-brower or OO Writer will want to reflow the content.

Actually its more a question of Media Size - and Media selection - vs.=20
Content Size:
I might (just a thought) want to print a Document flowed to A5 (Content=20
size) to a A4 medium, and have it scaled to 141% e.g. for proofing fine=20
details.
The content size is technically only a matter of the application, and=20
the medium size only matters for the printing process. And the user has=20
to decide whether to scale or print in 100% - when these size don't match.

The casual user, however, will never want to know any of these details=20
and IMO in the reflowable case expects the media size to directly affect=20
the content size, or being offered "scale-to-fit" for the fixed content=20
size case (what does the usability testing say?).

Last but not least, the preview has to always show what the user will=20
get, so callback to the application for potential reflow is necessary=20
whenever the _content size_ changes.

Tobias
