Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MLGynsJCNtvW1prHtD49GXe6E1KWbOLv4CS+My2wH+8=;
	b=YbrfMfzIz2GVycdVGTcn7UBGR6z9IIfABAt2yJ3wOUU2+aVnYJ0V3JwD1ATUEe6WxS
	mVK9FeqLpyWMlfU+X6S6Bdz10LtF3lyyb4pP7cG76MezGinmrXy9ZuVKoA9+lSoa6CIy
	A+lGTADn1VFfTce7E8yHLDe6JUBOml9xPevsssWm6iJmBdr6bslL4HaRWolEFHwSypf4
	0/nDIWt8YnD4AhyNL7HZd6uh7atUFFSoxxB21CLtqSa0hbVNGZCkoXTzOEJIo2HC4yW7
	dOkaIfQD/KBEONzUcR1ST2TpmhjMWBcIuqNi+IxVEiHTU7FLqvJdWuG/56jyZjKSMZ9y
	n/AA==
MIME-Version: 1.0
In-Reply-To: <CAGC3nLB7mcHxK-LTE9PVsnbphkNOASUZNPj9n2ssKZNc1JR=zQ@mail.gmail.com>
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
	<94101C68-DC20-420E-8C93-AAC754638926@apple.com>
	<CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
	<CAN40gSuxUUg1xaf=M3achUk+B7kUwxkM1_71ZHVswBKEHzEP8w@mail.gmail.com>
	<CAGC3nLB7mcHxK-LTE9PVsnbphkNOASUZNPj9n2ssKZNc1JR=zQ@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 25 Jun 2014 17:28:31 -0400
Message-ID: <CAN40gSszRhrCftTyfmLZUPOMB3XP5WgpB8hF-vAw4brX5mCfFQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf3010eaa939362804fcafc3c1
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

--20cf3010eaa939362804fcafc3c1
Content-Type: text/plain; charset=UTF-8

Hi Daniel,

I'm aware of printer vendors who have fired or reassigned test
engineers who downloaded a *binary* of GLP3-based software
(and abandoned product or research projects for this reason).

Perhaps these printer vendors were overly cautious, but there
are some real reasons for caution here, I think.

It seemed to me that ippusbxd would be an excellent component
in an internal product development and testing process within a
printer vendor.

BTW - if ippusbxd has a "difficult" license, then the PWG won't
be able to use it in any future PWG IPP certification tools, which
would be unfortunate.

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



On Wed, Jun 25, 2014 at 5:14 PM, Daniel Dressler <danieru.dressler@gmail.com
> wrote:

