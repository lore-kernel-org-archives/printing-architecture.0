Message-ID: <49F08830.70207@gmail.com>
Date: Thu, 23 Apr 2009 17:24:32 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net><3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de><ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net><ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net><49EF7E44.6040700@gmail.com><B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com><49EF8444.7010304@gmail.com>	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
	<49EF9E05.8070303@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D75@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379D75@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-summit]
 Print	Dialog:PreviewProcessing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>

[ Re-posting to the lists ]

Petrie, Glen wrote:
> Till,
> 
> What applications do you consider Not-Page Oriented.  I am having a hard thinking of an application that does not render it content to a paper-size (page-size).   
>

I mean applications where the user is not already working on the actual 
page size. These are for example e-mail clients, browsers, plain text 
editors, where text is simply a sequence of data and flowing somehow 
into the view area (screen, paper, ...). So for printing the document 
visible on the screen or for changing the paper size the text has to be 
flown again into the new paper size. Also photo viewers/editors are not 
page oriented. Photos are bitmaps of XxY pixels without defined absolute 
size. they have to get scaled into the requested ensemble of paper size, 
margins, and resolution.

For these applications a "document paper size" does not exist, so in 
contrary to page-oriented applications (OpenOffice.org, Scribus, PDF 
viewer, ...) "Document paper size(s)" should not be added to the paper 
size option (or grayed out). The page size has to be selected in the 
printing dialog (and the default taken from CUPS) and the app has to 
regenerate the preview data if the page size and/or the margins are 
changed in the printing dialog.

In the case of the page-oriented applications the preview does not need 
to be regenrated by the app when the page size or another printer or 
printing-system option is changed.

In any case the app needs to deliver a regenerated preview if an 
application-specific option changes, as for these options the 
application knows best what happens.

> Web pages must format the print-content before calling the print dialog.  If I look at Firefox in Ubuntu it supports page-set within the application; so it would format content before calling the print dialog.  The text editor in Ubuntu has page-set.  
>

Here the print content needs to be re-formatted if the user changes the 
page size.

> I don't think of the print dialog formatting generic print content like text.  I don't think of the application involved in a bi-directional communication with the print dialog.
>

Yes, the print dialog can only do things like scaling, rotating, N-up, 
color transformation, not re-flowing text for example. In such a case 
the app has to regenerate the preview.


> Can you help me with some specific examples.
> 

As I said, page size change when the app ius a browser or a plain text 
editor for example.

>> The application has to do the first step, creating a PDF from the
>> document, to have an app-independent format which the dialog
>> understands. To the PDF transformations can get applied.
> 
> I don't completely understand this.  Why do applications have to create PDF.  If the application is a photo application, it can send print content that is just an image.  If the application is a text application is can sent text (which has been laid out in the page-size required).

Not necessarily PDF but a format which the printer dialog understands. 
For the preview (at least a non-scalable one as Peter considers as 
sufficient) one could perhaps even take only a bitmap format like PNG. I 
was simply thinking in the format which the app usually sends to CUPS 
(PostScript or PDF) and also that we are now going towards PDF as job 
format. Theoretically one could let the dialog accept anything what CUPS 
accepts and let the "cupsfilter" command convert it to a format used by 
the preview (PDF or PNG), but this is probably an additional slowing 
factor. So the easiest is to standardize on a format, like PDF. One 
could let the app generate low-quality PDF for previews and high-quality 
PDF for printing.

> 
> Or are you saying that all drivers must accept/process PDF.
> 

Drivers only need to accept a format which CUPS can generate from the 
input data. Usually they accept PostScript and PDF (Ghostscript-based 
drivers) or CUPS Raster (CUPS Raster drivers). CUPS converts PostScript 
and PDF to the driver's input format.

> Or since Linux does not have a single gdi, that you are simply making all print content be in a single format.
> 

This is the idea. It is easier for the dialog and faster to process if 
it gets only one data format. PDF is the most universal one. Also note 
that there can be daemon-less CUPS clients, so CUPS is not always 
available for converting incoming documents on the client.

> I confused.
> 
> If I have a photo app that wants to print an image. The steps are
> 
> 1. app creates a pdf instantiation of the image
> 2. send pdf to print dialog
> 3. send pdf to CUPS
> 4. CUPS sends pdf to GhostScript to render
> 5. Ghostscript creates an image
> 6. Image is sent to a printer driver 
> 

The image created in 5. is not the same format as the image coming from 
the app. The app sends JPG or PNG, in 5. PCL, ESC/P 2, or CUPS Raster is 
created.

> Versus  
> 1. app sends image to print dialog
> 2. print dialog display image (as preview)
> 3. send image to CUPS
> 4. Image sent to print driver.
> 

So if all apps send images this would make sense, but apps like 
OpenOffice.org or Firefox would preferably send PDF. So the dialog would 
get much more complex if we make it capable of all formats which CUPS 
can convert. So standardizing on one format simplifies the 
implementation of the dialog a lot.

> My point is that not all drivers support PDF.  I think rendering to PDF and then de-rendering by Ghostscript may produce artifacts.
> 
> What if we define acceptable print formats: sRGB-Image, simple text, formatted text, PS, PDF, ???, ???, html-print, ????, ????
>

Up to now all apps have produced PostScript for print jobs. This was not 
perfect as PostScript gave to many liberties to application programmers 
(it is a programming language) which made page management (N-up, 
selected pages, ...) break very often. So we agreed on PDF to solve this 
problem. In general, we have one standard print job format. CUPS is 
converting everything to this standard format (currently PostScript, 
with the extra filters from OP Japan PDF), running the page management 
(pstops or pdftopdf filter), and passing the job ont to Ghostscript. 
Ghostscript understands both PostScript and PDF, so it does not matter 
which format arrives here.

You are now suggesting that the apps can send a wide range of formats 
(ideally the full range of formats which the stock CUPS package 
accepts). This would change the internal (not UI) design of the dialog 
(and the apps) vastly. Apps like text editors or image viewers could 
then internally "save into the print queue" and so delegate all the 
formatting for printing the file to the dialog. The dialog would need to 
use CUPS filters to find out how the printout will look like (or even 
reimplement them and then the maintainer has to hunt after each little 
change in CUPS).

It would be much easier to implement and much more reliable if the 
dialog supports one standardized format like PDF.

    Till

