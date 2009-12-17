Message-ID: <4B2A9DE5.9010603@gmail.com>
Date: Thu, 17 Dec 2009 22:08:53 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20091211155240ytbI2d@bbr.jp> <4B29C62E.8080707@fujixerox.co.jp>
In-Reply-To: <4B29C62E.8080707@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
 Dec. 2009 meeting minutes [Translation]
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Hi,

here are my comments to meeting:

Osamu MIHARA wrote:
> /*** i18n/l10n of Linux Foundation/OpenPrinting Web Site ***/
> 
> - The web site already supports i18n (mechanism to switch language).
> - It may be required to provide localized (Japanese) contents.
>   -> We should start with study to localize contents in priority order.
>         i.e. Top Page should be translated first. etc.etc
> - There are many access to printer driver download.  Some vendors links
> to the download page from their sites.
>   -> Download page for such printers may need to be translated first.
>     -> Vendors cannot decide which page should be translated first, if
> it is a community driver.
>   -> Does the driver download page have a mechanism to switch language?
>      -> foomatic db has it.  CMS has it.  ... but are they linked?
>         (Japanese web page requests foomatic db for japanese contents?)
>   - In the future when vendor upload their printer driver, overall study
> should be needed.
>

I had a phone meeting about the development of the new OpenPrinting web 
site (database part) with Dan Lopez (the web developer at the LF) today 
and he tells that we are in a good situation. The Smarty environment 
used for the new site supports I18n, which means that the site's UI can 
be internationalized without big problems.

The MySQL database which backs the web site with the printer/driver data 
(it is equivalent with the Foomatic XML database) and the Foomatic XML 
database have both full supporte for internationalization of all 
human-readable strings. What is missing here are actual translations.

In the web query API (the interface for printer setup tools to access 
the OpenPrinting database) I18n is fully implemented. If a printer setup 
tool adds its UI language code to the request, the databse returns data 
in the appropriate language (if available in the database, otherwise 
fallback to English).

>   -> At this time, we start to study Japanese translation of following
> pages.  (timing - LF web site renewal?)
> 
>      http://www.linuxfoundation.org/collaborate/workgroups/openprinting

This page is a Drupal-driven CMS/Wiki page. There full I18n support is 
available (only translations for the pages needed).

>      http://www.openprinting.org/show_driver.cgi?driver=eplaser-jp
> 

This page is part of the current Perl/MySQL-based web interface to 
interactively browse the OpenPrinting database. This page is not 
internationalized and will not be, as it will get replaced by the new 
PHP/Smarty/MySQL-based web interface. This one will get I18n support, 
not necessarily with the first launch but at least soon after.

> 
> /*** Till-san's Printer Driver Seminar ***/
> 
> March seems to be too early.  To attract many audience, it is
> recommended to hold tying up with other event such as Japan Linux
> Symposium in Fall with announce of CPD achievements.
> 

I have suggested March as once this will be the time when the new web 
interface is ready and also somewhat user-tested and second, to make the 
  manufacturers already create CPD-ready PPDs and whan the CPD turns 
live in the fall distros, the auto-downloading (and also distro-shipped) 
PPDs are already CPD-ready.

There is already work by manufacturers on auto-downloadable driver 
packages and also on CPD-ready PPDs (at least internationalized ones are 
already released), so there is demand already now, but on the other side 
manufacturers are already working on the new generation drivers without 
waiting for the seminar.

> /*** CPD ***/
> 
> CPD is updated. --- need to check.
> 

I have a source of funding for the CPD now and work has started based on 
this source.

> 
> /*** SC Meeting Report ***/
> - Reported via meeting minutes (Toratani)
> 
> - Topic for vector driver spec approval is missing...
> 

Ira McDonald has initiated the approval process. OPVP 1.0 is in 
Ghostscript since version 8.63 (August 2008) and so in all distros with 
this or a newer Ghostscript version.

> 
> /*** OOo Problem ***/
> - Japanese (or other multibyte language) characters may not be printed.
> 
> - OOo is fixed (PS output is corrected).
> 

Which version?

> - We may need promote PDF print workflow to OOo community)
> 

Please comment on OpenOffice.org issue #94173:

http://www.openoffice.org/issues/show_bug.cgi?id=94173

Seems that also Ubuntu package maintainer Chris Cheney is very interested.

> 
> /*** Proposals for 2010 activities ***/
> - Implementation of Job Ticket API (JTAPI)
> 

We really need to find a solution here, we tried in two editions of the 
Google Summer of Code. In 2008 I reassigned the student who was supposed 
to do it during the LF Summit, as we needed students on the CPD (and the 
student, Lars Uebernickel, performed perfectly on the CPD and is still 
working on it). In 2009 I found a student for JTAPI again and as I had 
two others for the CPD I kept the student on the JTAPI implementation, 
but unfortunately, he dropped off in the beginning and so no coding on 
the JTAPI was done.

Are there perhaps other possibilities for getting the JTAPI 
implementation done than trying to open it again in the GSoC 2010? 
Perhaps someone of the Japanese folks?

> - Capability
>   -> Currently static PPD based capability is supported.
>   -> Dynamic update by communication with device.
> 

CUPS 1.4 introduced bi-directional query functionality via SNMP for 
network-connected printers, but I do not know whether it is implemented 
that the "Installable Options" in the PPD file get configured 
automatically this way. Toner level readout from a networked PostScript 
printer with system-config-printer and CUPS 1.4 I have already seen working.

> - Job Attribute
>   -> This should be supported via CPD.
>

Is taken care of by the CPD, at least I have seen support for the CUPS 
job attributes in the GTK version now.

> - PDF Print Workflow
>   -> This should be supported via CPD, too.
> 

The CPD is based on the PDF workflow, especially the preview in it 
expects from the application to be capable of sending the print data in 
PDF format.

> - Approval of Vector Printer Driver API
> 

In progress. See above.

> - OpenPrinting.org
>   i10n (Japanese contents)
> 

Discussed with Dan Lopez today. See above.

> - CPD
>   Promotion to major applications
>   OOo, FireFox/Thunderbird, Evolution, ...
> 

Part of the current CPD work is patching the toolkits and apps. As soon 
as the patches are there they will be proposed to the upstream projects.

> /*
>  * Action Items by next meeting
>  */
> - Evaluation for updated CPD.
> 

Until the next OP Japan meeting (Jan 28) there will probably visible 
progress in the BZR repository, especially also for the Qt version of 
the dialog.

> - Job Ticket case study
>   Application or samples of utilization of page oriented attribution.
>   Currently PostScript print workflow can support it, but PDF one cannot.
> 

Job ticket is really necessarily needed, to get a good way to do page 
overrides in the PDF workflow. Users are complaining as apps like OOo do 
page overrides in PostScript and the PDF workflow is not carrying them on.

    Till