> Thank you Ira, and thank you for the support you have given me and
> ippusbxd in the past.
>
> Do you know of any printer vendors or OS interested in using ippusbxd?
> I must admit I only expected ippusbxd to be used by the open source
> distributions. I am not sure what changes need to be made to reuse
> ippusbxd from the printer side.
>
> Of the OSes which avoid GPLv3: Android, Chromeos, MacOSX, Windows. I
> did not expect any of them to adopt ippusbxd. MacOSX alone has Michael
> Sweet himself working on their ippusbd.
>
> I would a company prevent their developers from testing against
> ippusbxd? Under the GPLv3 if they download a compiled binary through a
> linux distrobution, or an exe from a website, they have no
> obligations. They only need to worry if desire to redistribute the
> source or binary.
>
> This is similar to what happens when you test against Windows or OSX.
> The major difference here is there is atleast an option to
> redistribute with GPLv3.
>
> Daniel
>
> PS: I would just like to re-iterate: my presentation at the
> openprinting sumit/f2f will be licensed creative commons zero. Which
> is a very liberal license which you can think of as the BSD of BSD
> like licenses. Except in jurisdictions where authors are not allowed
> to re-assign some copyrights the CC0 license is as close as we can get
> to public domain.
>
> 2014-06-25 14:51 GMT-06:00 Ira McDonald <blueroofmusic@gmail.com>:
> > Hi Daniel,
> >
> > ALL of the work (design and code) of the Open Printing Job Ticket API
> > team used BSD/MIT (for reasons Mike Sweet has cited) - based on
> > actual legal opinions from a number of printer vendors.
> >
> > Being "up-to-date" with GPL3 simply guarantees that no printer vendor
> > will ever allow their engineers to use (even in a test lab) "ippusbxd".
> >
> > I'm very strongly opposed to licensing this work under any form of GPL3.
> >
> > There are several other major OS vendors who have an absolute rule
> > that no GLP3 code is used in any product *or* product design (no I'm not
> > going to name them).
> >
> > If your work on "ippusbxd" has a GPL3 poison pill included, then I also
> > can't encourage it's use in the IEEE-ISTO Printer Working Group, which
> > would be sad.
> >
> > ALL - amateur discussion of license and patent terms is DANGEROUS.
> > Please use caution in your email assertions.
> >
> > Cheers,
> > - Ira
> >
> >
> >
> > Ira McDonald (Musician / Software Architect)
> > Co-Chair - TCG Trusted Mobility Solutions WG
> > Chair - Linux Foundation Open Printing WG
> > Secretary - IEEE-ISTO Printer Working Group
> > Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> > IETF Designated Expert - IPP & Printer MIB
> > Blue Roof Music / High North Inc
> > http://sites.google.com/site/blueroofmusic
> > http://sites.google.com/site/highnorthinc
> > mailto: blueroofmusic@gmail.com
> > Winter  579 Park Place  Saline, MI  48176  734-944-0094
> > Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
> >
> >
> >
> > On Wed, Jun 25, 2014 at 1:36 PM, Daniel Dressler
> > <danieru.dressler@gmail.com> wrote:
> >>
> >> Michael
> >>
> >> You're right that I do not intend to file any patents, and you're also
> >> right that I do not plan to hide ippusbxd from users with DRM. Granted
> >> if I did wanted to do those things I still could, since I own the
> >> copyright. The GPLv3 only applies downstream, where one needs a
> >> license to avoid copyright infringement.
> >>
> >> In general mainline distros distribute plenty of GPLv3 since the GNU
> >> project's software has been GPLv3 for a long time. Android and OSX are
> >> the only big OSes which include GPLv2 but avoid GPLv3.
> >>
> >> Now it is true many companies involved with printing want to avoid
> >> GPLv3 and so their engineers will not be able to contribute.
> >>
> >> The low-down is that I'm working at about one tenth the market rate.
> >> Thus I don't see myself as being an employee of GSoC but rather that
> >> GSoC is providing a stipend to keep me afloat while I work on this. In
> >> return I am asking that downstream users provide the same freedoms to
> >> their downstream as I'm providing to them and in some cases provide
> >> their own work under similar terms.
> >>
> >> So what I'm trying to say is what I want to get out of this summer is
> >> more power for users over their software, plus of course working IPP
> >> over USB printers. This may not be compatible with some business
> >> plans, which is okay since those business plans are not paying me
> >> market rates either. Now if those business plans were interested in
> >> making up the difference between the stipend and market rate I would
> >> love to negotiate a friendly license, for them. Until then the
> >> opportunity cost, the amount of money which would be in my bank
> >> account if I was not working on ippusbxd, is approaching one and a
> >> half Honda Civics at MSRP.
> >>
> >> Now the BSD people have a different goal, they would prefer their
> >> software get used even if it means users cannot edit it. For me if
> >> users cannot edit the software then it might as well be proprietary,
> >> and proprietary software licenses often include large bundles of cash.
> >> So my price sheet would look like: A: lots of power to the users, or
> >> B: lots of cash to me.
> >>
> >>
> >> Daniel
> >> PS: Michael, you might be thinking of how Apache 2 is not compatible
> >> with GPLv2 since it includes restrictions on patents. While the Apache
> >> foundation says that Apache 2.0 -> GPLv3 is compatible:
> >> https://www.apache.org/licenses/GPL-compatibility.html
> >> PPS: I understand where everyone is coming form, and I don't think any
> >> of you are wrong or evil. I don't want to hurt anyone with my words or
> >> actions. I hope this email layed out why I picked GPLv3
> >> PPPS: I do understand that someone from the BSD side of open source
> >> may think that I'm greedy, but please understand my preference is for
> >> user freedom over the cash.
> >>
> >> 2014-06-25 10:24 GMT-06:00 Michael Sweet <msweet@apple.com>:
> >> > Daniel,
> >> >
> >> > Unless you plan on filing patents for the work you've done for IPP
> USB,
> >> > the patent protections of GPL3 simply do not apply.  (and the reason
> why
> >> > corporations don't like the GPL3 patent provisions is because they are
> >> > overly broad - use GPL3 software and you may be giving away your
> rights to
> >> > assert your patents, even for defensive purposes...)
> >> >
> >> > Similarly, DRM is a non-issue - IPP USB involves no DRM and (I assume)
> >> > you are not incorporating a blob or non-open code signing mechanism.
>  Any
> >> > operating system mechanism falls under the "standard system
> library/service"
> >> > clauses.
> >> >
> >> > What may be an issue is future contributions - GPL2+ is generally OK
> but
> >> > GPL3 will assure that few corporations allow their devs to help out
> for fear
> >> > of "contamination".  Apache is not GPL3-compatible.  2-clause BSD and
> MIT
> >> > are GPL3 compatible but don't prevent people from taking your work
> and doing
> >> > something non-free with it.
> >> >
> >> > So in my mind the best choices (the ones that will create the fewest
> >> > problems long-term) are GPL2+ or BSD/MIT.
> >> >
> >> > But perhaps the best people to ask are the lawyers at the various
> Linux
> >> > distros - they are the ones that need to distribute your work, and if
> you
> >> > choose a license they are not comfortable with then it won't be
> included in
> >> > the distros.
> >> >
> >> >
> >> > On Jun 25, 2014, at 12:05 PM, Daniel Dressler
> >> > <danieru.dressler@gmail.com> wrote:
> >> >
> >> >> Hello everyone
> >> >>
> >> >> I just wanted to chime in and explain why I picked GPLv3.
> >> >>
> >> >> The two big reasons is that the GPLv2 does not handle DRM and
> patents.
> >> >> Which is understandable since version 2 was written before DRM was
> >> >> enforceable by law and before software patents were common.
> >> >>
> >> >> Now I'm not a lawyer but I have read the GPLv3 license. The license
> >> >> handles patents by requiring a patent license to cover the software.
> >> >> Which just means that if software A violates patent B and a developer
> >> >> for company C contributes to software A then patent B must be
> licensed
> >> >> to users of software A. With some extra details: that company C that
> >> >> patent B, and any new patents or new additions to the software do not
> >> >> create further obligations to license father patents.
> >> >>
> >> >> The purpose of the GPLv3's patent clauses is to prevent someone from
> >> >> distributing code and then placing further restrictions on the user.
> >> >> The GPLv3 is very similar to Apache 2 in regards to patents. With
> >> >> Apache 2 being Google's and Microsoft's preferred license as of late.
> >> >>
> >> >> DRM meanwhile is the bigger sticking point for corporations. This is
> >> >> also where there is controversy. My reading of the GPLv3 made me
> think
> >> >> it is okay to encrypt and check signatures of operating system images
> >> >> and updates provided the user can get their own images and updates
> >> >> installed. Which as a user an unlocked android this is a feature I
> >> >> like.
> >> >>
> >> >> In short I think GPLv3 does a better job of guaranteeing the user's
> >> >> freedoms.
> >> >>
> >> >> Now, any code in my presentation at the summit will be CC0, likewise
> >> >> any contributions to other projects as part of integrating ippusbxd
> >> >> will be under those project's existing licenses.
> >> >>
> >> >> Daniel
> >> >>
> >> >> PS: ippusbxd only links with libusb, a lgpl system library. I cannot
> >> >> think of something we could gain by switching to GPLv2. Apple already
> >> >> has their ippusbd and I doubt Microsoft is interested in using mine
> =)
> >> >> Even if one of them was interested I expect they would want to
> >> >> negotiate a more corporate friendly license than even GPLv2.
> >> >> PPS: The MIT and BSD licenses do not handle patents which I'd say
> >> >> makes them unreliable. The Apache 2 license is better if you want a
> >> >> non-copyleft license.
> >> >>
> >> >> 2014-06-25 8:26 GMT-06:00 Till Kamppeter <till.kamppeter@gmail.com>:
> >> >>> Should we do GPL2+ then or better something non-GPL (like MIT, BSD,
> >> >>> ...)
> >> >>> to get maximum flexibility?
> >> >>>
> >> >>>   Till
> >> >>>
> >> >>> On 06/25/2014 01:09 PM, Michael Sweet wrote:
> >> >>>> GPL3 is a poison pill for most corporations, thanks to the
> draconian
> >> >>>> patent terms and generally unfriendly stance towards any other OSS
> license.
> >> >>>> Apple has a blanket policy of not allowing any GPL3/LGPL3 use
> without
> >> >>>> special authorization, and an absolute prohibition of inclusion of
> >> >>>> GPL3/LGPL3 licensed software or documentation in any products.
> >> >>>
> >> >>>
> >> >>> _______________________________________________
> >> >>> Printing-architecture mailing list
> >> >>> Printing-architecture@lists.linux-foundation.org
> >> >>>
> >> >>>
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> >> >> _______________________________________________
> >> >> Printing-architecture mailing list
> >> >> Printing-architecture@lists.linux-foundation.org
> >> >>
> >> >>
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> >> >
> >> > _________________________________________________________
> >> > Michael Sweet, Senior Printing System Engineer, PWG Chair
> >> >
> >> _______________________________________________
> >> Printing-architecture mailing list
> >> Printing-architecture@lists.linux-foundation.org
> >>
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> >
> >
>

