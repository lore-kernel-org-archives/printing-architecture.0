Message-ID: <4819F6A5.3040400@gmail.com>
Date: Thu, 01 May 2008 18:58:13 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com>
	<4818BB7F.50603@gmail.com>	<b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
	<b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
In-Reply-To: <b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
 its interface
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Wauck <alex.wauck@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Peter Sikking <peter@mmiworks.net>

Peter, what is the importance of your column height restrictions? Or is 
it only an aspect ratio restriction (see Alex' problems below)?

Josef, you as expert on automatic dialog creation, can you help Alex 
here? AFAIR there was only a restriction on the aspect ratio of the 
columns and not on the absolute height.

    Till

P. S.: Josef can you also subscribe to printing-architecture, as this is 
the central discussion place for the implementation of the Common 
Printing Dialog. Subscription via

https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

Alex Wauck wrote:
> Another comment:
> Forcing the columns to be a particular height is not particularly easy 
> in Qt (I don't know how difficult it is in GTK+), and it leads to 
> unexpected behavior when resizing the dialog.  Specifically, some resize 
> operations are not possible, and the user may not like that.  Is it 
> really necessary to force column height?  Perhaps that part of the spec 
> should be relaxed to a preferred or minimum height instead of a required 
> height.  I got it to work in Qt by subclassing QGridLayout, but it's a 
> bit of a hack, and a real solution would likely be much more difficult.
> 
> Alex
> 
> On Wed, Apr 30, 2008 at 3:12 PM, Alex Wauck <alex.wauck@gmail.com 
> <mailto:alex.wauck@gmail.com>> wrote:
> 
>     One comment so far: in the "dialog specification" section, it only
>     mentions the three columns in the middle part of the dialog.  Then,
>     in the "Dialog Zones Specification" section, it adds a zone that
>     spans columns 2 and 3.  That has very different consequences for the
>     implementation than simply having three columns.  It looks like the
>     level 3 dialog always has that zone, so perhaps the first
>     specification should mention it?
> 
>     Alex
> 
> 
>     On Wed, Apr 30, 2008 at 1:33 PM, Till Kamppeter
>     <till.kamppeter@gmail.com <mailto:till.kamppeter@gmail.com>> wrote:
> 
>         Till Kamppeter wrote:
> 
>             3. How the OpenUsability dialog itself has to look like and
>             how it is
>               operated.
> 
>                - See Peter Sikking's blog
>                
>              http://www.mmiworks.net/eng/publications/labels/openPrinting.html
>                - Peter is working with a student on the specs.
> 
> 
>         Peter has started to write down the specs here:
> 
>         http://wiki.openusability.org/printing/index.php/Specification
> 
>           Till
> 
> 
> 
> 
> ------------------------------------------------------------------------
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

