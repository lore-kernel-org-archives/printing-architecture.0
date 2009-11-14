Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: multipart/alternative; boundary=Apple-Mail-8-679081307
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>
Date: Fri, 13 Nov 2009 19:39:15 -0500
Message-Id: <3D6E9452-F2A5-4F43-AFD6-4CDF0655BE2A@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
	<4AF96B6A.7030307@gmail.com>
	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>
	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
	<2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>
	<4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, OpenICC Liste <openicc@lists.freedesktop.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail-8-679081307
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


On Nov 13, 2009, at 4:35 PM, Michael Sweet wrote:
>=20
> While you are quick to blame ColorSync, the issue of providing colors =
in the device color space to avoid transforms is well-known and every =
profiling tool I know of for the Mac already does the right thing to =
print a target.

Well they don't. None of them do this correctly. All try to submit a =
target and then the driver defaults to vendor color matching, typically =
expecting sRGB as the source space. The user must manually set a "no =
color management" color setting, because none of the profiling tools use =
the APIs to inform the OS which then informs the driver to change to the =
proper mode for building an ICC profile. If we get the driver configured =
correctly, then yes we get a valid profile target, without ColorSync =
involving itself.

However, none of the high end profiling tools print targets directly =
through the OS. Those targets are TIFF, and need to be printed from an =
application that can correctly print and not color manage the target, =
and then also inform the OS (the pdftoraster filter, and also ColorSync) =
to not convert the target. Presently on Mac OS the application of choice =
is Photoshop, with which we are presently having problems because the No =
Color Management based PDF spool file has different profiles set for the =
profile target object, and OutputIntent, causing ColorSync to color =
manage. It autoconfigures newer print driver settings correctly, but the =
PDF spool file is malformed, so we get a converted profile target.

I have looked quite long and hard on Apple's developer web site for =
documentation explaining the architecture and how to avoid transforms =
and was not successful. The API to get the print driver to set itself to =
the proper mode for use with an ICC profile using application color =
matching isn't locatable either.

>=20
> The most common problem is drivers - vendors incorrectly choose =
defaults or ignore color settings (applying *both* the colorsync profile =
*and* their own "enhancements") which leads to strange results.

We can certainly blame such problems on drivers, and be correct.

Yet an off mode for ColorSync doesn't exist. It depends on null =
transforms. That's the bigger flaw, in my view, because achieving null =
transforms is complicated. An off switch is much easier, and thus more =
reliable.

An explicit off switch is allowed in PDF/X-3, while still implicitly =
tagging the data. DeviceRGB being persona non grata, by Apple, in the =
PDF spool file is a big source, in my opinion, of the problems we've =
been having on Mac OS. DeviceRGB could have (and should have) acted as a =
fail safe for calibration/characterization/prematching workflows. While =
a small percent of the market, these workflows are the #2 workflow =
behind simply leaving the driver set to defaults.


> A very common problem with the Epson drivers is that the Epson color =
controls are not actually disabled in ColorSync mode! However, bugs like =
those are propagated to avoid "breaking" existing users' workflows (!?!)

I have two current drivers for two different Epson printers and neither =
of them behave the way you're describing. When I set ColorSync mode, the =
Color Settings pop-up menu changes to "Off (No Color Adjustment)" and =
all of its color controls found in Advanced Color Settings vanish. =
Instead, they are replaced by text explaining the profile that will be =
used when printing. It appears to be the correct behavior. I know older =
drivers, for way too long, did behave the way you describe. And yes =
that's all on Epson, but the documentation is weak, and documentation =
search on the dev site simply sucks.

So, presently we're unable to reliably print profile targets from =
Photoshop, using No Color Management (in Photoshop) and Off (No Color =
Adjustement) in a wide assortment of newer Epson drivers. What happens =
is, I get a completely borked profile target in printed form. Inspection =
of the PDF spool file indicates source=E2=89=A0destination, and thus =
ColorSync is going to come riding in to convert the job.

DeviceRGB being set as the color space would avoid this. Content that is =
calibration/characterization/prematch from an application, has no =
business being ICCBased in the PDF spool file.


Chris Murphy=

