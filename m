Message-Id: <A38CD885-35FE-4C37-A4AB-912E36D6ED69@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v930.3)
Date: Wed, 22 Apr 2009 17:56:55 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
Subject: Re: [Printing-architecture] Print Dialog: Preview Processing: Only
	A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Glen Petrie <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

Glen wrote:

> I have been requested to get a better understanding of processing =20
> related to the print preview.
> I am not proposing a solution or suggesting changing to a solution.
>
> Question Summary: Will the Application or the Print Dialog Generate =20=

> the Preview?  Perhaps some of both?  Perhaps on one.

both.

the preview generation mirrors the printing process. For the
real print job the application does the transformation (formatting
for paper) and the printer (+ driver + CUPS + lots more) does the rest.
For the preview the the application does the transformation and the
print dialog does the rest.

what triggers an application re-transformation for the preview?
well, any change of parameter in the dialog that the application
takes into account for its transformation.

Foremost: printable page area, which could also be changed
as a side effect of changing N-up (I do not expect the app to do the
scaling down and placing of more pages on a side, just to get (maybe)
a slightly different printable area).

Then there is orientation.
And scale to fit (see below).

> n       n-up
> n       duplex
> n       booking (book layout)
> n       watermarks
> n       color-to-bw


none of the above would _directly_ trigger a re-transformation
(although b+w optimisation could may be covered by apps like scribus).
I would be most interested in any other parameters I oversaw
or misjudged.

on top of this is every parameter that the application places
in the print dialog (under the application tag), it is only logical
that these application parameters directly control the transformation.

a simple example of an application parameter is a web browser
including the checkbox "Print headers and footers" in the
print dialog. toggling this should immediately reformat the
print, resulting even in more/less pages to print.

> (An interesting case is page size (or page orientation) when the =20
> user selects =93scale-to-fit=94; so that the print dialog over rides =20=

> these two options by scaling the original print content from the =20
> applications to fit the new pages size/orientation.  However, the =20
> print content is not recreated by the application.)

This reminded me to add this one above. scale to fit relates to
content, of which the application has the domain knowledge.

>  I don=92t believe that the actually printer driver would be needed to =
=20
> render the preview at the level needed for the preview; so this =20
> keeps generation of the preview within the confines of the print =20
> dialog.

I agree.

> Now, should we consider the design where the print dialog only =20
> receives the print job and no preview image (less burden on the =20
> application); then it is the responsibility of the print dialog to =20
> =93render=94 the preview. Examples
>
> --- If the print dialog receives an image then the Print Dialog =20
> under-samples/sub-samples or uses a GDI command to create the =20
> preview (size) image.
> --- If the print dialog receives PS/PDF then the Print Dialog calls =20=

> Ghostscript to a DPI/resolution value needed for the preview.  I =20
> assume this processing is within an acceptable load.
> --- If the print dialog receives text; use Ghostscript or =93printing=94=
 =20
> to off screen memory to create an image representation.

this can only be a fall-back for a most uncooperative application,
that I cannot see placing its own parameters in the dialog.

so good enough for rock 'n' roll, but it would not fulfil the
minimal usability goals for the printing dialog.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



