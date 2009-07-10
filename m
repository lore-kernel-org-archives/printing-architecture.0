Message-ID: <4A57D539.5060602@gmail.com>
Date: Sat, 11 Jul 2009 01:56:41 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
	<4A57B3E0.3030805@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F4188A8@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F4188A8@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on CPD
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
>>> B: The "paper size" has no "default setting"; the application sends
> the
>>> CPD the size of the media.  Setting the media-size is initially done
> in
>>> the application in the "Page Setup".  The CPD is not doing setup
>>> functions.  The user may override the media-size; even the
> orientation
>>> received from the application in the CPD; in which case the "fit
> policy"
>>> would be invoked.
>>>
>> Probably we should add a choice "Document's Media Size" to the "Media
>> Size" (machine-readable name "PageSize") option. This choice should be
>> selected by default and then each page is sent with the size set by
> the
>> application and a printer containing all needed paper sizes switches
> the
>> trays automatically to have each page printed on the correct paper
> size.
>> If one of the concrete mediua sizes (like "A4") is chosen, the pages
> are
>>   all converted to print on the requested size, where the user can
>> select with another option whether to scale or to crop.
>>
> 
> [gwp] I do not quite understand what you stated.  Are we agreed the
> application will send the media-size information to the CPD; if not,
> that has to be the first item to address.  If the application sends the
> "PageSize" to the CPD; then, the CPD changes the media-size choice to
> the size sent by the application.  Now, if the user wants a different
> size, the use the fit-option to tell how to fit it.
>

In OpenOffice.org Writer, Scribus, ... you produce a document where each 
page has its well-determined size (set with "Format" -> "Page"). Most 
documents have the same size for all pages, but some can have pages of 
different sizes. For example a book can contain a fold-out page with a 
map. So the app sends the document in PDF format to the CPD. The PDF 
contains the paghe size information for each page. If we want to get all 
pages out in the sizes chosen when creating the document, the dialog 
should not impose any page size to the job. Then we would use the choice 
"Document's Media Size" in the PageSize option of the dialog. Then the 
printer will automatically pull A4 for most of the pages and A3 for the 
fold-outs. If our printer has only A4 paper, you would choose the page 
size "A4" in the dialog and "fit to page". This makes the fold-outs 
being shrinked to fit into A4 pages (and rotated by 90 degrees for the 
best fit).

>> If the document of an application does not have a well-defined paper
>> size, like the images in a photo viewer or the text files in a plain
>> text editor, the "Media Size" option should not have the "Document's
>> Media Size" choice and the current CUPS default setting for the page
>> size should be selected as default. The image or text gets fit into
> that
>> page size by application-provided options, for example fit into page,
>> fixed size, n photos per sheet, poster of NxM inches, going over
> several
>> sheets to stick together.
>>
> 
> [gwp] I would like to encourage a single architecture/ design/
> implementation approach.  That is, even the photo-application can send a
> media-size to the CPD.  Now the new question is where does the photo-app
> get the media-size info; they pick on based on location (A4 or Letter);
> from CUPS; from the User-Print-Profile concept I copied you privately
> on.
> 

This is the problem: A photo does not have a well-determined absolute 
size. So a size comes into the picture only if the user wants to print 
the photo. Therefore I think here is best to set the size in the 
printing dialog. Additional parameters could also get set in the 
application-specific options.

> [gwp] I have noted that most photo-apps that provide n photo per sheet
> will request the user the media-size so that the photo-size can do the
> layout correctly.  
> 

Here we would have layouted pages again (like the documents of 
OpenOffice.org Writer), so the PageSize option should have "Document's 
Media Size" added and selected by default.

> [gwp] Can we avoid "poster" in the first version of the CPD?  Use Alex's
> suggestion and find an application to do the function right now.
> Example, spread-sheet app split on cells; photo-app may not care,
> drawing-app do not want to split on a "line" or "split a thick";
> text-app have less options.  So if you just "cut up the large page into
> smaller print pages", the output could be unacceptable.  A very good
> GSoC project for next year.
> 

Yes, let us leave out "Poster" for now and let it really be a project 
for GSoC 2010.

    Till
