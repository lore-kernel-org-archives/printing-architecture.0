Message-Id: <7A1F4B7B-4038-414E-B5E4-0FE1F21D4738@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379CD1@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v930.3)
Date: Fri, 17 Apr 2009 20:50:22 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CD1@EEAEX03.us.epson.net>
Subject: Re: [Printing-architecture] Common Dialogs for Printing
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
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

Glen wrote:

> I guess the addition of the actual preview to the CPD has triggered =20=

> more review of CPD from my perspective.
>
> I hope and believe the key object of this effort is focused on =20
> =93Common=94.  Thus, I now believe we may be trying to do too much in =20=

> the CPD and actually need three common dialogs; specifically, the =20
> Common Preview Dialog (CRD), the Common Print Dialog (CPD), and the =20=

> Common Status/Monitoring Dialog (CSD).
>
> Actually, what we call print preview is really =93preview of the page =20=

> setup=94 or =93layout=94.  It is expected that printer will print the =
page =20
> as shown in the =93print preview=94 or =93page preview=94.   So is =
this the =20
> =93print preview=94 or the applications =93page preview=94???

without a doubt _and_ proven by our first tests: the preview needs to be
a lo-res version of exactly what will come out of the printer.

the good thing about usability tests is that it shuts down, for ever,
endless discussions about what users really need.

> Print Preview Dialog:

this station is long past. see above.

may I remind you all that is is 100% part of the design that when
the transformation (formatting for paper) is for users creative/
tricky/involved that then we recommend applications to show
a dialog (the size of the actual application window) to let users
hands-on control the transformation. this includes for instance
sizing a spreadsheet (with the mouse, not by some number fields)
across a grid of pages, or placing that image (for hi-end graphics
apps like GIMP, inkscape) exactly on the page.

from this transformation dialog the choice is going to be
'just print' or to go through the print dialog.

> Print Dialog:
> n       When I print, however, 95% of the time I want to see a =20
> symbolic representation of the print options.  That is, which edge =20
> is selected when duplex printing, where are the punch hole =20
> locations, is the print BW or color, is the media in portrait or =20
> landscape mode.  None of these and other print options require the =20
> actual print content.
> o        In this case, I am not willing to wait for a thumbnail =20
> representation of my actual print content because it adds no value =20
> to setting print options.
> o        Having a consistent symbolic representation is critical =20
> because it makes it easier to quickly identify what options I have =20
> set or have not set.
> n       Therefore, I really support using the previous version of =20
> the CPD along with a symbolic representation of the print options.

like Mike said: you are not the user. please...

with your knowledge of how it all works you are separating things out
that are not separate for any non-printing-industry user.

remember the video clips I showed: the only thing that counts is
the hardcopy that comes out of the printer. the preview as an integral
part of the dialog reflects that fact.

> Status/Monitoring Dialog:

as I said: next project.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