--20cf3010eaa939362804fcafc3c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Daniel,<br><br></div>I&#39;m aware of printer=
 vendors who have fired or reassigned test <br>engineers who downloaded a *=
binary* of GLP3-based software<br></div><div>(and abandoned product or rese=
arch projects for this reason).=C2=A0 <br>

<br>Perhaps these printer vendors were overly cautious, but there <br>are s=
ome real reasons for caution here, I think.<br></div><div><br></div><div>It=
 seemed to me that ippusbxd would be an excellent component<br></div><div>

in an internal product development and testing process within a<br></div><d=
iv>printer vendor.<br><br></div><div>BTW - if ippusbxd has a &quot;difficul=
t&quot; license, then the PWG won&#39;t<br>be able to use it in any future =
PWG IPP certification tools, which<br>

would be unfortunate.<br><br></div><div>Cheers,<br></div><div>- Ira<br></di=
v><div><br><br></div></div><div class=3D"gmail_extra"><br clear=3D"all"><di=
v><div dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>Co-Chair=
 - TCG Trusted Mobility Solutions WG<br>

Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer =
Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>=
IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High No=
rth Inc<br>

<a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blue=
roofmusic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a>=
<br><a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/=
highnorthinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</=
a><br>

mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0=
 48176=C2=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI=
 49839=C2=A0 906-494-2434<br><br><div style=3D"display:inline">

