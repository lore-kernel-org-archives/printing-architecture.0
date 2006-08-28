Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44F2D9D5.7080606@gmail.com>
Date: Mon, 28 Aug 2006 13:56:05 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200608281158.32769.spillner@kde.org> <44F2D4F1.4010003@easysw.com>
In-Reply-To: <44F2D4F1.4010003@easysw.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Printer dialog generation
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>, printing-summit@freestandards.org
Cc: printing-architecture@lists.freestandards.org

[ Forwarding to the printing-summit list ]

Michael Sweet wrote:
> As Till has already pointed out, this is something we will be
> discussing at the next summit...  I'm actually the person that is
> supposed to be reporting on the available options at the next summit to
> jump start the work in this area - I'll reply in-line to your
> questions...
> 
> Josef Spillner wrote:
>> ...
>> Now there are a few questions to those who could help:
>> * What are the issues with current print dialogs that could or should be 
>> solved with GUI generation?
> 
> There are two main driving factors behind it:
> 
>      1. Manufacturers of high-end printing solutions (hardware and
>         software) want to provide greater control over print jobs
>         than is possible via PPD files and what is normally provided
>         by applications - mainly in the area of finishing (binding,
>         folding, stapling, punching, etc.) but also for work flow
>         management.
> 
>      2. Application-specific printing options/panels that can be
>         used with multiple print dialog implementations, ultimately
>         to allow support for a common (XDG/user-selected) print dialog.
> 
>> * Are there other printer description formats I should have a look at?
> 
> UPDF was an attempt by the PWG to define a printer description format
> that went beyond just PostScript, however it has not been adopted by
> anyone that I know of and I personally am not a big fan of it:
> 
>      http://www.pwg.org/updf
> 
>> * Is there any work being done in this area already?
> 
> At this point we are more in an information-gathering phase.  I've
> reviewed the (many!) XML (and other text-based) user interface
> description formats that could be used and am preparing a report
> for the printing summit.
> 
> XUL (Mozilla.org's XML UI language) is clearly the most widely
> deployed and most capable, however it also carries a significant
> overhead for implementation - code exists and could be fairly easily
> integrated with KDE and GNOME via XULRunner, however you'll add a
> significant amount of code (the XULRunner source code is 33 megs
> bzip'd!), so I'm not too keen on using XULRunner or XUL as-is.
> 
> Ultimately we need to get better requirements for *what* needs to
> be supported, from printer and applications vendors *and* from users
> and administrators who may want to add site-specific stuff to the
> print dialog, too.
> 
> So far our requirements list is pretty short (and challenging):
> 
>      1. Cross-platform (operating system, architecture, desktop, UI
>         toolkit)
>      2. No binaries (executables or plug-ins)
>      3. Embeddable in PPD files or some other way to package the UI
>         such that the UI and printer description/command data are
>         available via a single URI
>      4. Same level of localization possible as with current PPD
>         files.
>      5. Accessible to persons with disabilities
> 
> What we don't have is a list of required UI elements and behaviors
> that need to be supported.  I'd like to put together sample use cases
> we can use as a baseline to determine these requirements and then
> form the basis of a test, conformance, and demo suite for the new UI
> "technology" that gets incorporated into CUPS and the various
> desktops.
> 

