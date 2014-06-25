Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+ahjoWcWzVi1ZHZuNuA9OGKTX0Ap5NkhCmAYtaVSjlY=;
	b=LiBM3Y6wPmigYoeq4sPeT0qTMpj9uqjcFsDaPzSX18CyXToYpYHnExgEl6i2WzAnPK
	LJ9SCO9LxnCMeOA0Oiu6XQCXMJWFM+q0dJTyBv2rgEi5EG/TleHraQ3ukjIg6nF81U40
	U9NSUnSlxpsTRszZmyxJ/kqv1jOotKHyHYYVBhCHi3LR8HxG9FEBhiL2grk85/0zuCT9
	iy4DpQ8cQ4T1omWD8OAyMn/v1tuMpUUAvSLDsk6gB3vjovWeJ6vt85N9tcVGl5UE4pcP
	GMdlJESFzWEywInD+XdBTdFWKqSN2MSP3Ffgr0w/FIv6mj2Qqv5Ig9Pll/sMvuO4rVs9
	Dlfg==
MIME-Version: 1.0
In-Reply-To: <CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
	<94101C68-DC20-420E-8C93-AAC754638926@apple.com>
	<CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 25 Jun 2014 16:51:21 -0400
Message-ID: <CAN40gSuxUUg1xaf=M3achUk+B7kUwxkM1_71ZHVswBKEHzEP8w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303dd77451ad8304fcaf3e9a
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Daniel Dressler <danieru.dressler@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--20cf303dd77451ad8304fcaf3e9a
Content-Type: text/plain; charset=UTF-8

Hi Daniel,

ALL of the work (design and code) of the Open Printing Job Ticket API
team used BSD/MIT (for reasons Mike Sweet has cited) - based on
actual legal opinions from a number of printer vendors.

Being "up-to-date" with GPL3 simply guarantees that no printer vendor
will ever allow their engineers to use (even in a test lab) "ippusbxd".

I'm very strongly opposed to licensing this work under any form of GPL3.

There are several other major OS vendors who have an absolute rule
that no GLP3 code is used in any product *or* product design (no I'm not
going to name them).

If your work on "ippusbxd" has a GPL3 poison pill included, then I also
can't encourage it's use in the IEEE-ISTO Printer Working Group, which
would be sad.

ALL - amateur discussion of license and patent terms is DANGEROUS.
Please use caution in your email assertions.

Cheers,
- Ira



Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434



On Wed, Jun 25, 2014 at 1:36 PM, Daniel Dressler <danieru.dressler@gmail.com
> wrote:

