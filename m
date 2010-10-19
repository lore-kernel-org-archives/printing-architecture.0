MIME-Version: 1.0
From: Randy Parker <randy.j.parker@gmail.com>
Date: Tue, 19 Oct 2010 11:43:23 -0400
Message-ID: <AANLkTikOYMyHsOkH0ShSrAJaqir=Po7Gak0xOt6r599Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=0016e657b6705f591f0492fa28ca
Subject: [Printing-architecture] Which Layer Should Implement Multi-Color
	Page Output?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture <printing-architecture@lists.linux-foundation.org>

--0016e657b6705f591f0492fa28ca
Content-Type: text/plain; charset=ISO-8859-1

I need to print thousands of page-stacks per day of a single-page PDF on
(say) five or six pages of different colored paper.   For example, I want
the single page pdf in file 'f.pdf' spit out on six pages: wpyyyw (white,
pink, yellow*3, white)

I've posted this question on several HP & CUPS forums, but still have no
idea how to begin. It appears that both PCL5 and PJL are too low level.  But
'lpr' is too high level: 'lpr -o InputSlot=Tray5 f.pdf -o InputSlot=Tray3
f.pdf ...' does not work because 'lpr' seems to only allow _one_ "-o
InputSlot" specification per invocation. Since I need to print 10,000 pages
per day, issuing 10,000 distinct 'lpr' commands is impossibly slow, not to
mention suspiciously stupid (because it would re-render the PDF for each of
my five or six page colors). It is painfully slow because each lpr
invocation is a distinct print job, which causes my hp4515x 65ppm printer to
suffer a 4-5 second spool down / spool up cycle. This 'stall' downgrades it
to 10ppm printer! :-(

A Kyocera tech guy suggested their Perscribe form facility, but I'd rather
find the right place in the standard CUPS system.  Maybe in a PPD, by
creating a bunch of page-stack specific printers (how)?  A filter somewhere?
 A "LP Interface script"?

PS - I actually have about 100 page stack patterns, such as the 'wpyyyw'
example above. I wouldn't mind creating corresponding macros for each, and
then just picking the macro. I typically have a few dozen to a few hundred
pages to be printed on one 'stack pattern' before changing to another. My
app is Ruby on Rails / Ubuntu, and the Ruby CUPS bindings are not great.
(which is why I've used lpr so far)

feel free to reply directly to:

randy.j.parker@gmail.com

if this is off-topic for the list.

--0016e657b6705f591f0492fa28ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<meta charset=3D"utf-8"><span class=3D"Apple-style-span" style=3D"font-fami=
ly: &#39;lucida grande&#39;, tahoma, verdana, arial, sans-serif; font-size:=
 13px; color: rgb(51, 51, 51); ">I need to print thousands of page-stacks p=
er day of a single-page PDF on (say) five or six pages of different colored=
 paper. =A0 For example, I want the single page pdf in file &#39;f.pdf&#39;=
 spit out on six pages: wpyyyw (white, pink, yellow*3, white)<br>

<br>I&#39;ve posted this question on several HP &amp; CUPS forums, but stil=
l have no idea how to begin. It appears that both PCL5 and PJL are too low =
level. =A0But &#39;lpr&#39; is too high level: &#39;lpr -o InputSlot=3DTray=
5 f.pdf -o InputSlot=3DTray3 f.pdf ...&#39; does not work because &#39;lpr&=
#39; seems to only allow _one_ &quot;-o InputSlot&quot; specification per i=
nvocation. Since I need to print 10,000 pages per day, issuing 10,000 disti=
nct &#39;lpr&#39; commands is impossibly slow, not to mention suspiciously =
stupid (because it would re-render the PDF for each of my five or six page =
colors). It is painfully slow because each lpr invocation is a distinct pri=
nt job, which causes my hp4515x 65ppm printer to suffer a 4-5 second spool =
down / spool up cycle. This &#39;stall&#39; downgrades it to 10ppm printer!=
 :-(</span><div>

<span class=3D"Apple-style-span" style=3D"font-family: &#39;lucida grande&#=
39;, tahoma, verdana, arial, sans-serif; font-size: 13px; color: rgb(51, 51=
, 51); "><br></span></div><div><span class=3D"Apple-style-span" style=3D"fo=
nt-family: &#39;lucida grande&#39;, tahoma, verdana, arial, sans-serif; fon=
t-size: 13px; color: rgb(51, 51, 51); ">A Kyocera tech guy suggested their =
Perscribe form facility, but I&#39;d rather find the right place in the sta=
ndard CUPS system. =A0Maybe in a PPD, by creating a bunch of page-stack spe=
cific printers (how)? =A0A filter somewhere? =A0A &quot;LP Interface script=
&quot;?<br>

<br>PS - I actually have about 100 page stack patterns, such as the &#39;wp=
yyyw&#39; example above. I wouldn&#39;t mind creating corresponding macros =
for each, and then just picking the macro. I typically have a few dozen to =
a few hundred pages to be printed on one &#39;stack pattern&#39; before cha=
nging to another. My app is Ruby on Rails / Ubuntu, and the Ruby CUPS bindi=
ngs are not great. (which is why I&#39;ve used lpr so far)</span><br clear=
=3D"all">

<br><div>feel free to reply directly to:=A0</div><div><br>
<div><a href=3D"mailto:randy.j.parker@gmail.com">randy.j.parker@gmail.com</=
a></div></div><div><br></div><div>if this is off-topic for the list.</div><=
/div>

--0016e657b6705f591f0492fa28ca--
