Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: multipart/alternative; boundary=Apple-Mail-6-652771113
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
Date: Fri, 13 Nov 2009 12:20:45 -0500
Message-Id: <2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
	<4AF96B6A.7030307@gmail.com>
	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>
	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
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


--Apple-Mail-6-652771113
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



On Nov 12, 2009, at 2:57 PM, Michael Sweet wrote:
>=20
> One of the biggest problems we have with Mac OS X color management are =
the color controls. Too many users try to tweak every knob we have, and =
too many drivers provide extra knobs that interfere with managed color =
reproduction. The best advice we can give to our users is to turn off =
all of the vendor controls (if necessary) and leave our color controls =
set to the defaults.  If Linux wants to avoid the "mistakes" of the Mac =
and Windows world, eliminate vendor controls and minimize (or eliminate) =
the "standard" color controls. Let the "expert" applications provide =
controls for color profile and rendering intent, which is equally =
important to make out-of-gamut colors look reasonable, and leave those =
controls out of the standard/general print dialog.

I agree with most of this. Although I don't know if printer =
manufacturers would agree to relinquish their own color controls. I'm =
not a huge fan of their controls and I think they are a waste of space. =
But they do likely achieve a major goal for manufacturers, which is =
platform parity for their products.

> =46rom the point of view of a color-managed workflow, the ideal color =
space for printer drivers is DeviceN, i.e. a 6-color printer gets 6 =
color channels, with the separation defined by the ICC profile for that =
printer, media, color mode, etc. However, the reality is that we don't =
have tools to create or the infrastructure (at least on Mac OS X) to =
handle profiles with more than 4 channels, and thus most drivers take =
RGB or CMYK and map it to DeviceN as needed. Because of this, custom =
printer profiles are of limited usefulness in a printing workflow - you =
can (and many people do) tweak the output for a particular set of =
printer, inks, and media, but the results are not ideal because you are =
not manipulating the color in the printer's native color space. =
Moreover, many high-end printers now provide so-called "closed loop" =
profiling on the printer to normalize the output for the current =
supplies and environment, making the "traditional" manual profiling =
workflow unnecessary.

I don't agree with most of this.

The quality of the RGB->DeviceN "black box" provided by a manufacturer =
for an e.g. 6-color printer, is what determines how effective profiling =
it can be. For example the Epson Stylus Photo 2200 had a really piss =
poor Off (No Color Adjustment) LUT. It was wider gamut than the Photo =
Realistic or Vivid LUTs, but it had nasty gray balance and seriously =
clipped detail in shadows. It was worth profiling over despite this, for =
certain classes of imagery. Other classes, it was best to profile over =
the Photo Realistic mode.

Newer printers, Epson Stylus Pro 3800 or 3880, for example, the Off (No =
Color Adjustment) LUT is quite well behaved, even compared to the sRGB =
or Adobe RGB LUTs offered by the driver. Professional, fine-art =
photographers have been building custom RGB ICC output device profiles =
over these LUTs for such professional printers for years, using the =
manufacturer supplied driver, and have achieved superior results =
compared to either the sRGB or Adobe RGB LUTs.

There are a couple of products on the market that can build 5+ channel =
ICC output device profiles. They are old, and expensive, and it's =
unclear exactly how well they work compared to an RGB ICC output device =
profile over a good (or decent) RGB->deviceN black box LUT provided by =
the manufacturer. What is clear is that it's non-trivial making such =
deviceN ICC output device profiles even if you have the software to =
build them, or an OS that could support them. The profile target you use =
is a challenge to figure out how you're even going to print it =
correctly. And then you have a healthy amount of testing to manually =
determine what the ink limit should be, since ink limiting is the =
responsibility of the profile, in this  paradigm, if there is no black =
box in the middle of the process. And channel cross over behavior, ink =
limiting and GCR is really non-trivial.

Looking and high-end proofing products, even that is rarely done with =
DeviceN ICC profiles for inkjet proofers. If it's an Epson inkjet, most =
products on the market today depend on Epson's HTM (halftoning module), =
which is the guts of their black box which can accept either RGB or CMYK =
input. So the inkjet is still profiled as either an RGB or CMYK device, =
and the HTM is responsible for further separating that out to deviceN. =
(For dot proofing on inkjet, other considerations are needed.)

So I disagree that "custom printer profiles are of limited usefulness" =
or that the "results are not ideal." I have much bigger complaints than =
not being able to peak inside the Epson/Canon/HP black box. I'm annoyed =
that it's so f'n difficult to reliably print profile targets on Mac OS X =
without ColorSync sticking its nose into the wrong business. When that =
happens, the resulting profile is completely FUBARd and that is truly of =
limited usefulness and results that are not ideal.

Chris Murphy=