> Michael
>
> You're right that I do not intend to file any patents, and you're also
> right that I do not plan to hide ippusbxd from users with DRM. Granted
> if I did wanted to do those things I still could, since I own the
> copyright. The GPLv3 only applies downstream, where one needs a
> license to avoid copyright infringement.
>
> In general mainline distros distribute plenty of GPLv3 since the GNU
> project's software has been GPLv3 for a long time. Android and OSX are
> the only big OSes which include GPLv2 but avoid GPLv3.
>
> Now it is true many companies involved with printing want to avoid
> GPLv3 and so their engineers will not be able to contribute.
>
> The low-down is that I'm working at about one tenth the market rate.
> Thus I don't see myself as being an employee of GSoC but rather that
> GSoC is providing a stipend to keep me afloat while I work on this. In
> return I am asking that downstream users provide the same freedoms to
> their downstream as I'm providing to them and in some cases provide
> their own work under similar terms.
>
> So what I'm trying to say is what I want to get out of this summer is
> more power for users over their software, plus of course working IPP
> over USB printers. This may not be compatible with some business
> plans, which is okay since those business plans are not paying me
> market rates either. Now if those business plans were interested in
> making up the difference between the stipend and market rate I would
> love to negotiate a friendly license, for them. Until then the
> opportunity cost, the amount of money which would be in my bank
> account if I was not working on ippusbxd, is approaching one and a
> half Honda Civics at MSRP.
>
> Now the BSD people have a different goal, they would prefer their
> software get used even if it means users cannot edit it. For me if
> users cannot edit the software then it might as well be proprietary,
> and proprietary software licenses often include large bundles of cash.
> So my price sheet would look like: A: lots of power to the users, or
> B: lots of cash to me.
>
>
> Daniel
> PS: Michael, you might be thinking of how Apache 2 is not compatible
> with GPLv2 since it includes restrictions on patents. While the Apache
> foundation says that Apache 2.0 -> GPLv3 is compatible:
> https://www.apache.org/licenses/GPL-compatibility.html
> PPS: I understand where everyone is coming form, and I don't think any
> of you are wrong or evil. I don't want to hurt anyone with my words or
> actions. I hope this email layed out why I picked GPLv3
> PPPS: I do understand that someone from the BSD side of open source
> may think that I'm greedy, but please understand my preference is for
> user freedom over the cash.
>
> 2014-06-25 10:24 GMT-06:00 Michael Sweet <msweet@apple.com>:
> > Daniel,
> >
> > Unless you plan on filing patents for the work you've done for IPP USB,
> the patent protections of GPL3 simply do not apply.  (and the reason why
> corporations don't like the GPL3 patent provisions is because they are
> overly broad - use GPL3 software and you may be giving away your rights to
> assert your patents, even for defensive purposes...)
> >
> > Similarly, DRM is a non-issue - IPP USB involves no DRM and (I assume)
> you are not incorporating a blob or non-open code signing mechanism.  Any
> operating system mechanism falls under the "standard system
> library/service" clauses.
> >
> > What may be an issue is future contributions - GPL2+ is generally OK but
> GPL3 will assure that few corporations allow their devs to help out for
> fear of "contamination".  Apache is not GPL3-compatible.  2-clause BSD and
> MIT are GPL3 compatible but don't prevent people from taking your work and
> doing something non-free with it.
> >
> > So in my mind the best choices (the ones that will create the fewest
> problems long-term) are GPL2+ or BSD/MIT.
> >
> > But perhaps the best people to ask are the lawyers at the various Linux
> distros - they are the ones that need to distribute your work, and if you
> choose a license they are not comfortable with then it won't be included in
> the distros.
> >
> >
> > On Jun 25, 2014, at 12:05 PM, Daniel Dressler <
> danieru.dressler@gmail.com> wrote:
> >
> >> Hello everyone
> >>
> >> I just wanted to chime in and explain why I picked GPLv3.
> >>
> >> The two big reasons is that the GPLv2 does not handle DRM and patents.
> >> Which is understandable since version 2 was written before DRM was
> >> enforceable by law and before software patents were common.
> >>
> >> Now I'm not a lawyer but I have read the GPLv3 license. The license
> >> handles patents by requiring a patent license to cover the software.
> >> Which just means that if software A violates patent B and a developer
> >> for company C contributes to software A then patent B must be licensed
> >> to users of software A. With some extra details: that company C that
> >> patent B, and any new patents or new additions to the software do not
> >> create further obligations to license father patents.
> >>
> >> The purpose of the GPLv3's patent clauses is to prevent someone from
> >> distributing code and then placing further restrictions on the user.
> >> The GPLv3 is very similar to Apache 2 in regards to patents. With
> >> Apache 2 being Google's and Microsoft's preferred license as of late.
> >>
> >> DRM meanwhile is the bigger sticking point for corporations. This is
> >> also where there is controversy. My reading of the GPLv3 made me think
> >> it is okay to encrypt and check signatures of operating system images
> >> and updates provided the user can get their own images and updates
> >> installed. Which as a user an unlocked android this is a feature I
> >> like.
> >>
> >> In short I think GPLv3 does a better job of guaranteeing the user's
> freedoms.
> >>
> >> Now, any code in my presentation at the summit will be CC0, likewise
> >> any contributions to other projects as part of integrating ippusbxd
> >> will be under those project's existing licenses.
> >>
> >> Daniel
> >>
> >> PS: ippusbxd only links with libusb, a lgpl system library. I cannot
> >> think of something we could gain by switching to GPLv2. Apple already
> >> has their ippusbd and I doubt Microsoft is interested in using mine =)
> >> Even if one of them was interested I expect they would want to
> >> negotiate a more corporate friendly license than even GPLv2.
> >> PPS: The MIT and BSD licenses do not handle patents which I'd say
> >> makes them unreliable. The Apache 2 license is better if you want a
> >> non-copyleft license.
> >>
> >> 2014-06-25 8:26 GMT-06:00 Till Kamppeter <till.kamppeter@gmail.com>:
> >>> Should we do GPL2+ then or better something non-GPL (like MIT, BSD,
> ...)
> >>> to get maximum flexibility?
> >>>
> >>>   Till
> >>>
> >>> On 06/25/2014 01:09 PM, Michael Sweet wrote:
> >>>> GPL3 is a poison pill for most corporations, thanks to the draconian
> patent terms and generally unfriendly stance towards any other OSS license.
>  Apple has a blanket policy of not allowing any GPL3/LGPL3 use without
> special authorization, and an absolute prohibition of inclusion of
> GPL3/LGPL3 licensed software or documentation in any products.
> >>>
> >>>
> >>> _______________________________________________
> >>> Printing-architecture mailing list
> >>> Printing-architecture@lists.linux-foundation.org
> >>>
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> >> _______________________________________________
> >> Printing-architecture mailing list
> >> Printing-architecture@lists.linux-foundation.org
> >>
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> >
> > _________________________________________________________
> > Michael Sweet, Senior Printing System Engineer, PWG Chair
> >
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--20cf303dd77451ad8304fcaf3e9a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>Hi Danie=
l,<br><br></div>ALL of the work (design and code) of the Open Printing Job =
Ticket API<br>team used BSD/MIT (for reasons Mike Sweet has cited) - based =
on<br>

