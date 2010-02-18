Message-ID: <4B7D929B.803@gmail.com>
Date: Thu, 18 Feb 2010 20:18:51 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F024235@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F024235@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org

Petrie, Glen wrote:
> As the Common Print Dialog (CPD) continues to mature, I felt is was time 
> to get feedback from Epson internal.  Therefore, I sent an email Epson 
> internally asking interested parties to review the current state of the 
> CPD and to send me any questions, comments or concerns, which I am now 
> forwarding to the open mailing list.
> 
>  
> 
>    1. Does the CPD support Watermarks?
>          1. I remember this being there at some point but it could be
>             confirmed.

Watermark addition is currently only supported by certain printer models 
(mainly PostScript printers). These printers have appropriate options to 
control the watermarks in their PPD files. As the CPD is making all PPD 
options available to the user, printing with watermark is possible with 
the CPD.

As the names of watermark options and their choices are not standardized 
(or are their standards somewhere) we cannnot interpret the options and 
know how the watermark comes out on the paper. Therefore the watermarks 
will not appear in the preview of the CPD.

The printing system (CUPS) does not provide watermarks, therefore there 
are no general watermark options for all printers in the CPD. Options 
which CUPS provides will be in the CPD.

>    2. How does the CPD support the connection between borderless print
>       mode and media size/type.
>          1. Not all media sizes and media types are designed to support
>             borderless mode; is there a mechanism to handle this.

The only way the CPD can know that two settings are conflicting (here 
the settings of PageSize and Borderless) are conflict definitions (UI 
constraints) in the PPD. If certain paper sizes do not allow borderless 
printing and appropriate conflict definitions are supplied by the PPD, 
the dialog will warn the user and not allow to print when borderless is 
turned on and an unsuitable paper size is chosen.

>    3. How will the CPD allow vendors to display printer status, toner
>       (ink) levels, job status and support printing maintenance items
>       like nozzle check, nozzle clean and head alignment?
>          1. Is there a vendor zone or pane (panel) for this?

AFAIK this is not foreseen for the printing dialog, as the printing 
dialog gets opened out of an application for sending a print job and 
closes when the job is sent. The above tasks are best done by a separate 
application, like a job viewer or a printer setup tool.

The only of the above tasks which makes sense in the printing dialog is 
to show printer status, either for the selected printer or in the 
drop-down list to choose the printer, at the right of the printer name, 
in parentheses for example. This way a user knows before sending a job 
whether the printer will print the job immediately or not.

Peter, Lars, are we doing a thing like this.

>    4. Does changing the media size in the CPD “reflow” the document or
>       simple scale (perhaps with clip) the document content to the
>       selected media size in the CPD.
>          1. That is, an application (via the user) sets the document
>             page size (say letter) while the CPD (via the user)
>             specifies the print media size of the document page to be
>             A4; in which case, the letter sized content is scaled
>             (maintaining aspect ratio) to A4.
> 

Media size changes are reported back to the application and it is on the 
application what to do. A browser or plain text editor would reflow the 
document, a photo viewer would shrink or enlarge the photo, ...

Peter, Lars, I hope I have described everything correctly, please give 
your comments where needed.

    Till

