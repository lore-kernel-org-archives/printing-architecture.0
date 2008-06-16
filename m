Message-ID: <485642B1.2070600@gmail.com>
Date: Mon, 16 Jun 2008 12:38:41 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080616182717.3FB5.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20080616182717.3FB5.TORATANI.YASUMASA@canon.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CPD development status
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Cc: printing-architecture@lists.linux-foundation.org

Hi,

see my remarks below.

Lars, Alex, Jonathan, Peter, please add your answers and your progress 
report here, too.

TORATANI Yasumasa wrote:
> Hi Till,
> 
> This is Toratani.
> 
> We will have an OpenPrinting Japan June f2f meeting on 19th, and will
> have discussion of Common Printing Dialog (CPD), so, could you please
> let us know about the following points?  (These points are based on
> the questions/suggestions by Japanese members.)
> 
> - What the current status of the CPD development?
> CPD spec has already been released as "beta" version?
> CPD implementation has already started?
> 

Follow these links to see the progress of the development:

Requirements:
http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogRequirements

Specs for PPD extensions and application/dialog interface:
http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogSpecifications

Specs for the dialog's user interface:
http://wiki.openusability.org/printing/index.php/Specification

BZR repository for the dialog's user interface implementation:
http://bzr.openprinting.org/devel/common-printing-dialog

BZR repository for the application/dialog interface:
http://bzr.openprinting.org/devel/cpdapi

The specifications for the PPD extensions are practically ready. They 
will only be modified if there is any problem in the course of the 
implementation of the dialog.

The interface between application and dialog is mostly defined and 
implemented. Lars has promised to write down the specs soon. Lars, can 
you write down the specs ASAP?

The user interface of the dialog is also mostly defined. Peter, how far 
are the specs.

As much as possible of all the specs is needed for the OpenPrinting 
Japan meeting on Thursday (Japanese time, Wednesday afternoon in the US, 
Night between Wednesday and Thursday in Europe).

> - Interface between CPD and applications has already been defined?

Yes, it is mostly defined and implemented by Lars. Lars, can you please 
write down the specs ASAP? Thanks.

> We (Japan members) think that the interface should be IPC, and CPD
> and applications process should be separated to avoid the application
> crash caused by CPD.
> 

The interface is IPC, more precise to say DBUS. So the application and 
the dialog are separate processes. This improves stability and allows 
the application and the dialog to be of different incompatible licenses.

> - Current CPD spec includes both "Printing Option Settings" and
> "Printer Status"? We hope that the implementation group focuses on
> only "Printing Option Settings" spec and implementation as a first step.
> to drive the CPD implementation faster.
> 

Yes, this is the way we are working. Current work is focused on setting 
the options.

> - Please let us know where we can see the "document" of the grouping
> rule of CPD printing options to define them in PPD files.

PPD extension specs are practically ready. For the option grouping se 
the section "Option Tagging" and for the quick preset buttons the 
section "Quick Presets" on the page with the PPD extension specs.

    Till
