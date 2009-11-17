Date: Tue, 17 Nov 2009 06:28:09 +0100 (CET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <200911170123.nAH1NDRT016538@dsl092-065-009.bos1.dsl.speakeasy.net>
Message-ID: <alpine.LSU.2.00.0911170600090.4903@sirius.rasena>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>
	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>
	<200911151226.49297.hvengel@astound.net>
	<5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>
	<Pine.LNX.4.64.0911161329000.22140@sirius.rasena>
	<E9C92136-4453-4938-A130-139BFF497874@colorremedies.com>
	<Pine.LNX.4.64.0911162229300.22140@sirius.rasena>
	<4B01F77E.9090001@gmx.de>
	<200911170123.nAH1NDRT016538@dsl092-065-009.bos1.dsl.speakeasy.net>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Subject: Re: [Printing-architecture] [Openicc]  [Gimp-print-devel]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: kate@mmiworks.net
Cc: printing-architecture@lists.linux-foundation.org, roy@harrington.com, gimp-print-devel@lists.sourceforge.net, OpenICC Liste <openicc@lists.freedesktop.org>

Am 16.11.09, 20:23 -0500 schrieb Robert Krawitz:
>   Date: Tue, 17 Nov 2009 02:08:14 +0100
>   From: Gerhard Fuernkranz <nospam456@gmx.de>

>   And applying an additional device -> PCS -> abstract -> PCS ->
>   device transformation in a *separate* post-processing step (after
>   converting the object colors to the color space associated with the
>   printer's process color model, but before half-toning) will
>   certainly not help to improve the overall accuracy of the color
>   transformations, and some colors may already have been clipped,
>   which cannot be undone any more afterwards by a de-saturation
>   effect (though this clipping would have been avoided if the
>   de-saturation would have been applied before applying the output

It is really good to mention that for the record.

>   profile). So I think the effects should be rather incorporated into
>   the color transformation chain from object colors to the printer's
>   process color model. Or alternatively, the intermediate color space
>   before applying the effects would need to be rather PCS.
>
> That's why I think the intermediate color space should be high
> precision with extremely wide gamut.  I know memory and CPU isn't
> free, but I think arguing over 8 vs. 16 bits of precision is
> distinctly penny-wise and pound-foolish.

A)
One alternative would be to replace the object ICCbased profiles with ones 
which contain the abstract effect(s):
object space (sRGB) -> abstract effect(s) (CIE*Lab)
    ==> new profile (replacing sRGB)
If the input (object) profile has several tables, the unused ones can be 
omitted using only the wanted rendering intent. Its like a device link 
with a output colour space of CIE*Lab. Some refere to it as backing in a
profile. It would need to iterate over all PDF objects and replace their 
ICC profiles. The intermediate replacement ICC profile can be considered a 
additional conversion even if it does not alter any colour values. This is 
due to the interpolations during the profile table creation.

B)
An other alternative is to put the effect profile(s) into the job ticket 
for later usage during object colour conversion:
object space (sRGB) -> abstract effect(s) -> device space (printer)
But that largely depends on the spoolers capabilities. From a CM point of 
view that would be ideal, as it allows to follow a   as few as possible 
conversions strategy.

The colour binding can be moved from a early to a late stage with both 
alternatives. As well the output intent remains untouched as Chris Murphy 
suggested.  ... feature complete


kind regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