</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Wed, Jun 25, 2014 at 5:14 PM, Daniel =
Dressler <span dir=3D"ltr">&lt;<a href=3D"mailto:danieru.dressler@gmail.com=
" target=3D"_blank">danieru.dressler@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">

Thank you Ira, and thank you for the support you have given me and<br>
ippusbxd in the past.<br>
<br>
Do you know of any printer vendors or OS interested in using ippusbxd?<br>
I must admit I only expected ippusbxd to be used by the open source<br>
distributions. I am not sure what changes need to be made to reuse<br>
ippusbxd from the printer side.<br>
<br>
Of the OSes which avoid GPLv3: Android, Chromeos, MacOSX, Windows. I<br>
did not expect any of them to adopt ippusbxd. MacOSX alone has Michael<br>
Sweet himself working on their ippusbd.<br>
<br>
I would a company prevent their developers from testing against<br>
ippusbxd? Under the GPLv3 if they download a compiled binary through a<br>
linux distrobution, or an exe from a website, they have no<br>
obligations. They only need to worry if desire to redistribute the<br>
source or binary.<br>
<br>
This is similar to what happens when you test against Windows or OSX.<br>
The major difference here is there is atleast an option to<br>
redistribute with GPLv3.<br>
<br>
Daniel<br>
<br>
PS: I would just like to re-iterate: my presentation at the<br>
openprinting sumit/f2f will be licensed creative commons zero. Which<br>
is a very liberal license which you can think of as the BSD of BSD<br>
like licenses. Except in jurisdictions where authors are not allowed<br>
to re-assign some copyrights the CC0 license is as close as we can get<br>
to public domain.<br>
<br>
2014-06-25 14:51 GMT-06:00 Ira McDonald &lt;<a href=3D"mailto:blueroofmusic=
@gmail.com">blueroofmusic@gmail.com</a>&gt;:<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; Hi Daniel,<br>
&gt;<br>
&gt; ALL of the work (design and code) of the Open Printing Job Ticket API<=
br>
&gt; team used BSD/MIT (for reasons Mike Sweet has cited) - based on<br>
&gt; actual legal opinions from a number of printer vendors.<br>
&gt;<br>
&gt; Being &quot;up-to-date&quot; with GPL3 simply guarantees that no print=
er vendor<br>
&gt; will ever allow their engineers to use (even in a test lab) &quot;ippu=
sbxd&quot;.<br>
&gt;<br>
&gt; I&#39;m very strongly opposed to licensing this work under any form of=
 GPL3.<br>
