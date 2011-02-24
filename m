Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=iso-8859-1
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
Date: Thu, 24 Feb 2011 10:23:26 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <9198987E-D9BD-4C2F-B83C-ECB56D1C2E22@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
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
To: peter sikking <peter@mmiworks.net>
Cc: Printing-architecture@lists.linux-foundation.org

=46rom the wiki URL provided on the CPD, I have a few concerns:

1. "Showing paper color" is fraught with peril and can totally set up =
the wrong end user expectations. The issue of chromatic adaptation is =
really not straight forward because user adaptation is unknown. They =
could be partially adapted, fully adapted, or not at all adapted. State =
of user adaptation needs to be known to do this in a way that doesn't =
actually hurt the user and make things worse. I definitely would not =
have this feature on by default. Professionals in some ways shouldn't =
need it because their display white should be fairly close to paper =
white anyway, otherwise they have even more serious adaptation issues. =
And last, the surrounding white point will be the display native white =
point, and when you have a small preview that "shows paper color" you =
have color appearance surround effects that really necessitate the =
inclusion of a color appearance model to do the simulation correctly. =
None of this is the case right now. So I'm not sure really why this is =
being included, who exactly it's going to help - what's the usage =
scenario.

Yes Photoshop does this in their print dialog, I don't think it's that =
useful, honestly. Maybe the motivation is coming from users used to =
Photoshop, I'm not sure.

2. There is this notion that "high end users" will want to be able to =
quickly turn off color management. This is confusing in the wiki. What =
the high end user wants is to ensure there isn't a conflict between =
application pre-matching content for print, and then the downstream =
doing additional conversions (i.e. in GhostScript/lcms). So yes, if =
those applications depend on pre-matching, you will need a clear =
mechanism for this to be disabled in the print dialog. I will warn that =
this area is also fraught with peril based on experiences with Mac OS =
and Windows.=20

a. First I'd question why we even have applications that prematch data. =
Historically this has been because certain features weren't available =
downstream in the printing pipeline, like black point compensation, so =
we had to convert using RelCol+BPC in the application. If the printing =
architecture allows for RelCol+BPC, then there's no reason to clutter =
the workflow with color management options in the application, and color =
management options in the print dialog.

b. The instant you're going to have two sets of controls for color =
management, application and print dialog, you end up in the snare we've =
been in for almost 10 years on Mac OS and Windows that I would like to =
see not engineered again if possible. I think it's possible everyone who =
has put in their two cents into this color management in the CPD are =
simply used to this paradigm and it seems to make sense. I think it's an =
atrocious user experience, even for high end users. If we can do better, =
we should do better. Two sets of conflicting color management settings: =
application and print dialog is just, inane. So what Apple did was come =
up with a way to get the application to communicate its intent to =
prematch data, in an (very undocumented way, something open source =
doesn't tend to need to be as worried about), and thereby get the print =
dialog's defaults to automatically disable print pipeline color =
management so that there would not be this effect called "double color =
management." If the document is color managed twice, especially with =
assumptions, we end up with a mess.

So that's why I go back to a. If the print architecture is sophisticated =
enough, seems like if the application is going to use the CPD, that it =
would know that it doesn't need to prematch because it's using a new CPD =
that understands proper color management. And in that case does not need =
to present conflicting settings to the user that the user will then have =
to sort out; or that engineers of this system will have to compute =
contingencies for.

3. So I'm going to go out on a ledge and say, with not much effort, you =
could build a system that meets the requirements of low, mid, and high =
end users and consolidate the behaviors that are in the three bullet =
points under the chart in the wiki. I find the implied workflow in those =
three bullet points to be confusing, misleading, and well - basically =
untrue although I understand where they're coming from due to our legacy =
past on Windows and Mac OS. (And I am considering those legacy because =
those OS's have inherited some nasty baggage for various reasons).

4. "Soft proof" I wish we could remove this term from our lexicon. This =
is a very high end feature that is really difficult to achieve even for =
very high end users. It requires an extremely standardized environment, =
or it requires the use of advanced color appearance models. I have no =
issue with ensuring that it can be implemented into user's workflows, =
but the idea that "mid end users" will be using a CPD preview to soft =
proof is a lunacy asylum. It's not going to help them one little bit and =
it adds unnecessary engineering that will not work at all. Maybe the =
original idea behind this is "fake soft proofing" versus "real soft =
proofing" but when I use the term soft proofing I am thinking of an =
event where there is a very close similarity between print and preview. =
This is very difficult to arrive at for most users because they're in =
non-standard viewing conditions, and simply the quantity of light =
available can make the different between "spot on" and "ew that's a dark =
print". It's not subtle.

5. I think the CPD probably needs to interface with colord, to present =
one of four possibilities for the destination profile (the printer =
profile), in order of priority:
	a.) A custom profile chosen by the user, directly in the CPD.
	b.) An indication that the application is going to prematch =
