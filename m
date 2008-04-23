Message-ID: <480F68C5.4070508@gmail.com>
Date: Wed, 23 Apr 2008 18:50:13 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3819@eitc220.eitc.epson.com>
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3819@eitc220.eitc.epson.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] LF Collaboration Summit Open Printing
 Minutes from Glen Petrie
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
> Action Items from desktop group:
>    1. Define a specification for machine readable print setting at the
>       doc, app and desktop level.

      Will be part of Lars' GSoC work on the application/printing dialog
      interface

>    2. Define a set of simple top level state/status indicators for top
>       level of the Common Print Dialog.

      We will tell Lars and Alex Wauck (implementation of the dialog
      itself in the GSoC) about taking into account this,

> 9:15 am Introductions (Till, George, Glen, Fumio,  David)
> 
> ============
> 
> Status Report from Till
> 
> --- Till discussion of GSOC
> 
>       --- 8 students for LF  (5 for Open Printing)
> 
>            ---- 1-2:  Gnome and KDE for Print Dialog
> 
>            ---- 1:  JTAPI Implementation
> 
>            ---- 1: PAPI support
> 
>            ---- 1:  Add modules to ????
> 
>            ---- 1:  Modularization of GhostScript
> 
> --- Lars is working on Foomatic RIP in C (currently in PERL) to allow 
> connectivity to libraries and to improve performance.  Also, Processing 
> PDF for integration into CUPS
> 
> -- (CUPS computes a cost factor of the best way to print the job.)
> 

      This way one can simply add filters and conversion rules to an
      installed CUPS and a PDF workflow will be preferably done.

> -- It will be possible to have more than one command line to support 
> PDF/PS.

      This way the new foomatic-rip will not require a PDF workflow.

> -- Foomatic RIP is used for non-PDF/PS printers but is also 
> used to add print-time information (who, time, date, security)
> 

     As currently done for Ricoh PostScript printers

> -- CUPS is not supporting Custom-Options
> 

    CUPS in general supports them (if anything special is needed in the
    CUPS daemon), but the web interface of CUPS (the only GUI which comes
    with CUPS) does not support them.

    Lars Uebernickel has done a patch for the web interface of CUPS to
    correct this. See http://www.cups.org/str.php?L2807

    He needed one night for that.

> =========
> 
> - The common printing dialog is the desktop level with at interface to 
> applications.  Vendor options are put in the PPD extensions.
> 
> -- The Common Print Dialog is dependent upon CUPS and vendor options are 
> done from PPD extension (via CUPS custom-options) or by 
> APDialogExtensions API.
> 

- CUPS custom options
- Special keywords to assign tags to the options
- Marking one option to represent the quick selection buttons of the
   standard view of the dialog
- UU-encoded icons for options and choices

> -- George concern how the applications will invoke the common print 
> dialog, he feels this should be done first before worrying about the 
> actual dialog looks.
>

There will be one GSoC student concentrated on modularizing the printing 
dialog, Lars Uebernickel. He will make an interface to make the dialog 
exchangeable, so that the desktop can provide one and the same dialog 
for all applications. This dialog does not need to be Peter Sikking's 
design necessarily, it can also be the desktop's native dialog for example.

> --- Glen is worried of extensibility of the dialog for manufacture.
>

Manufacturer extensions cannot be done by means of executable code, as 
printer drivers run on the server and server and client can be different 
architectures. Manufacturer extensions can only be done by PPD options, 
the custom options of CUPS allow extended data formats.

> -- Should application be able to restrict options?
>

This is a good idea, will pass it on to the GSoC students who will work 
on the dialog.

> --- Next Steps
> 
>    --- Define the App – to – common dialog interface
>

This will be Lars' task in the Google Summer of Code

>         --- Needs to be bi-dir
> 

- Dialog reports back the settings of application-specific options, so 
that the app can re-generate the PDF for the dialog to update preview.

- Dialog reports back all option settings when user clicks "Print", so 
that app can save them in the document.

>         --- Application to able constraint option
> 