&gt;<br>
&gt; There are several other major OS vendors who have an absolute rule<br>
&gt; that no GLP3 code is used in any product *or* product design (no I&#39=
;m not<br>
&gt; going to name them).<br>
&gt;<br>
&gt; If your work on &quot;ippusbxd&quot; has a GPL3 poison pill included, =
then I also<br>
&gt; can&#39;t encourage it&#39;s use in the IEEE-ISTO Printer Working Grou=
p, which<br>
&gt; would be sad.<br>
&gt;<br>
&gt; ALL - amateur discussion of license and patent terms is DANGEROUS.<br>
&gt; Please use caution in your email assertions.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; - Ira<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Ira McDonald (Musician / Software Architect)<br>
&gt; Co-Chair - TCG Trusted Mobility Solutions WG<br>
&gt; Chair - Linux Foundation Open Printing WG<br>
&gt; Secretary - IEEE-ISTO Printer Working Group<br>
&gt; Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>
&gt; IETF Designated Expert - IPP &amp; Printer MIB<br>
&gt; Blue Roof Music / High North Inc<br>
&gt; <a href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blan=
k">http://sites.google.com/site/blueroofmusic</a><br>
&gt; <a href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank=
">http://sites.google.com/site/highnorthinc</a><br>
&gt; mailto: <a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail=
.com</a><br>
&gt; Winter =C2=A0579 Park Place =C2=A0Saline, MI =C2=A048176 =C2=A0<a href=
=3D"tel:734-944-0094" value=3D"+17349440094">734-944-0094</a><br>
&gt; Summer =C2=A0PO Box 221 =C2=A0Grand Marais, MI 49839 =C2=A0<a href=3D"=
tel:906-494-2434" value=3D"+19064942434">906-494-2434</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jun 25, 2014 at 1:36 PM, Daniel Dressler<br>
&gt; &lt;<a href=3D"mailto:danieru.dressler@gmail.com">danieru.dressler@gma=
il.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Michael<br>
&gt;&gt;<br>
&gt;&gt; You&#39;re right that I do not intend to file any patents, and you=
&#39;re also<br>
&gt;&gt; right that I do not plan to hide ippusbxd from users with DRM. Gra=
nted<br>
&gt;&gt; if I did wanted to do those things I still could, since I own the<=
br>
&gt;&gt; copyright. The GPLv3 only applies downstream, where one needs a<br=
>
&gt;&gt; license to avoid copyright infringement.<br>
&gt;&gt;<br>
&gt;&gt; In general mainline distros distribute plenty of GPLv3 since the G=
NU<br>
&gt;&gt; project&#39;s software has been GPLv3 for a long time. Android and=
 OSX are<br>