actual legal opinions from a number of printer vendors.<br><br></div>Being =
&quot;up-to-date&quot; with GPL3 simply guarantees that no printer vendor<b=
r></div>will ever allow their engineers to use (even in a test lab) &quot;i=
ppusbxd&quot;.<br>

<br></div>I&#39;m very strongly opposed to licensing this work under any fo=
rm of GPL3.<br><br></div>There are several other major OS vendors who have =
an absolute rule<br>that no GLP3 code is used in any product *or* product d=
esign (no I&#39;m not <br>

going to name them).<br><br></div>If your work on &quot;ippusbxd&quot; has =
a GPL3 poison pill included, then I also<br></div>can&#39;t encourage it&#3=
9;s use in the IEEE-ISTO Printer Working Group, which<br></div>would be sad=
.<br>

<br></div><div>ALL - amateur discussion of license and patent terms is DANG=
EROUS.<br></div><div>Please use caution in your email assertions.<br></div>=
<div><br></div>Cheers,<br></div>- Ira<br><br><br></div><div class=3D"gmail_=
extra">

<br clear=3D"all"><div><div dir=3D"ltr">Ira McDonald (Musician / Software A=
rchitect)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux =
Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<=
br>

Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated E=
xpert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a sty=
le=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmu=
sic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>

<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blue=
roofmusic@gmail.com</a><br>

Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094=
<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434=
<br><br><div style=3D"display:inline"></div><div style=3D"display:inline"><=
/div><div style=3D"display:inline"></div>

<div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Wed, Jun 25, 2014 at 1:36 PM, Daniel =
Dressler <span dir=3D"ltr">&lt;<a href=3D"mailto:danieru.dressler@gmail.com=
" target=3D"_blank">danieru.dressler@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">

