Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <4F63B303.8050004@thax.hardliners.org>
Date: Fri, 16 Mar 2012 22:39:15 +0100
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <4F639287.1040000@gmail.com>
In-Reply-To: <4F639287.1040000@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Google Summer of Code 2012 - The Linux
 Foundation accepted!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till Kamppeter wrote:
> Google has accepted The Linux Foundation again as mentoring organization!
I've been interested in working on the pdf manipulation tools already 
back in 2008, when I implemented the pdftoijs and texttopdf filters as 
GSoC-Project. So I'm quite thrilled to hear, that now, nearly having 
completed university, I might have the ability to work on them, and 
participate in GSoC again.

Through work on my low-level pdf library unpdf ( 
http://code.google.com/p/unpdf/ ) I have gained much knowledge on PDF 
internals (Adobe's PDF Reference, different PDF versions, etc) and 
implementation caveats. Although the current unpdf code-base implements 
enough of the low-level handling (also e.g. including support for 
encrypted pdfs) to build the desired tools upon, there are a significant 
number of areas in need of work; another possibility would be to either 
reimplement only the bare minimum of functionality (i.e. use unpdf, and 
maybe other pdf libs like iText only as guideline) or use another pdf 
i/o library as basis (podofo comes to mind, 
http://podofo.sourceforge.net/ ; a pure C choice with good-looking 
codebase could be MuPDF, http://mupdf.com/ <http://mupdf.com/>). But 
theses details can be worked out in time.
FWIW, I personally would strongly prefer C++0x/C++11 (esp. auto, 
std::unique_ptr, rvalue references / std::move) for this project, 
instead of trying to work around language limitations that will not gain 
us anything in the long term -- if this is possible.

  Tobias