--Apple-Mail-6-652771113
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
text-align: auto; -khtml-text-decorations-in-effect: none; text-indent: =
0px; -apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px 0px; color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; text-align: auto; =
-khtml-text-decorations-in-effect: none; text-indent: 0px; =
-apple-text-size-adjust: auto; text-transform: none; orphans: 2; =
white-space: normal; widows: 2; word-spacing: 0px; "><br =
class=3D"Apple-interchange-newline"></span></span></span></span></span></s=
pan></span></span>
</div>
<br><div><div>On Nov 12, 2009, at 2:57 PM, Michael Sweet =
wrote:</div><blockquote type=3D"cite"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; "><div><font class=3D"Apple-style-span" =
color=3D"#000000"><br></font></div><div>One of the biggest problems we =
have with Mac OS X color management are the color controls. Too many =
users try to tweak every knob we have, and too many drivers provide =
extra knobs that interfere with managed color reproduction. The best =
advice we can give to our users is to turn off all of the vendor =
controls (if necessary) and leave our color controls set to the =
defaults. &nbsp;If Linux wants to avoid the "mistakes" of the Mac and =
Windows world, eliminate vendor controls and minimize (or eliminate) the =
"standard" color controls. Let the "expert" applications provide =
controls for color profile and rendering intent, which is equally =
important to make out-of-gamut colors look reasonable, and leave those =
controls out of the standard/general print =
dialog.</div></div></blockquote><div><br></div>I agree with most of =
this. Although I don't know if printer manufacturers would agree to =
relinquish their own color controls. I'm not a huge fan of their =
controls and I think they are a waste of space. But they do likely =
achieve a major goal for manufacturers, which is platform parity for =
their products.</div><div><br></div><div><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div>=46rom the point of view =
of a color-managed workflow, the ideal color space for printer drivers =
is DeviceN, i.e. a 6-color printer gets 6 color channels, with the =
separation defined by the ICC profile for that printer, media, color =
mode, etc. However, the reality is that we don't have tools to create or =
the infrastructure (at least on Mac OS X) to handle profiles with more =
than 4 channels, and thus most drivers take RGB or CMYK and map it to =
DeviceN as needed.&nbsp;Because of this, custom printer profiles are of =
limited usefulness in a printing workflow - you can (and many people do) =
tweak the output for a particular set of printer, inks, and media, but =
the results are not ideal because you are not manipulating the color in =
the printer's native color space. Moreover, many&nbsp;high-end printers =
now provide so-called "closed loop" profiling on the printer to =
normalize the output for the current supplies and environment, making =
the "traditional" manual profiling workflow =
unnecessary.</div></div></blockquote><br></div><div>I don't agree with =
most of this.</div><div><br></div><div>The quality of the =
RGB-&gt;DeviceN "black box" provided by a manufacturer for an e.g. =
6-color printer, is what determines how effective profiling it can be. =
For example the Epson Stylus Photo 2200 had a really piss poor Off (No =
Color Adjustment) LUT. It was wider gamut than the Photo Realistic or =
Vivid LUTs, but it had nasty gray balance and seriously clipped detail =
in shadows. It was worth profiling over despite this, for certain =
classes of imagery. Other classes, it was best to profile over the Photo =
Realistic mode.</div><div><br></div><div>Newer printers, Epson Stylus =
Pro 3800 or 3880, for example, the Off (No Color Adjustment) LUT is =
quite well behaved, even compared to the sRGB or Adobe RGB LUTs offered =
by the driver. Professional, fine-art photographers have been building =
custom RGB ICC output device profiles over these LUTs for such =
professional printers for years, using the manufacturer supplied driver, =
and have achieved superior results compared to either the sRGB or Adobe =
RGB LUTs.</div><div><br></div><div>There are a couple of products on the =
market that can build 5+ channel ICC output device profiles. They are =
old, and expensive, and it's unclear exactly how well they work compared =
to an RGB ICC output device profile over a good (or decent) =
RGB-&gt;deviceN black box LUT provided by the manufacturer. What is =
clear is that it's non-trivial making such deviceN ICC output device =
profiles even if you have the software to build them, or an OS that =
could support them. The profile target you use is a challenge to figure =
out how you're even going to print it correctly. And then you have a =
healthy amount of testing to manually determine what the ink limit =
should be, since ink limiting is the responsibility of the profile, in =
this &nbsp;paradigm, if there is no black box in the middle of the =
process. And channel cross over behavior, ink limiting and GCR is really =
non-trivial.</div><div><br></div><div>Looking and high-end proofing =
products, even that is rarely done with DeviceN ICC profiles for inkjet =
proofers. If it's an Epson inkjet, most products on the market today =
depend on Epson's HTM (halftoning module), which is the guts of their =
black box which can accept either RGB or CMYK input. So the inkjet is =
still profiled as either an RGB or CMYK device, and the HTM is =
responsible for further separating that out to deviceN.&nbsp;(For dot =
proofing on inkjet, other considerations are =
needed.)</div><div><br></div><div>So I disagree that "custom printer =
profiles are of limited usefulness" or that the "results are not ideal." =
I have much bigger complaints than not being able to peak inside the =
Epson/Canon/HP black box. I'm annoyed that it's so f'n difficult to =
reliably print profile targets on Mac OS X without ColorSync sticking =
its nose into the wrong business. When that happens, the resulting =
profile is completely FUBARd and that is truly of limited usefulness and =
results that are not ideal.</div><div><br></div><div>Chris =
Murphy</div></body></html>=

--Apple-Mail-6-652771113--
