Message-ID: <4A57B3E0.3030805@gmail.com>
Date: Fri, 10 Jul 2009 23:34:24 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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
> Section 1:
> 
> A: Media Type (shown in Section 5) needs to be in this section since 
> media-type and media-size (not paper-size) are connected.  For example, 
> I want to print on a CD; it is not paper and the size is defined by 
> media-type.
> 

You're right, should be "Media Size", "Media Type", ... But I do not 
really know whether this can be fioxed in the CPD. The UI strings of the 
options usually come from the PPD file and not from the printing dialog. 
But to make the interface more "common" one could think about certain 
standard options and choices where the PPD's wording gets overridden and 
the CPD provides the wording, with the big bunch of translations which 
you are used to in KDE and GNOME.

>  
> 
> B: The “paper size” has no “default setting”; the application sends the 
> CPD the size of the media.  Setting the media-size is initially done in 
> the application in the “Page Setup”.  The CPD is not doing setup 
> functions.  The user may override the media-size; even the orientation 
> received from the application in the CPD; in which case the “fit policy” 
> would be invoked.
>

Probably we should add a choice "Document's Media Size" to the "Media 
Size" (machine-readable name "PageSize") option. This choice should be 
selected by default and then each page is sent with the size set by the 
application and a printer containing all needed paper sizes switches the 
trays automatically to have each page printed on the correct paper size. 
If one of the concrete mediua sizes (like "A4") is chosen, the pages are 
  all converted to print on the requested size, where the user can 
select with another option whether to scale or to crop.

If the document of an application does not have a well-defined paper 
size, like the images in a photo viewer or the text files in a plain 
text editor, the "Media Size" option should not have the "Document's 
Media Size" choice and the current CUPS default setting for the page 
size should be selected as default. The image or text gets fit into that 
page size by application-provided options, for example fit into page, 
fixed size, n photos per sheet, poster of NxM inches, going over several 
sheets to stick together.

> 
> C: The word “borders” I believe refers to “margins”.  It is not the 
> function of the CPD to set the margins.  The ability to set margin to a 
> specific value or “borderless” is done within the application in the 
> “Page Setup”.  The “Page Setup” within the application would have 
> retrieved the currently selected printer’s capabilities to know the 
> printer’s min/max margin and if the printer supports “borderless” printing.
> 

This depends again on the application. "Layouting" apps like 
OpenOffice.org Writer or Scribus should do the media size and margins in 
the page setup ("Format"-> "Page" or so). Photo viewers, plain text 
editors or browsers  better do this in the printing dialog.

>  
> 
> D: I (nor I suspect most users) understand the meaning of the values for 
> the “fit” option; specifically, what does “to paper” or “shrink only” 
> actually mean.  What will they actually do?  These types of tags I lump 
> into a classification I call “The Buttons, Icons, Controls and Labels of 
> Confusion (BICLC)”.   The term typically used for “fit policy”, and 
> defined in the JTAPI specification, are Clip-to-Page and 
> (Scale)Fit-to-Page.  Also, there can not be a value of “none”.  If the 
> content does not fit the media-size, something has to be done; either 
> clip or fit.
> 

Once we should use good names, or the common standard names (as Ira 
suggests in another posting to this thread) perhaps accompanied with icons.

>  
> 
>  E: Another “option” to consider for this section is an advanced button. 
>  The key to printing a specific print-quality (actually, better stated 
> as a specific print-intent) is to know more about the media being 
> printed to.   That is, for example using paper; what is brightness, the 
> weight, the finish (rough, smooth, polished), color, etc.  From these 
> facts, the printer driver can tune its color-to-ink processing and other 
> factors to achieve the best output for the user print intent.  
> Typically, a user can easily find this information on the cover of the 
> media being used in the printer.  Note, I have not seen this kind of 
> processing done in color-management processing software.
> 
>  
> 
> ================================================================
> 
> Section 2:
> 
> A: The label “page(s)” is better stated as “page(s) to print”.
> 
>  
> 
> B: Above the current “page(s)” field there should be a button for 
> printing the “current page”.  The current page (number) is provided to 
> the CPD from the application.   Or the application is requested to 
> provide only the “current page”.
> 
>  
> 
> C: Above the current “page(s)” field there should be a button for 
> printing the “selection”.  The application is requested to provide only 
> the “selected content”.
> 
>  
> 
> D: Above the current “page(s)” field there should be a button for 
> printing the “Clipboard”.  The content of the clipboard is printed.
> 
>  
> 
> E: Any combination of B:/C:/D:/page(s) should be possible.  For example, 
> I want to print the clipboard, the currently selected content and page 3 
> of the content.
> 

Printing the clipboard and pages 1-3, and you get nicely a job 
containing data from 2 apps.

>  
> 
> F: The label “pages per side” will be confused with “sides per page”. 
>   A more generally accept terms are “Print Layout
>  or “Page Layout” or just “Layout” and the options are 1 page, 2, pages, 
> 4 pages, etc.  Default is “1 page”
> 

What about "Pages per sheet side"?

