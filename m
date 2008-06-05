Message-ID: <4847C5BA.7050304@gmail.com>
Date: Thu, 05 Jun 2008 12:53:46 +0200
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

Will you post the STR?

> 
> The Poppler's external API is higer level such as render_to_pixbuf.
> PDF filters are using many lower level such as page->getResourceDict.
> Anyway, I'll ask  Poppler project to make lower level API external.
>

OK. Please find a solution with them, either via low-level API or by 
making the filters part of the Poppler project.

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
> 

GS is executing this embedded code which probably makes the PostScript 
interpreter exit with this error. One could modify Ghostscript to not 
exit under certain circumstances, for example if the output is going to 
stdout or if GS is running as a system user. You should contact the 
Ghostscript developers about that.

    Till