data. I realize I'm arguing against this is in 2a above, but if it's =
going to be an enabled workflow anyway, then the CPD should inform the =
user that the application is set to prematch data, not require them to =
choose such a "set by application" option. I'm not sure if there is a =
role here for colord to get this info from the app, or if the app talks =
to the CPD directly. Probably the later.
	c.) The profile for the printing condition based on =
*cupsICCProfile which I think colord is going to be aware of, so in this =
case colord forwards this setting to the CPD.
	d.) The profile for the printing condition based on =
*cupsICCProfile not being present in (legacy) PPDs. We need to assume =
something, what's it going to be? This is probably sRGB for any desktop =
inkjet printer, and might even work for quite a few color laser =
printers, which can receive both RGB and CMYK data. If the printer is =
CMYK only and you don't have *cupsICCProfile in the PPD and you don't =
have a user selection - well you're basically screwed but you have to =
pick something, or fail the job. And almost no matter what you pick for =
CMYK it will be wrong. So we probably need some really conservative CMYK =
space to use that is probably a separate discussion.

So at the very least, in c. colord needs to integrate with the CPD and =
let it know what that *cupsICCProfile is. And in the case of d.) we =
might want colord forward a user chosen default to the CPD, so the user =
doesn't have to keep choosing something sensible, if the default colord =
has in mind is not ideal.

6. "Using the preview" section of the wiki.=20

a.  On the one hand the wiki says "This is an essential part of =
describing and showing exactly what a user is getting" and then proceeds =
to show a mockup of the print dialog where "auto assign" and "automatic" =
are used for ICC color profile and Rendering intent. This is confusing =
because automatic is just another word for random. It's definitely not =
describing anything exact. There is a cascading set of fallback for an =
automatic population of this dialog, but it should show exactly what is =
going to be used. Auto is not exact.

b.  Also, the term "ICC color profile" is vague. What's this profile =
referring to? Is it a source profile? Is it an intermediate profile? Is =
it a destination profile? It should be specific. Maybe it should say =
"Printer profile".


7. I think having "ICC color profile" and "rendering intent" in two =
different parts of the print dialog is confusing. Pick one area, stick =
with it.


I think that's all I have at the moment.

Chris



On Feb 24, 2011, at 8:36 AM, peter sikking wrote:

> Richard Hughes wrote:
>=20
>> I've been doing quite a lot of research in to the Common Printing
>> Dialog in the last two days for my colord integration. I'm really not
>> sure where it fits in my color managed architecture plans.
>>=20
>> =46rom my perhaps-na=EFve point of view, CPD seems to have 3 main =
problems:
>>=20
>> * There hasn't been any code merged in 5 *years*, even though quite a
>> lot of code has already been written.
>> * Neither GTK or KDE seem to want to include a new UI that doesn't
>> match either of their HIG guidelines.
>=20
> both KDE and GNOME will happily take the patches. there is a lot of
> enthusiasm for it at both platforms. just not to do the work. so we
> have to get it to work as a large infrastructure project, then it
> can go in.
>=20
> about the HIG: in the spec you are looking at is a KDE/GNOME agnostic
> meta spec, the implementation is done for KDE and GNOME separately,
> fully HIG-compliant.
>=20
>> * Every single PPD file on the planet would need to be modified to
>> support the CPD.
>=20
> Till has ensured that the cpd is backward compatible with any
> (decent) PPD file on the planet. apart from that all major
> printer manufacturers have been planning and gearing up for
> PPD amending that will unlock the full cpd potential.
>=20
>> So basically, I'm not sure what the CPD buys us. Looking at
>> =
http://wiki.openusability.org/wiki/printing/index.php/Photo_printers_param=
eter_specifications#Color_Management_and_the_CPD
>> I'm not convinced mixing the color management settings in with the
>> printing options makes a lot of sense either.
>=20
>=20
> now it is getting interesting.
>=20
> I am not sure what you mean exactly. please be a bit more
> precise about what you do not see working, from which perspective
> (technical, color workflows, or something else).
>=20
>    --ps
>=20
>        founder + principal interaction architect
>            man + machine interface works
>=20
>        http://blog.mmiworks.net: on interaction architecture
>=20
>=20
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

