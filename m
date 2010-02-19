Message-Id: <9A80752F-DCFC-4E56-A0BF-321B98323BC8@mmiworks.net>
From: kate price <kate@mmiworks.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F024235@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 19 Feb 2010 13:03:55 +0100
References: <ED4094DE5E8ACD4BBDACA6AD398E608F024235@EEAEX03.us.epson.net>
Subject: Re: [Printing-architecture] Epson Question on the Common Print
	Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Glen Petrie <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org

Dear Glen

Thanks for getting the CPD out there in Epsom, naturally all feedback =20=

and questions are welcomed by us.
Til has already replied I know, but it's worth giving you some more =20
answers from the perspective of us here at mmi-works, who are =20
developing the UI.


>
> 	=95 Does the CPD support Watermarks?
> 		=95 I remember this being there at some point but it =
could be =20
> confirmed.


Just as an appendage to Til's comments; we have developed aUI for =20
watermarking in the CPD. please see: =
http://wiki.openusability.org/printing/index.php/Personal_laser_parameter_=
specifications#Watermarking=20
   for details


> 	=95 How does the CPD support the connection between borderless =
print =20
> mode and media size/type.
> 	=95 Not all media sizes and media types are designed to support =20=

> borderless mode; is there a mechanism to handle this.

We have created a new control (or actually set of controls called =20
Print On. This integrates media type, media size  margins and color =20
management into one inter-related group. Borderless printing comes as =20=

part of margins. We have created generic margin sizes - one of which =20
can easily be "none" "minimum" or a term of your choice.

We felt there were a couple major of issues here:

*ensuring that borders  -i.e.  drawn borders and "border-less =20
printing" i.e. minimum or no margins, were not able to be confused
*allowing specific feature names can be integrated here, whilst =20
keeping it clear that margin sizes are always related to media type =20
and size - literally what users are printing on.
*not forgetting that manufacturers will have the capacity to create =20
tags which can big up unique printer features, whilst enabling  users =20=

to put together successful prints, for example there could be an "up =20
to the edge" printing tag.

see =
http://wiki.openusability.org/printing/index.php/Photo_printers_parameter_=
specifications#Print_On_-_Media_Type_and_Size


> 	=95 How will the CPD allow vendors to display printer status, =
toner =20
> (ink) levels, job status and support printing maintenance items like =20=

> nozzle check, nozzle clean and head alignment?
> 		=95 Is there a vendor zone or pane (panel) for this?

Actually, we are currently working on an icon to be shown next to the =20=

printer selection pop-up which will open all the relevant maintenance =20=

info.
Here we see a low ink warning icon also being appropriate, though not =20=

in any specific detail on the actual level 2/3 CPD pane.

The maintenance icon will open a new dialog pane, which can include =20
all the maintenance information Manufacturers require, including the =20
relevant images, user instructions or guides that are existence. We =20
are therefore designing in a neat, visible and immediate way for users =20=

to access all the information manufacturers wish to provide relating =20
to the chosen printer, directly from the CPD.

I will be updating the wiki with this addition in the next week or so =20=

so watch this space:
=
http://wiki.openusability.org/printing/index.php/Level_2_Dialog_zones_and_=
content#Printer_Zone

> 	=95 Does changing the media size in the CPD =93reflow=94 the =
document or =20
> simple scale (perhaps with clip) the document content to the =20
> selected media size in the CPD.
> 		=95 That is, an application (via the user) sets the =
document page =20
> size (say letter) while the CPD (via the user) specifies the print =20
> media size of the document page to be A4; in which case, the letter =20=

> sized content is scaled (maintaining aspect ratio) to A4.


As Til wrote, generally media size changes by the user are always =20
retransformed by the application. However, if the app has a page size =20=

concept it can set the values when the CPD launches. Advanced: the app =20=

would suppress the CPD controls and add it's own.

Best wishes,

Kate

mmi works



