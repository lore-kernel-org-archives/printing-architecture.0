From: "Hal V. Engel" <hvengel@astound.net>
Date: Thu, 8 Oct 2009 10:41:47 -0700
References: <4A8BCB46.9070401@gmail.com>
In-Reply-To: <4A8BCB46.9070401@gmail.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <200910081041.47887.hvengel@astound.net>
Subject: Re: [Printing-architecture] Common Printing Dialog: Print to (PDF)
	file
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On Wednesday 19 August 2009 02:52:06 am Till Kamppeter wrote:
> Hi,
> 
> the final design planning is that all applications should have "Export
> to PDF ..." in their file menus (like OpenOffice.org) with a dedicated
> dialog, similar to the CPD but yet to be designed by OpenUsability.
> 
> As this will take time and the current Qt and GTK printing dialogs
> contain a "Print to File" facility which appears as an extra print
> queue, 

In Qt4 there are two of these queues, one each for PDF and PostScript files.

> we should implement such a "Print to File" queue also in the
> Common Printing dialog, so that we get it quickly into the distros
> without having a regression due to this feature missing.
> 
> For the implementation note that the current dialogs do not send the job
> into a CUPS queue for "Print to File" (we do not use facilities like the
> cups-pdf package). "Print to File" opens a "Save as ..." dialog when
> clicking on "Print" in the printing dialog  Then the user chooses where
> to put his file. 

In GTK yes but the Qt4 print dialogs do not open a separate "Save as.." dialog 
since the regular print dialog has an "Output file:" widget that is activated 
when when of the print to file queues is selected and there is no need for a 
separate "Save as.." dialog.  The "Print" button will cause the file to be 
created/saved.  This seems a little cleaner to me than having a separate "Save 
as.." dialog.

> This process is completely done by the printing dialog
> running as the calling user, nothing done by CUPS for it. At least GTK
> allows to choose between PostScript and PDF for such a file. For your
> implementation PDF would be the most important, PostScript can perhaps
> be dropped if it makes it too complicated.
> 
> It would be great if you could implement that in the Common Printing
> Dialog, ideally with a possibility for the application to suppress this
> feature (Lars, perhaps this needs an additional boolean parameter in the
> CPDAPI).
> 
> With this we will really be feature-complete.
> 
> As soon as the print-to-file dialog design is completed and it makes it
> into most applications, we can drop this feature from the printing
> dialog again.
> 
>     Till
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> 