&gt;&gt; the only big OSes which include GPLv2 but avoid GPLv3.<br>
&gt;&gt;<br>
&gt;&gt; Now it is true many companies involved with printing want to avoid=
<br>
&gt;&gt; GPLv3 and so their engineers will not be able to contribute.<br>
&gt;&gt;<br>
&gt;&gt; The low-down is that I&#39;m working at about one tenth the market=
 rate.<br>
&gt;&gt; Thus I don&#39;t see myself as being an employee of GSoC but rathe=
r that<br>
&gt;&gt; GSoC is providing a stipend to keep me afloat while I work on this=
. In<br>
&gt;&gt; return I am asking that downstream users provide the same freedoms=
 to<br>
&gt;&gt; their downstream as I&#39;m providing to them and in some cases pr=
ovide<br>
&gt;&gt; their own work under similar terms.<br>
&gt;&gt;<br>
&gt;&gt; So what I&#39;m trying to say is what I want to get out of this su=
mmer is<br>
&gt;&gt; more power for users over their software, plus of course working I=
PP<br>
&gt;&gt; over USB printers. This may not be compatible with some business<b=
r>
&gt;&gt; plans, which is okay since those business plans are not paying me<=
br>
&gt;&gt; market rates either. Now if those business plans were interested i=
n<br>
&gt;&gt; making up the difference between the stipend and market rate I wou=
ld<br>
&gt;&gt; love to negotiate a friendly license, for them. Until then the<br>
&gt;&gt; opportunity cost, the amount of money which would be in my bank<br=
>
&gt;&gt; account if I was not working on ippusbxd, is approaching one and a=
<br>
&gt;&gt; half Honda Civics at MSRP.<br>
&gt;&gt;<br>
&gt;&gt; Now the BSD people have a different goal, they would prefer their<=
br>
&gt;&gt; software get used even if it means users cannot edit it. For me if=
<br>
&gt;&gt; users cannot edit the software then it might as well be proprietar=
y,<br>
&gt;&gt; and proprietary software licenses often include large bundles of c=
ash.<br>
&gt;&gt; So my price sheet would look like: A: lots of power to the users, =
or<br>
&gt;&gt; B: lots of cash to me.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Daniel<br>
&gt;&gt; PS: Michael, you might be thinking of how Apache 2 is not compatib=
le<br>
&gt;&gt; with GPLv2 since it includes restrictions on patents. While the Ap=
ache<br>
&gt;&gt; foundation says that Apache 2.0 -&gt; GPLv3 is compatible:<br>
&gt;&gt; <a href=3D"https://www.apache.org/licenses/GPL-compatibility.html"=
 target=3D"_blank">https://www.apache.org/licenses/GPL-compatibility.html</=
a><br>
&gt;&gt; PPS: I understand where everyone is coming form, and I don&#39;t t=
hink any<br>
&gt;&gt; of you are wrong or evil. I don&#39;t want to hurt anyone with my =
words or<br>
&gt;&gt; actions. I hope this email layed out why I picked GPLv3<br>
&gt;&gt; PPPS: I do understand that someone from the BSD side of open sourc=
e<br>
&gt;&gt; may think that I&#39;m greedy, but please understand my preference=
 is for<br>
