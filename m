Message-ID: <481B85C2.2070304@gmail.com>
Date: Fri, 02 May 2008 23:21:06 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <481212B6.9040301@gmail.com> <4819EE1D.8030502@gmx.de>
	<481A017F.5010006@gmail.com>
	<8B8709E6C8B8784583FA9C7C013CB4515366F2@etd1.etd.ussj.ricoh.com>
	<481A094E.1030304@gmail.com>
	<8B8709E6C8B8784583FA9C7C013CB45142BBE6@etd1.etd.ussj.ricoh.com>
In-Reply-To: <8B8709E6C8B8784583FA9C7C013CB45142BBE6@etd1.etd.ussj.ricoh.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
 its interface - PPD and Foomatic extensions
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: George Liu <george.liu@ricoh-tech.com>
Cc: printing-architecture@lists.linux-foundation.org

George Liu wrote:
> I have posted my suggestion to CUPS feature request 1729
> http://cups.org/str.php?L1729+P0+S-2+C0+I0+E0+M10+Q
>

Please open a new feature request for that, STR 1729 is only about the 
access to the custom options via the web interface, not about the design 
of the options themselves.

> If my PPD has JobType=Normal/LockedPrint and LockedPrintPassword is 
> using CUPS custom PPD option.
> Will the following constraints work?
> 
> *UIConstraints: JobType=Normal LockedPrintPassword=Custom
> 

Here you should better ask Mike Sweet on the cups-general mailing list.

Or you try it out.

    Till

