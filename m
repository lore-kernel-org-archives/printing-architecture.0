Message-ID: <48F887FB.7070701@the-axe-effect.de>
Date: Fri, 17 Oct 2008 14:41:31 +0200
From: Tobias Hoffmann <lprint-list@the-axe-effect.de>
MIME-Version: 1.0
References: <9624da290810162221p57b55292l7f51e1cc155d6fd9@mail.gmail.com>	<48F83E55.7080907@gmx.de>
	<9624da290810170450g6401b162w598f9d51ac7d8a61@mail.gmail.com>
In-Reply-To: <9624da290810170450g6401b162w598f9d51ac7d8a61@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Associate printer
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Matt Gessner <magembcons@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Matt Gessner wrote:
> Well, I actually understand MOST of that... but I think what I was 
> missing was the DeviceManufacturer and DeviceModel set_param stuff.
>
> Thanks for filling that in.
>
> So, by specifying the DeviceManufacturer and DeviceModel fields, 
> THAT'S how HPIJS knows that it's a USB printer versus, say, a network 
> printer or a parallel printer?  (Does it even support network printers 
> without CUPS?)
Well, they only specify the "output format" required for the given 
printer-type. How this output data gets to the printer is again up to you.
Cups has several backends for this; they are quite simple.

On the IJS side you'll have to provide either the OutputFD or the 
OutputFile parameter. A common case is
OutputFD = dup(fileno(stdout))    and then pipe the output from your 
printing filter to one of your output backends.
For example with network printers this could be as simple as
ijs-print-filter [inputfile] | netcat printer-ip 9100

Yet can just as well create a pipe() and do everything in one 
application, then again you can first store everything in a temporary 
file, or ...

  Tobias
