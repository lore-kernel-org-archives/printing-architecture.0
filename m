Message-ID: <48485BE5.7070602@gmail.com>
Date: Thu, 05 Jun 2008 23:34:29 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <484683B0.2060708@gmail.com>	<20080605.153828.28801505.sho@bbr.jp>	<484794CF.10300@gmail.com>
	<20080605.193227.233691471.sho@bbr.jp>
In-Reply-To: <20080605.193227.233691471.sho@bbr.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PDF CUPS filter packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: toratani.yasumasa@canon.co.jp, printing-architecture@lists.linux-foundation.org

Koji Otani wrote:
> From: Till Kamppeter <till.kamppeter@gmail.com>
> Subject: Re: [Printing-architecture] PDF CUPS filter packages
> Date: Thu, 05 Jun 2008 09:25:03 +0200
> Message-ID: <484794CF.10300@gmail.com>
> 
> till.kamppeter> Koji Otani wrote:
> till.kamppeter> > The CUPS source is needed by imagetopdf. This is because it use a CUPS's
> till.kamppeter> > internal function to be compatible with imagetops. Importing this code
> till.kamppeter> > into imagetopdf's source, the CUPS's full source will not be needed.
> till.kamppeter> >
> till.kamppeter> 
> till.kamppeter> Then you should file an STR for CUPS (http://www.cups.org/str.php, 
> till.kamppeter> feature request for CUPS 1.4) with a patch for the current SVN snapshot 
> till.kamppeter> which integrates this filter.
> till.kamppeter> 
> till.kamppeter> > pdftopdf and pdftoraster need the Poppler source. This is because they are
> till.kamppeter> > using some API not installed by poppler package. While only header files
> till.kamppeter> > are needed, to include only header files into the PDF filter pacakge
> till.kamppeter> > is worse than to include full source, I think. So, to eliminate
> till.kamppeter> > the Poppler source from PDF filter source pacakage is very difficult.
> till.kamppeter> > 
> till.kamppeter> 
> till.kamppeter> This looks like Poppler's API is incomplete. You should file a 
> till.kamppeter> bug/feature request to Poppler so that they expose the missing 
> till.kamppeter> functions. Or a feature request of making these filters part of Poppler. 
> till.kamppeter> Supply a patch with the bug report/feature request.
> till.kamppeter> 
> till.kamppeter> > pdftoopvp's source is  a modified Poppler source.
> till.kamppeter> > 
> till.kamppeter> 
> till.kamppeter> Here you should also contact the Poppler project for either exposing 
> till.kamppeter> missing API elements or making the filter part of Poppler.
> till.kamppeter> 
> 
> The Poppler's external API is higer level such as render_to_pixbuf.
> PDF filters are using many lower level such as page->getResourceDict.
> Anyway, I'll ask  Poppler project to make lower level API external.
> 
> till.kamppeter> > 
> till.kamppeter> > These are same as counterparts of PS workflow.
> till.kamppeter> > If your printer driver accepts PDF not PS, these filters are used.
> till.kamppeter> > 
> till.kamppeter> > Why should their costs be lower than conterparts?
> till.kamppeter> >
> till.kamppeter> 
> till.kamppeter> The PDF printing workflow is more reliable than the PostScript workflow. 
> till.kamppeter> So the printout is more reliable if pdftopdf and not pstops is used, 
> till.kamppeter> even in the case of having incoming PostScript and a driver which only 
> till.kamppeter> accepts PostScript. Then CUPS should do pstopdf->pdftopdf->pdftops to 
> till.kamppeter> get reliable page management.
> till.kamppeter> 
> 
> OK, I see.
> 
> till.kamppeter> > I made a pstopdf script:
> till.kamppeter> > ---------------------
> till.kamppeter> > #!/bin/sh
> till.kamppeter> > if [ x$6 == x ];then
> till.kamppeter> >     INFILE=-
> till.kamppeter> > else
> till.kamppeter> >     INFILE=$6
> till.kamppeter> > fi
> till.kamppeter> > exec gs -q -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite
> till.kamppeter> > -dCompatibilityLevel=1.3 
> till.kamppeter> > -sOutputFile=- -c .setpdfwrite -f $INFILE
> till.kamppeter> > ----------------------------
> till.kamppeter> > 
> till.kamppeter> > And I tested it with some PS files.
> till.kamppeter> > I found a problem.
> till.kamppeter> > With a PS file produced by AdobeReader 8 from a PDF file, GS produce
> till.kamppeter> > following errors:
> till.kamppeter> > ------------------------------
> till.kamppeter> > This PostScript file was created from an encrypted PDF file.
> till.kamppeter> > Redistilling encrypted PDF is not permitted.
> till.kamppeter> > ERROR: /undefined in --get--
> till.kamppeter> > ...
> till.kamppeter> > --------------------------------
> till.kamppeter> > Original PDF file permits PRINTING, but not other things (EDIT,
> till.kamppeter> > etc). Adobe Reader 8 seems to embed code inhibits GS from converting to
> till.kamppeter> > PDF again. Do you have any idea about this?
> till.kamppeter> >
> till.kamppeter> 
> till.kamppeter> File a bug at bugs.ghostscript.com, telling that this operation is 
> till.kamppeter> needed for the permitted action of PRINTING. Tell also that we are 
> till.kamppeter> implementing the PDF printing workflow where pstops gets replaced by 
> till.kamppeter> pdftopdf.
> till.kamppeter> 
> 
> This is more complicated. GS doesn't check this, Adobe Reader 8 seems
> to use a trick.
> Following code is embeded in output PS:
> ----------------------
> %ADOBeginClientInjection: DocumentSetup Start "No Re-Distill"
> %% Removing the following eleven lines is illegal, subject to the
> Digital Copyright Act of 1998.
> mark currentfile eexec
> 54dc5232e897cbaaa7584b7da7c23a6c59e7451851159cdbf40334cc2600
> .....
> ----------------------
> 
> So, this will not be a matter of GS.

Can you try to print this file from Evince? Does this work with the PDF 
workflow?

    Till