&gt;&gt; user freedom over the cash.<br>
&gt;&gt;<br>
&gt;&gt; 2014-06-25 10:24 GMT-06:00 Michael Sweet &lt;<a href=3D"mailto:msw=
eet@apple.com">msweet@apple.com</a>&gt;:<br>
&gt;&gt; &gt; Daniel,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Unless you plan on filing patents for the work you&#39;ve don=
e for IPP USB,<br>
&gt;&gt; &gt; the patent protections of GPL3 simply do not apply. =C2=A0(an=
d the reason why<br>
&gt;&gt; &gt; corporations don&#39;t like the GPL3 patent provisions is bec=
ause they are<br>
&gt;&gt; &gt; overly broad - use GPL3 software and you may be giving away y=
our rights to<br>
&gt;&gt; &gt; assert your patents, even for defensive purposes...)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Similarly, DRM is a non-issue - IPP USB involves no DRM and (=
I assume)<br>
&gt;&gt; &gt; you are not incorporating a blob or non-open code signing mec=
hanism. =C2=A0Any<br>
&gt;&gt; &gt; operating system mechanism falls under the &quot;standard sys=
tem library/service&quot;<br>
&gt;&gt; &gt; clauses.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; What may be an issue is future contributions - GPL2+ is gener=
ally OK but<br>
&gt;&gt; &gt; GPL3 will assure that few corporations allow their devs to he=
lp out for fear<br>
&gt;&gt; &gt; of &quot;contamination&quot;. =C2=A0Apache is not GPL3-compat=
ible. =C2=A02-clause BSD and MIT<br>
&gt;&gt; &gt; are GPL3 compatible but don&#39;t prevent people from taking =
your work and doing<br>
&gt;&gt; &gt; something non-free with it.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So in my mind the best choices (the ones that will create the=
 fewest<br>
&gt;&gt; &gt; problems long-term) are GPL2+ or BSD/MIT.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; But perhaps the best people to ask are the lawyers at the var=
ious Linux<br>
&gt;&gt; &gt; distros - they are the ones that need to distribute your work=
, and if you<br>
&gt;&gt; &gt; choose a license they are not comfortable with then it won&#3=
9;t be included in<br>
&gt;&gt; &gt; the distros.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Jun 25, 2014, at 12:05 PM, Daniel Dressler<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:danieru.dressler@gmail.com">danieru.dre=
ssler@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hello everyone<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I just wanted to chime in and explain why I picked GPLv3.=
<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; The two big reasons is that the GPLv2 does not handle DRM=
 and patents.<br>
&gt;&gt; &gt;&gt; Which is understandable since version 2 was written befor=
e DRM was<br>
&gt;&gt; &gt;&gt; enforceable by law and before software patents were commo=
n.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Now I&#39;m not a lawyer but I have read the GPLv3 licens=
e. The license<br>
&gt;&gt; &gt;&gt; handles patents by requiring a patent license to cover th=
e software.<br>
&gt;&gt; &gt;&gt; Which just means that if software A violates patent B and=
 a developer<br>
&gt;&gt; &gt;&gt; for company C contributes to software A then patent B mus=
t be licensed<br>
&gt;&gt; &gt;&gt; to users of software A. With some extra details: that com=
pany C that<br>
&gt;&gt; &gt;&gt; patent B, and any new patents or new additions to the sof=
tware do not<br>
&gt;&gt; &gt;&gt; create further obligations to license father patents.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; The purpose of the GPLv3&#39;s patent clauses is to preve=
nt someone from<br>
&gt;&gt; &gt;&gt; distributing code and then placing further restrictions o=
n the user.<br>
&gt;&gt; &gt;&gt; The GPLv3 is very similar to Apache 2 in regards to paten=
ts. With<br>
&gt;&gt; &gt;&gt; Apache 2 being Google&#39;s and Microsoft&#39;s preferred=
 license as of late.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; DRM meanwhile is the bigger sticking point for corporatio=
