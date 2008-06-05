Message-ID: <484794CF.10300@gmail.com>
Date: Thu, 05 Jun 2008 09:25:03 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48465B3D.4080809@gmail.com>	<20080604.181746.02274177.sho@bbr.jp>	<484683B0.2060708@gmail.com>
	<20080605.153828.28801505.sho@bbr.jp>
In-Reply-To: <20080605.153828.28801505.sho@bbr.jp>
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
> The CUPS source is needed by imagetopdf. This is because it use a CUPS's
> internal function to be compatible with imagetops. Importing this code
> into imagetopdf's source, the CUPS's full source will not be needed.
>

Then you should file an STR for CUPS (http://www.cups.org/str.php, 
feature request for CUPS 1.4) with a patch for the current SVN snapshot 
which integrates this filter.

> pdftopdf and pdftoraster need the Poppler source. This is because they are
> using some API not installed by poppler package. While only header files
> are needed, to include only header files into the PDF filter pacakge
> is worse than to include full source, I think. So, to eliminate
> the Poppler source from PDF filter source pacakage is very difficult.
> 

This looks like Poppler's API is incomplete. You should file a 
bug/feature request to Poppler so that they expose the missing 
functions. Or a feature request of making these filters part of Poppler. 
Supply a patch with the bug report/feature request.

> pdftoopvp's source is  a modified Poppler source.
> 

Here you should also contact the Poppler project for either exposing 
missing API elements or making the filter part of Poppler.

> 
> These are same as counterparts of PS workflow.
> If your printer driver accepts PDF not PS, these filters are used.
> 
> Why should their costs be lower than conterparts?
>

The PDF printing workflow is more reliable than the PostScript workflow. 
So the printout is more reliable if pdftopdf and not pstops is used, 
even in the case of having incoming PostScript and a driver which only 
accepts PostScript. Then CUPS should do pstopdf->pdftopdf->pdftops to 
get reliable page management.

> I made a pstopdf script:
> ---------------------
> #!/bin/sh
> if [ x$6 == x ];then
>     INFILE=-
> else
>     INFILE=$6
> fi
> exec gs -q -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite
> -dCompatibilityLevel=1.3 
> -sOutputFile=- -c .setpdfwrite -f $INFILE
> ----------------------------
> 
> And I tested it with some PS files.
> I found a problem.
> With a PS file produced by AdobeReader 8 from a PDF file, GS produce
> following errors:
> ------------------------------
> This PostScript file was created from an encrypted PDF file.
> Redistilling encrypted PDF is not permitted.
> ERROR: /undefined in --get--
> ...
> --------------------------------
> Original PDF file permits PRINTING, but not other things (EDIT,
> etc). Adobe Reader 8 seems to embed code inhibits GS from converting to
> PDF again. Do you have any idea about this?
>

File a bug at bugs.ghostscript.com, telling that this operation is 
needed for the permitted action of PRINTING. Tell also that we are 
implementing the PDF printing workflow where pstops gets replaced by 
pdftopdf.

    Till