--Apple-Mail-8-679081307
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div><font class=3D"Apple-style-span" =
face=3D"Helvetica"><br></font></div><div><div>On Nov 13, 2009, at 4:35 =
PM, Michael Sweet wrote:</div><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div><font =
class=3D"Apple-style-span" color=3D"#000000"><br></font></div><div>While =
you are quick to blame ColorSync, the issue of providing colors in the =
device color space to avoid transforms is well-known and every profiling =
tool I know of for the Mac already does the right thing to print a =
target.</div></div></div></blockquote><div><br></div><div>Well they =
don't. None of them do this correctly.&nbsp;All try to submit a target =
and then the driver defaults to vendor color matching, typically =
expecting sRGB as the source space. The user must manually set a "no =
color management" color setting, because none of the profiling tools use =
the APIs to inform the OS which then informs the driver to change to the =
proper mode for building an ICC profile. If we get the driver configured =
correctly, then yes we get a valid profile target, without ColorSync =
involving itself.</div><div><br></div><div>However, none of the high end =
profiling tools print targets directly through the OS. Those targets are =
TIFF, and need to be printed from an application that can correctly =
print and not color manage the target, and then also inform the OS (the =
pdftoraster filter, and also ColorSync) to not convert the =
target.&nbsp;Presently on Mac OS the application of choice is Photoshop, =
with which we are presently having problems because the No Color =
Management based PDF spool file has different profiles set for the =
profile target object, and OutputIntent, causing ColorSync to color =
manage. It autoconfigures newer print driver settings correctly, but the =
PDF spool file is malformed, so we get a converted profile =
target.</div><div><br></div><div>I have looked quite long and hard on =
Apple's developer web site for documentation explaining the architecture =
and how to avoid transforms and was not successful. The API to get the =
print driver to set itself to the proper mode for use with an ICC =
profile using application color matching isn't locatable =
either.</div><br><blockquote type=3D"cite"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; "><div><div><br></div><div>The most common problem is =
drivers - vendors incorrectly choose defaults or ignore color settings =
(applying *both* the colorsync profile *and* their own "enhancements") =
which leads to strange results. =
</div></div></div></blockquote><div><br></div>We can certainly blame =
such problems on drivers, and be correct.</div><div><br></div><div>Yet =
an off mode for ColorSync doesn't exist. It depends on null transforms. =
That's the bigger flaw, in my view, because achieving null transforms is =
complicated. An off switch is much easier, and thus more =
reliable.</div><div><br></div><div>An explicit off switch is allowed in =
PDF/X-3, while still implicitly tagging the data. DeviceRGB being =
persona non grata, by Apple, in the PDF spool file is a big source, in =
my opinion, of the problems we've been having on Mac OS. DeviceRGB could =
have (and should have) acted as a fail safe for =
calibration/characterization/prematching workflows. While a small =
percent of the market, these workflows are the #2 workflow behind simply =
leaving the driver set to =
defaults.</div><div><br></div><div><br><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div>A very common problem =
with the Epson drivers is that the Epson color controls are not actually =
disabled in ColorSync mode! However, bugs like those are propagated to =
avoid "breaking" existing users' workflows =
(!?!)</div></div></div></blockquote><div><br></div><div>I have two =
current drivers for two different Epson printers and neither of them =
behave the way you're describing. When I set ColorSync mode, the Color =
Settings pop-up menu changes to "Off (No Color Adjustment)" and all of =
its color controls found in Advanced Color Settings vanish. Instead, =
they are replaced by text explaining the profile that will be used when =
printing. It appears to be the correct behavior. I know older drivers, =
for way too long, did behave the way you describe. And yes that's all on =
Epson, but the documentation is weak, and documentation search on the =
dev site simply sucks.</div><div><br></div><div>So, presently we're =
unable to reliably print profile targets from Photoshop, using No Color =
Management (in Photoshop) and Off (No Color Adjustement) in a wide =
assortment of newer Epson drivers. What happens is, I get a completely =
borked profile target in printed form. Inspection of the PDF spool file =
indicates source=E2=89=A0destination, and thus ColorSync is going to =
come riding in to convert the job.</div><div><br></div><div>DeviceRGB =
being set as the color space would avoid this. Content that is =
calibration/characterization/prematch from an application, has no =
business being ICCBased in the PDF spool =
file.</div></div><div><br></div><div><br></div><div>Chris =
Murphy</div></body></html>=

--Apple-Mail-8-679081307--
