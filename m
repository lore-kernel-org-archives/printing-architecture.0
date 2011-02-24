Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <AANLkTim5g3dsp4N2E3Tv9e6wR6iqtQu415BWQ=sRkDpL@mail.gmail.com>
Date: Thu, 24 Feb 2011 10:41:30 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <FD797C30-7A88-40E3-864E-83E4FBCCC146@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
	<9198987E-D9BD-4C2F-B83C-ECB56D1C2E22@colorremedies.com>
	<AANLkTim5g3dsp4N2E3Tv9e6wR6iqtQu415BWQ=sRkDpL@mail.gmail.com>
Subject: Re: [Printing-architecture] Common Printing Dialog and color
	management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Richard Hughes <hughsient@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org



On Feb 24, 2011, at 10:33 AM, Richard Hughes wrote:

> On 24 February 2011 17:23, Chris Murphy <lists@colorremedies.com> =
wrote:
>> We need to assume something, what's it going to be? This is probably =
sRGB for any desktop inkjet printer...
>=20
> This is something I've been struggling with for the last couple of
> days. I think it's sane to assume the default profile to use with
> untagged content or for a missing device profile is going to be sRGB.
> Does this even need to be configurable?

Probably not. But, if it will be assumed to be sRGB, then the CPD =
"Printer profile" popup menu should be populated with sRGB IECblahblah =
blah, and not "auto assign" which just makes me want to poke myself in =
the eye with a stick.

For CMYK printers, well it's another matter because a default CMYK =
profile for a printing press might cause problems on a CMYK only inkjet =
or laser printer or copier. Those are rare workflows, usually it's a =
customer or canned CMYK profile from a manufacturer, or the print driver =
will accept incoming RGB and convert internally to CMYK in some magic =
black box manner. But it's possible we need to consider a CMYK path all =
the way to the printer: it's legitimate to just make that CMYK path a =
pass through option. In which case it would be great if the CPD knows =
already what the application is going to be printing with some metadata =
(hey it's already getting a thumbnail preview, why not the color space =
of the image?) and the CPD can say "CMYK Passthrough" for the default =
"Printer profile" option. Not a bad punt for now actually....might be =
best to just leave CMYK untouched.


> If yes, is it device-specific, user specific or system specific?
> Surely if you're worried about the default fallback colorspace, you
> might as well manually assign the specific output profile to the
> specific device and then you don't care about the fallback anymore.

I'm thinking of users. Not rational beings. The only reason why I'm =
considering it at all is because I'm inclined to not consider it at all, =
and that is often a red flag for missing something important. I don't =
think it is in this case, I think you can just have your last fall back =
as sRGB for RGB and CMYK pass through for CMYK. For grayscale - well =
hmmm, it could go either way. Use the sRGB curve, or leave it as it is.


Chris=
