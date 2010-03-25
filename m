From: Lars Uebernickel <larsuebernickel@gmx.de>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F0242AF@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F0242AF@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"
Date: Thu, 25 Mar 2010 18:49:04 +0100
Message-ID: <1269539344.1838.54.camel@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Another Epson Question on the Common
 Print Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org

On Thu, 2010-03-25 at 09:16 -0700, Petrie, Glen wrote:
> In addition, we want to ask a question regarding the borderless
> printing with Common Printing Dialog (CPD).
> 
> We are understanding the borderless printing scenario with CPD as
> follows. Is it right?
>  
> 1) Users select the "Borderless" option.
> 
> 2) The "Borderless" option is reported back to the application.
> 
> 3) The application “expands” the image for "Borderless" printing, and
> send the expanded PDF to CPD.
> 
> 4) CPD shows the preview of received PDF.
> 
> 5) If users judge that it is OK, CPD sends the “expanded” PDF to CUPS.
> 
>  
> 
>      1. If the above flow is correct; then, how does the application
>         “expand” the image ?
>              a. by how much ?
>              b. if the image size does not equal media size, the how
>                 is the scale ratio of the expanding decided?
>              c. what is the method used by the application to expand
>                 the  image?  There are other methods beyond simple
>                 scaling.
> 
>  
> 
> Borderless printing, today, is done by the printer driver independent
> of the application. 

In general, this is correct.  However, this will only work if the
application knows about this particular driver option.  Additional
options or custom parameters might be used to let the user select scale
ratio and quality.  This would mean that all applications would have to
implement it, which is unlikely (especially if it is a vendor specific
option).

There is currently no provision to let the driver modify the preview
when an option changes.  I am open to suggestions on this if such a
feature is desired.

To be honest, I think this would be better implemented as an
application-specific option, because the application has more
information about the content and can make better decisions based on
that.

    Lars