>  
> 
> G: For the values of “pages per side”, the typical values are 1, 2, 3, 
> 4, 6, 8, 9. Beyond 9, it is really hard to read the output. Printing 25 
> pages per side seem silly.  If the intent is to print “thumbnails” then 
> that should be a value.
>

N-up is implemented by the pstops and pdftopdf CUPS filters, we can only 
offer the choices here which the filters can do. And there I think the 
max was 16.

>  
> 
> H: If you allow “pages per side”, there should be an option for 
> “presentation direction”.   Again, the OpenPrinting JTAPI specification 
> provides the values for this option.
>

CUPS has this option. The dialog should support it.

>  
> 
> I: I never heard of the option called “poster” in a print dialog and if 
> I understand it correctly, it is how to print a large content-page on 
> many printed-pages.  This is not an option for the CPD.  Again, this a 
> setup option and should be controlled by the application.   This is not 
> a simple process (I know from experience).   For example, does each page 
> have a set amount of content overlay for piecing the pages together or 
> are alignment-marks used.  For non-borderless media, are cut-line 
> printed.   So forth, and so forth.
> 

This one would be useful, but we would need to add this functionality to 
the pdftopdf CUPS filter.

>  
> 
> J: The label “both sides”, again, is strange.  “sides” would be better 
> or use the word “duplex”.  I believe most people today are used to the 
> term duplex.
> 
>  
> 
> K: I believe “page turning” refers to “binding edge” or just “binding”, 
> which has values of top, left, right.   Introducing new terminology to 
> print is just confusing.
> 
>  
> 
> L: “page turning” has no “off” state.  When “sides” is set to one, then 
> “page-turning” is deactivated.  When “sides” is set to two, then the 
> default for “page turning” has to be some real value (top, left, or 
> right) but not “off”.
> 
>  
> 
> M: It would be nice to have a “binding type” option (again, see JTAPI 
> specification for values) and to overlay the binding on the print-page. 
>  For example, a 3-hole punch would print the location of the holes on 
> the final printed page.  At a minimum, it needs to be in the preview.
> 
>  
> 
> N: One really nice addition would be to show the media size values 
> (width and height; both in inch and mm).  Not every one knows the 
> dimensions of all the various paper sizes.
> 

This would be a really good addition.

>  
> 
> ================================================================
> 
> Section 3:
> 
>  
> 
> A: Sorry, but “resolution” is a numerical specification.  The correct 
> label should be “print quality” or just “quality”.    Please look at the 
> JTAPI Specification.  Also note, that many debates have been done in the 
> printing community on how to specify quality.  The JTAPI specification 
> values are those agreed upon by the community.  Please do not invent new 
> values that have no concrete meaning and, thus, are left open to 
> interpretation by all entities along the print chain.   
> 
>  
> 
> B: Sorry, but “color settings” are not related to “text and photo”. The 
> correct label should be “print content” or just “content”.  You could 
> even call this “print intent” or just “intent”.  Please look at the 
> JTAPI Specification.  Also note, that many debates have been done in the 
> printing community on how to specify content.  The JTAPI specification 
> values are those agreed upon by the community.  Please do not invent new 
> values that have no concrete meaning and, thus, are left open to 
> interpretation by all entities along the print chain.
> 
>  
> 
> ================================================================
> 
> Section 4:
> 
>  
> 
> A:  I would add the following options:
> 
>     A1: For any, add orientation.  (many watermarks are placed at 45 
> degrees)
> 
>     A2: For text , add color (unless that will be in the “format text” 
> option)
> 
>     A3: For any, add “placement” label with values like “tile, 
> scale-to-fit, top, bottom”.
> 
>  
> 
> ================================================================
> 
> Section 5:
> 
>  
> 
> A:  Please change the label “which way-up” (not even good English). 
>   The JTAPI variable is “output orientation”. Please look at the JTAPI 
> Specification.
> 
>  
> 
> B. “output order” option is missing.  Please look at the JTAPI 
> Specification.
> 
>  
> 
> C: “output bin” option is missing.  Please look at the JTAPI Specification.
> 
>  
> 
> ==================
> 
> Other
> 
> A: There needs to be an option for a “cover sheet”
>
>  
> 
> B: A new issue arising in the print world is that of security.  For 
> example, one the simplest security features for networked printers is 
> “print only when at printer”.  The user must enter a code to start the 
> print process.  This needs to be set in the CPD.   I know this out of 
> scope right now but since we are in the design/conception phase of this 
> project; security needs to be addressed.
>

The PPDs contain these options. With the custom-option-aware CPD, this 
functionality will get accessible.


>  
> 
> C: I really don’t think that the preview is providing sufficient 
> information to the user.  For example, for n-up, the preview should show 
> the n-up.  For a binding edge, there should be a graphical indication of 
> which edge.   For two-sided printing, the preview should show a turned 
> corner (the corner changes depending if the page being displayed is the 
> front or back page).  And so forth and so forth.

I think so, too. Peter also suggest to show duplex and binding by 
animating the preview appropriately when turning pages.

    Till
