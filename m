Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: multipart/alternative; boundary=Apple-Mail-14-863526191
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <D365548B-A95D-4233-B810-5F0B291C6308@apple.com>
Date: Sun, 15 Nov 2009 22:53:20 -0500
Message-Id: <9F34689A-AD72-4C57-9FBD-F3E558C06FDF@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
	<4AF96B6A.7030307@gmail.com>
	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>
	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
	<2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>
	<4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>
	<3D6E9452-F2A5-4F43-AFD6-4CDF0655BE2A@colorremedies.com>
	<A388F76E-FFCF-49A4-94CB-A3DC103838DA@apple.com>
	<1753203E-E616-401D-81B5-359D706D245B@colorremedies.com>
	<259EDC2F-D90C-4A5E-802F-F4C97AB4A08D@apple.com>
	<1CF4D0C9-61F2-496D-9F69-0F73A79A6E6C@colorremedies.com>
	<D365548B-A95D-4233-B810-5F0B291C6308@apple.com>
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
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, openicc <openicc@lists.freedesktop.org>


--Apple-Mail-14-863526191
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



On Nov 15, 2009, at 4:33 PM, Michael Sweet wrote:
> Well, last time *I* tried to print a target on Windows I had the same =
Epson driver problems that you'll find on Mac OS X - the Epson color =
controls were still used, making the target print useless.

It is true that on Windows the user should choose a different LUT than =
the default which on current drivers is Epson Standard (sRGB). But the =
printed target isn't useless. You'll actually make a profile that works =
correctly, although it is restricted in gamut. However, in-gamut colors =
reproduce correctly.

The problem I'm referring to that does not happen on Windows is ICM =
getting involved when it's not asked to. That's been a regular problem =
on OS X, even if it's manifested itself in different ways.

Chris Murphy=

--Apple-Mail-14-863526191
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
<br><div><div>On Nov 15, 2009, at 4:33 PM, Michael Sweet =
wrote:</div><blockquote type=3D"cite"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; "><div><div>Well, last time *I* tried to print a =
target on Windows I had the same Epson driver problems that you'll find =
on Mac OS X - the Epson color controls were still used, making the =
target print =
useless.</div></div></div></blockquote><div><br></div><div>It is true =
that on Windows the user should choose a different LUT than the default =
which on current drivers is Epson Standard (sRGB). But the printed =
target isn't useless. You'll actually make a profile that works =
correctly, although it is restricted in gamut. However, in-gamut colors =
reproduce correctly.</div><div><br></div><div>The problem I'm referring =
to that does not happen on Windows is ICM getting involved when it's not =
asked to. That's been a regular problem on OS X, even if it's manifested =
itself in different ways.</div></div><div><br></div><div>Chris =
Murphy</div></body></html>=

--Apple-Mail-14-863526191--
