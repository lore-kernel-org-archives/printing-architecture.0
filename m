Message-ID: <4913350B.9000202@gmail.com>
Date: Thu, 06 Nov 2008 19:18:51 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A90@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A90@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Outline of OpenPrinting Architecture
 Team	Next Steps
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

Petrie, Glen wrote:
>  
> 
> The CPD PPD extensions:
> 
> Background:
> 
> The API was began as GSoC and continues by the student.

The PPD extensions were not done by a GSoC student. I have created them.

> 
> Activity: (by the OpenPrinting Architecture Team)
> 
> 1. Align the basic printing options/attributes/values with the existing 
> JTAPI specification.
> 

Appropriate part will be added to the PPD extensions.

> 2. Create a formal OpenPrinting Document/Specification for the CPD PPD 
> extensions.
> 
> 3. Create several – 10+ example PPD files illustrating ALL of the CPD 
> PPD extensions.
> 

Good idea.

> 4. If not currently available; provide a prototype using the CPD 
> enhanced PPD file(s).
> 
>  
> 
>     o Creation of a key to sign downloadable printer driver packages
> 
> I believe that Till Kamppeter should address this.  Till, how can the 
> Architecture Team help?
>

I have renamed all downloadable driver packages on the server now so 
that they do not conflict with files in distros, now these drivers can 
coexist with the same driver provided by a distro package.

I have posted this to the discussion on the lsb-discuss and webdevel 
lists and reminded the participants that we have to finish the key issue.

>  
> 
>     o Study Out of Box User Experience
> 
> Printing for Linux has grown a lot over the last several years but is 
> still considered to being done/setup by “some one in the know”.
> 
> Background:
> 
> This activity is an evaluation or a ???? of the User experience of 
> literally taking a printer out-of-the-box and what it take to create 
> their first print page.
> 

Yes, we want to find out whether the user can really easily set up a 
printer and print on it from all standard applications.

> Activity: (by the OpenPrinting Architecture Team)
> 
> I am not quite sure what the Architecture Team can do to help this 
> activity directly.  Actually, a central entity or the printer vendors 
> need to conduct these tests.  The Architecture Team could define what 
> testing environment and needs to done, and, more importantly, what 
> feedback information is needed by the testing entity so that the Linux 
> printing experience can be improved/fixed.
> 

There must be tests on the printers, here we nned to work together with 
printer vendors.

There must be also tests on apps, whether they show the correct printing 
dialog, show all print queues, all options, whether they obey page size 
(and other default settings) of the user and of the system, whether they 
output correct and clean PostScript and whether (most important) they 
are switchi9ng from PostScript to PDF as output data format. If this is 
not the case we should report bugs, like these ones:

https://bugzilla.mozilla.org/show_bug.cgi?id=459748
https://bugzilla.mozilla.org/show_bug.cgi?id=462872

>     o Embedding of printing metadata/job ticket in PDF for PDF printing
> 
> PDF document format is (becoming) the document exchange format of choice 
> today. The format contains detailed data that allows it be displayed by 
> any display entity independent of OS.  PDF already supports JDF job 
> tickets…………………..
> 
>  
> 
> Till you elaborate on what you want to do here.  Do you want to put the 
> CPD “print-intent” content in a PDF file?
>

I thought about the embedding of JDF job tickets so that printing also 
works through channels where option settings and other metadata cannot 
be transmitted with things like IPP attributes, for example also SMB or 
so. For this we would need to implement JTAPI.

>  
> 
>     o Color Management on the OS/Printing System level
> 
> This is complex issues to be performed by knowledgeable personnel.
> 
> Background:
> 
> I am assuming a generic background here; much the same as was the 
> situation with PPD files. Thus, the issues is managing ICC profiles or 
> the equivalent.
> 
> Activity: (by the OpenPrinting Architecture Team)
> 
> 1. If Color Management content extends beyond ICC profile; the Color 
> Management content needs to be defined.
> 
> 2. Using the same approach as was used for PPD, a directory location and 
> structure would be defined for the Color Management content.
> 

Yes, we need a fixed place for the CM content.

For the workflow we need to discuss with the CM experts.

    Till