ns. This is<br>
&gt;&gt; &gt;&gt; also where there is controversy. My reading of the GPLv3 =
made me think<br>
&gt;&gt; &gt;&gt; it is okay to encrypt and check signatures of operating s=
ystem images<br>
&gt;&gt; &gt;&gt; and updates provided the user can get their own images an=
d updates<br>
&gt;&gt; &gt;&gt; installed. Which as a user an unlocked android this is a =
feature I<br>
&gt;&gt; &gt;&gt; like.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; In short I think GPLv3 does a better job of guaranteeing =
the user&#39;s<br>
&gt;&gt; &gt;&gt; freedoms.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Now, any code in my presentation at the summit will be CC=
0, likewise<br>
&gt;&gt; &gt;&gt; any contributions to other projects as part of integratin=
g ippusbxd<br>
&gt;&gt; &gt;&gt; will be under those project&#39;s existing licenses.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Daniel<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; PS: ippusbxd only links with libusb, a lgpl system librar=
y. I cannot<br>
&gt;&gt; &gt;&gt; think of something we could gain by switching to GPLv2. A=
pple already<br>
&gt;&gt; &gt;&gt; has their ippusbd and I doubt Microsoft is interested in =
using mine =3D)<br>
&gt;&gt; &gt;&gt; Even if one of them was interested I expect they would wa=
nt to<br>
&gt;&gt; &gt;&gt; negotiate a more corporate friendly license than even GPL=
v2.<br>
&gt;&gt; &gt;&gt; PPS: The MIT and BSD licenses do not handle patents which=
 I&#39;d say<br>
&gt;&gt; &gt;&gt; makes them unreliable. The Apache 2 license is better if =
you want a<br>
&gt;&gt; &gt;&gt; non-copyleft license.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; 2014-06-25 8:26 GMT-06:00 Till Kamppeter &lt;<a href=3D"m=
ailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;:<br>
&gt;&gt; &gt;&gt;&gt; Should we do GPL2+ then or better something non-GPL (=
like MIT, BSD,<br>
&gt;&gt; &gt;&gt;&gt; ...)<br>
&gt;&gt; &gt;&gt;&gt; to get maximum flexibility?<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; =C2=A0 Till<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On 06/25/2014 01:09 PM, Michael Sweet wrote:<br>
&gt;&gt; &gt;&gt;&gt;&gt; GPL3 is a poison pill for most corporations, than=
ks to the draconian<br>
&gt;&gt; &gt;&gt;&gt;&gt; patent terms and generally unfriendly stance towa=
rds any other OSS license.<br>
&gt;&gt; &gt;&gt;&gt;&gt; Apple has a blanket policy of not allowing any GP=
L3/LGPL3 use without<br>
&gt;&gt; &gt;&gt;&gt;&gt; special authorization, and an absolute prohibitio=
n of inclusion of<br>
&gt;&gt; &gt;&gt;&gt;&gt; GPL3/LGPL3 licensed software or documentation in =
any products.<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt;&gt; Printing-architecture mailing list<br>
&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:Printing-architecture@lists.linux-f=
oundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/=
listinfo/printing-architecture" target=3D"_blank">https://lists.linuxfounda=
tion.org/mailman/listinfo/printing-architecture</a><br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; Printing-architecture mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:Printing-architecture@lists.linux-found=
ation.org">Printing-architecture@lists.linux-foundation.org</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/list=
info/printing-architecture" target=3D"_blank">https://lists.linuxfoundation=
.org/mailman/listinfo/printing-architecture</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _________________________________________________________<br>
&gt;&gt; &gt; Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
&gt;&gt; &gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Printing-architecture mailing list<br>
&gt;&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.org=
">Printing-architecture@lists.linux-foundation.org</a><br>
&gt;&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/prin=
ting-architecture" target=3D"_blank">https://lists.linuxfoundation.org/mail=
man/listinfo/printing-architecture</a><br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--20cf3010eaa939362804fcafc3c1--