- For example if a specialized app can only produce a few given page sizes.

>         --- Application to add their own options
> 

- Like "Print with Background Graphics" in a browser. See also the 
current print dialog of KDE.

>         --- Printer Manufacture add their own options
> 

- PPD options.

>    --- Define print manufacture to common dialog interface
> 
>        --- Done by PPD extensions – Till has a preliminary set of options
> 

- CUPS custom options
- Special keywords to assign tags to the options
- Marking one option to represent the quick selection buttons of the
   standard view of the dialog
- UU-encoded icons for options and choices

>             ---  This is only mechanism to get extensions by adding new 
> data types.
> 
>        --- Future will have a mechanism for vendors to have binaries.   
> The discussion was to extend the PPD to support this.
 >
> --- A good summer project is support CUPS Web interface.
>

To small for a Google Summer of Code project. Lars Uebernickel is 
already on it. See

http://www.cups.org/str.php?L2807

> -- Foomatic extensions are different that CUPS but can use both.
> 
> GSOC projects are now
> 
>    1. Print dialog
>          1. GUI dialog
>          2. CUPS Extension /Web Interface  -- Lars [Till]
>          3. Application Interface (API)Demonstration
>    2. PAPI
>    3. JTAPI – Dropped
>    4. PDF Work : PDF to IJS,  Text to PDF
>

Update on GSoC projects:

1. Common Printing Dialog: Implementation of OpenUsability design
2. Common Printing Dialog: App/dialog interface
3. Implementation of PAPI in CUPS
4. utf8topdf and pdftoijs CUPS filters for PDF workflow
5. Web app for triaging user contributions to the OpenPrinting database

> 
> ============
> 
>  
> 
> Slides from Japan
> 
> --- Version 1.0 of OPVP available for review
> 
> ---  Implementation and driver testing completed   (NEC and Canon 
> Drivers have been tested)
> 
> (What license is OPVP and the driver from manufactures.)
> 
>  
> 
> ============
> 
>  
> 
> 11:50 am   Printing on the Desktop
>

These issues will be forwarded to the two students working on the Common 
Printing Dialog in the GSoC.

>  
> 
> Subject: Common Printing Dialog (CPD)
> 
> -- There should only be one dialog for all applications
> 
> -- The CPD should be part of the Gnome/KDE/Other? Desktops
> 
> -- Called using DBUS <--- Is this the best interface to applications.
> 
>  
> 
> = Like in Windows, there was an expressed desire for remembering print 
> setting at the desktop level, the application level and the document level.
> 

Will be no big deal: Dialog reports back option settings as simple 
key/value pairs to app. App keeps them as text and adds them to document 
file on saving. When dialog is opened again, app sends saved options to 
dialog.

> -- Thus the desktop group is looking for a machine readable definition 
> (specification) of print settings.
> 

Simply use key-value pairs:

PageSize=A4
Resolution=1200dpi
...

>  
> 
> = Want the CPD to have a state/status tab.
> 
> -- After some discussion, what the desktop people also wanted was some 
> very simple indicators in the main CPD window showing the “status” 
> (“state”, “condition”, “readiness”, “busyness”) of the printer.   That 
> is, they want to know that the printer is really ready/available for 
> printing.  Is the printer out of ink, is the print out of paper, is the 
> printer busy, is the printer online.   The idea was that the indicators 
> are simple colored boxes.  For example, a box for ink-level is green if 
> ink/toner level is ok, blue if ink/toner low, red if ink/toner out.  
> Same for the other status items.  The user could go to the state/status 
> tab if they need more information.
> 

Dialog could poll status from CUPS and show it somewhere.

>  
> 
> = The desktop group would like to see the CPD be a plug-in solution 
> versus a separate process.
> 

Problems of plug-in: Dialog and app is one process, dialog and app 
cannot be of arbitrary licenses then, crash of dialog would crash app.

>  
> 
> = The CPD should not define it own basic display parameters such as 
> font, color, etc.  These should be inherited from the Desktop the CPD is 
> running on.

    Till

