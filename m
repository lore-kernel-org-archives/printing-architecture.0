Message-ID: <48980F94.40306@gmail.com>
Date: Tue, 05 Aug 2008 10:30:12 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>
	<200808031431.06482.hvengel@astound.net>
	<48978139.3070005@gmail.com>
	<200808050116.25204.hvengel@astound.net>
In-Reply-To: <200808050116.25204.hvengel@astound.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: Color Management (was)PPD extension specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel@lists.sourceforge.net

Hal V. Engel wrote:
> It was in the color settings for photoprinters (there was a color 
> management item that listed setting the ICC profile) but it was not in 
> the wide format printer spec. I think this is more a matter of 
> definitions. Wide format printers get used for printing photos and when 
> they are used this way they are in fact photoprinters. There are 
> businesses that have rows of these printers doing nothing but printing 
> out photos all day long. But wide format printers also get used for 
> doing things like printing blue prints and the like. These are 
> completely different use cases that have nothing to do with how wide the 
> printers format is. In fact it would be possible for a printer vendor to 
> create a PhotoPrinter PPD and a non-photo PPD file for these printers 
> and allow the user to decide which to use depending on their needs. I 
> guess I was trying to point out that wide format is not a use case where 
> as photoprinting is.
>

I agree. There are even wide-format printers especially made for photos, 
with 6 or more inks.

> 
> Not hard to do really as it only takes a few dozen lines of code. If you 
> would like I can take a look at the KDE version (I normally work with Qt 
> so I should be able to find my way around this code) and perhaps get you 
> a patch for this. That is if there is interest.
>

Patches are welcome. Would be great if we can get color management in 
with your help.

> I remember seeing in the design docs that since it is a dialog it should 
> be a fixed size. I am not sure where this "rule" comes from but I think 
> that this should depend on the dialog. In some (actually in most) cases 
> I would agree totally. In this case I don't. Part if this gets back to 
> use cases. My interests are more focused on PhotoPrinting and color 
> critical work where the preview can be very important. When I am doing 
> other printing such as printing a code listing or a tax return the 
> preview is not nearly as important. In fact in those cases I couldn't 
> care less about the preview. The other thing is that the KDE dialog has 
> some annoying formating issues with the right column (hopefully these 
> will be fixed soon) that would have improved if the dialog were bigger 
> (or if better sizepolicy settings and layouts had been used in that part 
> of the dialog).

I would like to have a zoomable preview/resizable dialog, too.

    Till
