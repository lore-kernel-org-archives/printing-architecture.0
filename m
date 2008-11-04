Message-ID: <490F9721.4030507@gmail.com>
Date: Tue, 04 Nov 2008 01:28:17 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A6E@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A6E@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Some Comments /Feedback on CPD
	Specification
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Glen, thank you for the long list of suggestions on how to improve the 
specs for the CPD.

The UI specifications

http://wiki.openusability.org/printing/index.php/Specification

are not hosted by OpenPrinting nor by the Linux Foundation. So I do not 
have write access to them.

Who can improve or fix them are only the OpenUsability people.

Peter, can you have a look at Glen Petrie's suggestions for improving 
your specifications of the UI of the Common Printing Dialog? As far as 
it looks for me this is not a request for changing the UI in any way, 
but a request for a better formulation of the specs.

Glen talks also about the option names in your examples, but note that 
in the real dialog these strings do not come from you. They are 
controlled by the PPDs and if we want to take control on them we must 
add additional sections to PPD extension specs.

    Till

Petrie, Glen wrote:
>    1.   The specification needs a Terms and Acronyms Section
>          1. Printer Zone – I think this mean “Printer Identifier” Zone
>          2. Quick Preset Zone
>          3. Preview Zone
>          4. Control Zone
>          5. Configuration Matrix Zone
>          6. Printing Parameter Zone
>    2. Add a conformance section: SHALL (NOT), WILL (NOT), MAY (NOT)
>    3. When a conformance term is being used in the specification it
>       should be capitalized.
>    4. The Overview section needs to provide an overview of CPD with
>       objectives and goals
>    5. Internationalization section should be move the a separate section
>       later in the specification.
>    6. Diagram in “dialog structure” section don’t match “Dialog Zones”
>       section; specifically, ‘level 3’ diagram.   Since there is no
>       value to both set of diagrams and dual labels (Column 1 == ‘Quick
>       Preset Zone”  I would suggest removing the “dialog structure” and
>       merge any dimensional data into the “Dialog Zones” section.
>    7. Describing a ‘Zone’ occupies a specific column adds no value to
>       description; however, add the dimensional info from the ‘dialog
>       structure’ section would.  
>    8. Is there any value in having a ‘level 3’ and ‘expanded level 3’. 
>       The can be stated the ‘expanded printing parameter zone’ will be
>       increased (from 0 height) to accommodate added parameters.
>    9. The next is ‘zone content’, but I notice there are fixed title
>       fields, drop down, etc.;  are these fields and their attributes
>       determined the CPD itself or does the application or PPD file
>       extensions have any control over these fields.   Are any
>       attributes about the controllable by the application or PPD
>       extensions? Can’t really think why there might be any reason for a
>       application level control of attributes.
>          1. However, I don’t remember seeing in the CPDAPI “Get”
>             information on the preview area.   This could be important
>             to some application on how they render reduced resolution
>             preview images.  I am assuming the current version does not
>             have magnification of the preview;  but that is a logical
>             extension and want to be considered in the specification at
>             this time.
> 
>  
> 
> In general I have a concern with the terms and phrases used in the 
> dialog.   They do not follow existing conventions which I have found 
> with most user causes confusion and prompts help calls.
> 
>  
> 
>   10. I notice on the ‘level-3’ example phrases like “For handing out’
>       instead of the traditional phrase “Handouts”.   Can the
>       OpenPrinting Architecture Team review these labels to ensure
>       coherence with existing printing standards and conventions?   For
>       example what does “Handling pages” means or imply?   “Best ever”
>       is a non-conventional term for either “Best” or “Photo” quality.
>        “On both sides of the paper” is called ‘duplex’.  If we create
>       new words, terms and phrases for Linux printing is will be just
>       another reason for people to not use Linux and if the goal is go
>       beyond Linux, it must use words, terms and phrases that people are
>       used too – this comment comes from dealing with real user when
>       even small changes are made.
>   11. The label “Default” is confusing; it should say “Pre-set for” or
>       just “Pre-set”.  If I read it as currently then it say “Default
>       Document, Crisp”; but “Pre-set for Document, crisp” in
>       understandable by users.
> 
>  
> 
>   12. Can the “Control Printing Aspects” rotating arrow just be check
>       box”?  I also like a simpler label of “Printing Controls” or
>       “Printing Options”.
>          1. Is there a way to “Show” the dialog
> 
>  
> 
>  
> 
> This discussion was further elaborated in the Steering Committee meeting 
> and it was agreed to start an architecture to expand on this.

