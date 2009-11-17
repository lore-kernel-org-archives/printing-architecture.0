Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <4B01F77E.9090001@gmx.de>
Date: Tue, 17 Nov 2009 03:20:47 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <D9686F35-3605-44C3-8BDA-396239B5DDA3@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>	<620c0af50911141715y3c5739ffxf51480387fa0be59@mail.gmail.com>	<77618445-60C9-4D30-99F8-B42DBCCBF24E@apple.com>	<200911151226.49297.hvengel@astound.net>	<5D2F46F4-82CB-44F0-8E08-466733DFABBB@mmiworks.net>	<Pine.LNX.4.64.0911161329000.22140@sirius.rasena>	<E9C92136-4453-4938-A130-139BFF497874@colorremedies.com>
	<Pine.LNX.4.64.0911162229300.22140@sirius.rasena>
	<4B01F77E.9090001@gmx.de>
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
To: Gerhard Fuernkranz <nospam456@gmx.de>
Cc: Roy Harrington <roy@harrington.com>, Michael Sweet <msweet@apple.com>, openicc <openicc@lists.freedesktop.org>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net



On Nov 16, 2009, at 8:08 PM, Gerhard Fuernkranz wrote:
>>=20
>> Can the effect profiles be applied in a late binding style - remotely =
after spooling?
>=20
> Well, where and when in the pipeline is the rasterizing is done? Once
> the document has been half-toned, it's rather impossible to apply =
color
> transformations any more (i.e. in case the final raster data were =
spooled).

I agree it's a bit of a challenge to make this happen with screened =
data, but I'd wonder why it's screened if it's not meant for immediate =
output?

If it's normalized to output space but NOT screened, an "effects =
profile" or "abstract" profile is relatively easy:

devicespace >PCS > abstract profile > PCS > devicespace

If the supported precision is at least 16bpc I'd consider it pretty much =
a non-issue. (ACE is 32bpc float precision.)

If it is screened, well, it's still absolutely doable but it's basically =
a 1-bit TIFF style workflow. I think there are probably other =
priorities, but I'm open to discussing this.


>=20
> And applying an additional device -> PCS -> abstract -> PCS -> device
> transformation in a *separate* post-processing step (after converting
> the object colors to the color space associated with the printer's
> process color model, but before half-toning) will certainly not help =
to
> improve the overall accuracy of the color transformations,

I think if the precision level of the conversion is high enough, =
quantization is a non-issue. But there might be gamut issues...including =
abstract profile induced posterization.

> and some
> colors may already have been clipped, which cannot be undone any more
> afterwards by a de-saturation effect (though this clipping would have
> been avoided if the de-saturation would have been applied before
> applying the output profile). So I think the effects should be rather
> incorporated into the color transformation chain from object colors to
> the printer's process color model. Or alternatively, the intermediate
> color space before applying the effects would need to be rather PCS.

A soft proof that incorporates the abstract profile effect in the chain, =
as well as the output device profile, has clear benefits in avoiding =
undesirable gamut mapping problems.

>=20
> Applying effects without integrating them into the profile seems also
> difficult to me, if one intends to use pre-computed device link =
profiles
> for the conversion from object colors to the printer's process color =
model.

Devicelink workflows are inherently extremely fragile, as presented by =
the ICC spec. Only a creative solution, that is not obviously prescribed =
by the ICC spec, can work around such problems. This may very well =
include *mandatory* PSID support (although I have yet to see explicitly =
documentation for this tag), or some mechanism for referencing at least =
the destination profile for the purpose of tagging the resulting data =
correctly once converted. The effect of an abstract profile would occur =
before this, but interestingly enough the aggressiveness of the abstract =
profile in terms of a saturation boost very possibly will affect the =
rendering intent.

i.e. with a null abstract profile, and use selects RelCol+BPC, but then =
decides that an abstract profile boosting saturation is preferred, might =
necessitate the perceptual intent in order to better manager the larger =
percentage of out of gamut colors as a result of applying the abstract =
profile that boosts chroma.

*shrug* It's an interesting challenge. The more advanced and imaginative =
the workflow gets, the more we run into problems with the ICC spec.


Chris Murphy=
