Message-ID: <49EF9E05.8070303@gmail.com>
Date: Thu, 23 Apr 2009 00:45:25 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net><3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de><ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net><ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net><49EF7E44.6040700@gmail.com><B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com><49EF8444.7010304@gmail.com>	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

Petrie, Glen wrote:
> So, is the follow summary correct?  Please correct if I did not capture 
> the mail thread discussion correctly.
> 
> Applications will send the (source) paper-size as part of the print job 
> (job-ticket???) and the Print Dialog will set the (destination) 
> paper-size that the one defined in the print job.
>

Jobs from page-oriented applications will get sent with page sizes for 
each page, jobs from other apps will be sent without page size.

Default destination size is using the sizes of the document pages, in 
case of complex documents the page size can change during the job. If 
the application does not supply a page size, the default destination 
page size is the CUPS default.

> n       The Application can not disable the (destination) paper-size 
> setting in the print dialog
>

Yes, the user can decide to keep the original sizes of each page or he 
can choose one of the page sizes defined in the PPD file.

> n       The User can change the print (destination) paper-size
> 
> o        Default action: The print content will be scaled to fit the 
> specified destination paper-size on a page-to-page basis.
> 

This happens if the user chooses a size, if he stays with "Original page 
size(s)" the source page sizes are used as destination sizes and the 
pages are printed in original size.

> §         In the event of complex documents, all pages will be scaled to 
> fit on a page-by-page basis.
> 

As above, only if the user chooses a page size. Otherwise all pages are 
printed in original size and the printer switches trays is the pages 
have different sizes.

> o        Options: The dialog may provide optional transforms for going 
> from the source paper-size to the destination paper-size.
> 
> §         In the event of complex documents, all pages will be 
> transformed the same way on a page-by-page basis.
> 

Yes, one could also make available "Shrink to fit" (scale pages which 
are too big and center pages which are too small for the destination 
page size) and "Crop to fit" (Keep page in original size and crop if it 
is bigger than the destination page size, try to crop only from the 
white margins if possible).

>  
> 
> Question: (Always one more question) – Should a warning message be 
> displayed when the user is changing the source paper-size to a different 
> destination paper-size?
> 

No, "Page Size" option should have "Original page size(s)" as first 
entry and default (for page-oriented apps).

>  
> 
> ==================
> 
> n       Although you don’t normally see margin settings in print dialog; 
> if they are in the print dialog, I think we should use the same 
> guideline outlined above.
>

Yes, we should do so.

>  
> 
> Finally, if the above guideline is ok, then does it imply that the print 
> dialog does not need to ask the application to re-render the preview?
> 

For page-oriented apps re-rendering is not needed, but for apps like 
browsers or plain text editors the app has to re-render on changes of 
page size or margins.

>  
> 
> ==================
> 
> I would like to discuss more about whether the Application renders the 
> preview or the print dialog does it.
> 
>  

The application generates a (low quality, single pages) PDF and sends it 
to the print dialog. The preview widget is a PDF viewer. The dialog can 
do transformations on this PDF to show color management/grayscale, N-up, ...

> 
> Some considersations:
> 
> n       Actually, one reason to have the print dialog render is to the 
> display an accurate depiction of what will be printed versus previewing 
> what the application expects will be printed.
> 

The application has to do the first step, creating a PDF from the 
document, to have an app-independent format which the dialog 
understands. To the PDF transformations can get applied.

> n       I believe moving rendering responsibility to the print dialog 
> puts the rendering in a common place and removes the burden from the 
> application.
> 

Re-rendering by the app is still needed for tthe apps which are not 
page-oriented, like browsers or mailers.

> n       Removes bi-directional communication between the application and 
> print dialog; that is, printing is handed off operation to print dialog.
> 
> n       The print dialog may be used to open spooled print job to 
> provide a preview even when the application has been closed.
> 

For re-printing jobs from the job history, we have to work as our app 
would be a PDF viewer (page-oriented!) sending us the PDF which we are 
taking from the history. This means when re-printing an e-mail from the 
job history on a different paper size we can only do scale to fit and 
not reflowing the e-mail text into the new paper size.

    Till