Michael<br>
<br>
You&#39;re right that I do not intend to file any patents, and you&#39;re a=
lso<br>
right that I do not plan to hide ippusbxd from users with DRM. Granted<br>
if I did wanted to do those things I still could, since I own the<br>
copyright. The GPLv3 only applies downstream, where one needs a<br>
license to avoid copyright infringement.<br>
<br>
In general mainline distros distribute plenty of GPLv3 since the GNU<br>
project&#39;s software has been GPLv3 for a long time. Android and OSX are<=
br>
the only big OSes which include GPLv2 but avoid GPLv3.<br>
<br>
Now it is true many companies involved with printing want to avoid<br>
GPLv3 and so their engineers will not be able to contribute.<br>
<br>
The low-down is that I&#39;m working at about one tenth the market rate.<br=
>
Thus I don&#39;t see myself as being an employee of GSoC but rather that<br=
>
GSoC is providing a stipend to keep me afloat while I work on this. In<br>
return I am asking that downstream users provide the same freedoms to<br>
their downstream as I&#39;m providing to them and in some cases provide<br>
their own work under similar terms.<br>
<br>
So what I&#39;m trying to say is what I want to get out of this summer is<b=
r>
more power for users over their software, plus of course working IPP<br>
over USB printers. This may not be compatible with some business<br>
plans, which is okay since those business plans are not paying me<br>
market rates either. Now if those business plans were interested in<br>
making up the difference between the stipend and market rate I would<br>
love to negotiate a friendly license, for them. Until then the<br>
opportunity cost, the amount of money which would be in my bank<br>
account if I was not working on ippusbxd, is approaching one and a<br>
half Honda Civics at MSRP.<br>
<br>
Now the BSD people have a different goal, they would prefer their<br>
software get used even if it means users cannot edit it. For me if<br>
users cannot edit the software then it might as well be proprietary,<br>
and proprietary software licenses often include large bundles of cash.<br>
So my price sheet would look like: A: lots of power to the users, or<br>
B: lots of cash to me.<br>
<br>
<br>
Daniel<br>
PS: Michael, you might be thinking of how Apache 2 is not compatible<br>
with GPLv2 since it includes restrictions on patents. While the Apache<br>
foundation says that Apache 2.0 -&gt; GPLv3 is compatible:<br>
<a href=3D"https://www.apache.org/licenses/GPL-compatibility.html" target=
=3D"_blank">https://www.apache.org/licenses/GPL-compatibility.html</a><br>
PPS: I understand where everyone is coming form, and I don&#39;t think any<=
br>
of you are wrong or evil. I don&#39;t want to hurt anyone with my words or<=
br>
actions. I hope this email layed out why I picked GPLv3<br>
PPPS: I do understand that someone from the BSD side of open source<br>
may think that I&#39;m greedy, but please understand my preference is for<b=
r>
user freedom over the cash.<br>
<br>
2014-06-25 10:24 GMT-06:00 Michael Sweet &lt;<a href=3D"mailto:msweet@apple=
.com">msweet@apple.com</a>&gt;:<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; Daniel,<br>
&gt;<br>
&gt; Unless you plan on filing patents for the work you&#39;ve done for IPP=
 USB, the patent protections of GPL3 simply do not apply. =C2=A0(and the re=
ason why corporations don&#39;t like the GPL3 patent provisions is because =
they are overly broad - use GPL3 software and you may be giving away your r=
ights to assert your patents, even for defensive purposes...)<br>


&gt;<br>
&gt; Similarly, DRM is a non-issue - IPP USB involves no DRM and (I assume)=
 you are not incorporating a blob or non-open code signing mechanism. =C2=
=A0Any operating system mechanism falls under the &quot;standard system lib=
rary/service&quot; clauses.<br>


&gt;<br>
&gt; What may be an issue is future contributions - GPL2+ is generally OK b=
ut GPL3 will assure that few corporations allow their devs to help out for =
fear of &quot;contamination&quot;. =C2=A0Apache is not GPL3-compatible. =C2=
=A02-clause BSD and MIT are GPL3 compatible but don&#39;t prevent people fr=
om taking your work and doing something non-free with it.<br>


&gt;<br>
&gt; So in my mind the best choices (the ones that will create the fewest p=
roblems long-term) are GPL2+ or BSD/MIT.<br>
&gt;<br>
&gt; But perhaps the best people to ask are the lawyers at the various Linu=
x distros - they are the ones that need to distribute your work, and if you=
 choose a license they are not comfortable with then it won&#39;t be includ=
ed in the distros.<br>


