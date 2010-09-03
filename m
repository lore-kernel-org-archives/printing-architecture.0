Message-ID: <4C80AB6B.10202@gmail.com>
Date: Fri, 03 Sep 2010 10:01:47 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4C809328.300@ac-orleans-tours.fr>
In-Reply-To: <4C809328.300@ac-orleans-tours.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] New PDF file format in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Stephane Ascoet <Stephane.Ascoet@ac-orleans-tours.fr>
Cc: printing-architecture@lists.linux-foundation.org

On 09/03/2010 08:18 AM, Stephane Ascoet wrote:
>
> Hi, I've just learned about the replacement of PS by PDF in the store file language. I wonder if this wouldn't cause unecessary
> conversions if the printer is Postscript. The application send the job in PS, CUPS store it in PDF and send it in PS to the printer?
> Why having not chosen Postscript level 3 for storage?
>

Note that the PS->PDF->PS conversion is only temporary. The applications 
are supposed to output PDF in the future. Many already do, as all KDE 
applications, some GTK applications (like evince) and from the next 
release on also OpenOffice.org.

The advantage of using PDF is mainly the smaller files, the possibility 
to reliably tell the pages apart (for printing selected pages, N-up, 
reverse order, ...), and the support for color management. PostScript, 
even level 3, does not give these advantages.

See also

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfasstandardprintjobformat

especially the Introduction and the section 'Related bugs and feature 
requests'.

    Till
