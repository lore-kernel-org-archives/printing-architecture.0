Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1412604775; x=2276518375;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nidPx/zL65ppgak+KCqjTev+iElFR+VJ5xsl6oG/Ikg=;
	b=R0Qn9PwHwt7QlKg4dSfQueGl5mE5auS27qJ/k7iLkrUoL6VgB7NzhTZdZcEoFSBD
	x7Aze44zrzKIg5iL9Z6+J6eCSBe6cfl8O161IHISr+ssTLI/gl/oSPXI8e0uPwd5
	lk4wwypV5i3tP21BKdgCfZfnussMreT62jERo+ugOxfNbTa/4QjLxo4h200whRAh
	JF2ag/2uGq7pKhRjQqDdoQMXYuvlPJkdyySgGQ16QDlWCb0WPr76+wYJmzRF2C1Y
	S9Wbm5aPL8k9T3/WlghD+EHT0i73gKzQ6PUSMx4eLHv9aHr9plQfj0CqD4lNyttc
	AblElnVNmMFj8SmklnR3Kw==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
Date: Mon, 06 Oct 2014 10:12:53 -0400
Message-id: <23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Alex,

The PPD needs to use the cupsFilter2 keyword that specifies and output format of application/pdf, application/vnd.cups-pdf, or and image/* format.


> On Oct 5, 2014, at 1:03 AM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> 
> Michael, 
> 
> I had tested this workflow with ipp backend, and it didn't communicate the number of copies to the printer. What conditions must be met for ipp backend to be able to specify the number of copies? 
> 
> Should printer reply over IPP with "copies-supported"? 
> 
> 2014-10-04 15:48 GMT-04:00 Michael Sweet <msweet@apple.com>:
> Alex,
> 
> You'll have to confirm with Till, but AFAIK the pdftopdf filter doesn't support PJL options.
> 
> Naturally the socket backend cannot provide out-of-band job ticket information, but the IPP backend *can*.  (that goes back to my comment about IPP Everywhere)
> 
> > On Oct 4, 2014, at 1:36 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> >
> > Hi Michael,
> >
> > Sorry, I should have been more clear with my question. I'm asking about OpenPrinting PDF workflow [1], where client sends a PDF, and CUPS uses just two filters for the job: pdftopdf and a socket/ipp to send the PDF directly to the printer. No conversion to raster is happening: client sends a PDF, printer receives a PDF.
> >
> > cups-filters package ships with a couple of sample PPDs [2], [3] that basically allow for inserting PJL commands into the job to change its most common options: tray, duplex, etc.
> >
> > I'm trying to find out whether making manual copies via cupsManualCopies is the only way to handle the number of copies. Can pdftopdf or CUPS insert PJL SET COPIES=X into the job? Can CUPS set the number of copies via IPP commands? There is also some code in pdftopdf_jcl.cc [4] that is dealing with a Copies directive in a PPD, but I don't quite understand what it does.
> >
> > [1] http://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdf_as_standard_print_job_format
> > [2] http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
> > [3] http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd
> > [4] http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35
> >
> > 2014-10-04 11:40 GMT-04:00 Michael Sweet <msweet@apple.com>:
> > Alex,
> >
> > > On Oct 3, 2014, at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> > >
> > > Hi all,
> > >
> > > I'm looking at example PPDs for pure PDF workflow, and all of them have
> > > cupsManualCopies: true
> > >
> > > Why is that? Is it impossible to tell printer to print a number of copies with pure PDF workflow?
> > > Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
> >
> > No, that wouldn't work since the PDF-to-raster filters don't support PJL and (for that matter) most PDF printers do not support PJL.
> >
> > cupsManualCopies is there because the destination doesn't support generating copies of its own.  If it does, then cupsManualCopies won't be in the PPD - in the case of IPP Everywhere printers the copy count is passed in the job ticket when we create the job from the IPP backend.
> >
> > _________________________________________________________
> > Michael Sweet, Senior Printing System Engineer, PWG Chair
> >
> >
> >
> >
> > --
> > -Alex
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 
> 
> 
> 
> -- 
> -Alex

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