&gt;<br>
&gt;<br>
&gt; On Jun 25, 2014, at 12:05 PM, Daniel Dressler &lt;<a href=3D"mailto:da=
nieru.dressler@gmail.com">danieru.dressler@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hello everyone<br>
&gt;&gt;<br>
&gt;&gt; I just wanted to chime in and explain why I picked GPLv3.<br>
&gt;&gt;<br>
&gt;&gt; The two big reasons is that the GPLv2 does not handle DRM and pate=
nts.<br>
&gt;&gt; Which is understandable since version 2 was written before DRM was=
<br>
&gt;&gt; enforceable by law and before software patents were common.<br>
&gt;&gt;<br>
&gt;&gt; Now I&#39;m not a lawyer but I have read the GPLv3 license. The li=
cense<br>
&gt;&gt; handles patents by requiring a patent license to cover the softwar=
e.<br>
&gt;&gt; Which just means that if software A violates patent B and a develo=
per<br>
&gt;&gt; for company C contributes to software A then patent B must be lice=
nsed<br>
&gt;&gt; to users of software A. With some extra details: that company C th=
at<br>
&gt;&gt; patent B, and any new patents or new additions to the software do =
not<br>
&gt;&gt; create further obligations to license father patents.<br>
&gt;&gt;<br>
&gt;&gt; The purpose of the GPLv3&#39;s patent clauses is to prevent someon=
e from<br>
&gt;&gt; distributing code and then placing further restrictions on the use=
r.<br>
&gt;&gt; The GPLv3 is very similar to Apache 2 in regards to patents. With<=
br>
&gt;&gt; Apache 2 being Google&#39;s and Microsoft&#39;s preferred license =
as of late.<br>
&gt;&gt;<br>
&gt;&gt; DRM meanwhile is the bigger sticking point for corporations. This =
is<br>
&gt;&gt; also where there is controversy. My reading of the GPLv3 made me t=
hink<br>
&gt;&gt; it is okay to encrypt and check signatures of operating system ima=
ges<br>
&gt;&gt; and updates provided the user can get their own images and updates=
<br>
&gt;&gt; installed. Which as a user an unlocked android this is a feature I=
<br>
&gt;&gt; like.<br>
&gt;&gt;<br>
&gt;&gt; In short I think GPLv3 does a better job of guaranteeing the user&=
#39;s freedoms.<br>
&gt;&gt;<br>
&gt;&gt; Now, any code in my presentation at the summit will be CC0, likewi=
se<br>
&gt;&gt; any contributions to other projects as part of integrating ippusbx=
d<br>
&gt;&gt; will be under those project&#39;s existing licenses.<br>
&gt;&gt;<br>
&gt;&gt; Daniel<br>
&gt;&gt;<br>
&gt;&gt; PS: ippusbxd only links with libusb, a lgpl system library. I cann=
ot<br>
&gt;&gt; think of something we could gain by switching to GPLv2. Apple alre=
ady<br>
&gt;&gt; has their ippusbd and I doubt Microsoft is interested in using min=
e =3D)<br>
&gt;&gt; Even if one of them was interested I expect they would want to<br>
&gt;&gt; negotiate a more corporate friendly license than even GPLv2.<br>
&gt;&gt; PPS: The MIT and BSD licenses do not handle patents which I&#39;d =
say<br>
&gt;&gt; makes them unreliable. The Apache 2 license is better if you want =
a<br>
&gt;&gt; non-copyleft license.<br>
&gt;&gt;<br>
&gt;&gt; 2014-06-25 8:26 GMT-06:00 Till Kamppeter &lt;<a href=3D"mailto:til=
l.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;:<br>
&gt;&gt;&gt; Should we do GPL2+ then or better something non-GPL (like MIT,=
 BSD, ...)<br>
&gt;&gt;&gt; to get maximum flexibility?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =C2=A0 Till<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 06/25/2014 01:09 PM, Michael Sweet wrote:<br>
&gt;&gt;&gt;&gt; GPL3 is a poison pill for most corporations, thanks to the=
 draconian patent terms and generally unfriendly stance towards any other O=
SS license. =C2=A0Apple has a blanket policy of not allowing any GPL3/LGPL3=
 use without special authorization, and an absolute prohibition of inclusio=
n of GPL3/LGPL3 licensed software or documentation in any products.<br>


&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; Printing-architecture mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation=
.org">Printing-architecture@lists.linux-foundation.org</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/=
printing-architecture" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/printing-architecture</a><br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Printing-architecture mailing list<br>
&gt;&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.org=
">Printing-architecture@lists.linux-foundation.org</a><br>
&gt;&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/prin=
ting-architecture" target=3D"_blank">https://lists.linuxfoundation.org/mail=
man/listinfo/printing-architecture</a><br>
&gt;<br>
&gt; _________________________________________________________<br>
&gt; Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
&gt;<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</div></div></blockquote></div><br></div>

--20cf303dd77451ad8304fcaf3e9a--
