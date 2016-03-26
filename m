Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DVkK5C4xJAh2vPtjair/stiHdW4XeDb36ypeE6l0+Ss=;
	b=gGywioCC8Nrd/LRaNezgQvw20gUfZaPSKkec2FDN0Ejod3CLm9sNNcDh0y/XjMJCr1
	+dpx9sXt7CG8Tr0XvK0ApoBH3SmiUCi4Iq2KFVO4WMg09MsTSMa/aKp3vbaOIoxSimbM
	fWaq0UxHVoHb8gFE90DCxuyF66ePi7Bxcz8qghrK4xz9O3MzPFR5VoEb3H//Oup9kblX
	I+p4Wj0f3hbgGGADQm25ZmnStV0oblT86b83rslYfFEKdBijhgI5RsyX75cIMUdDlNlm
	VOj/nJ1yyvHoix6bQ6UbCrINRBy7bwf3VPCoy9I5uDjAwMKujFYJXZAl5IreIL+WKcIZ
	jSlw==
MIME-Version: 1.0
In-Reply-To: <CAD2FfiHJmKdT5fyWmpyGx-_H5-gysDwaMWAg6vdJ91PJO8Sgqg@mail.gmail.com>
References: <CAN40gSsa6nn5DMYKtbHapet88ybiSTDaZBWVE8KuUYNaZ2R0hw@mail.gmail.com>
	<CAD2FfiHJmKdT5fyWmpyGx-_H5-gysDwaMWAg6vdJ91PJO8Sgqg@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Sat, 26 Mar 2016 18:59:39 -0400
Message-ID: <CAN40gSt5oVEA3UJOLeMRm5Ww1-qhsd0rRL41Rt2EiKy8g7ujDQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ee4bc8edb4c052efba37c
Subject: Re: [Printing-architecture] Status and future of the Common
 Printing Dialog (CPD)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Richard Hughes <hughsient@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--001a113ee4bc8edb4c052efba37c
Content-Type: text/plain; charset=UTF-8

Hi Richard,

Umm.  Glen's CMPD has never been proposed to be a GSoC project.

However, Glen did a lot of very good real-world research into the spectrum
of UIs on various mobile phone platforms and some good design for CMPD.

Abandoning the CMPD simply because it hasn't been completed doesn't seem
obvious to me (i.e., if non-GSoC people want to resume work on it) .

Glen's design ideas included a much lighter weight client than a classic
CUPS
client that would still give access to the IPP Everywhere functionality
that is now
widely available in new printers (i.e., using a standard PWG print job
ticket in IPP
instead of embedding print instructions in PDLs, an ultimately dead-end
idea).

Since even mainstream CUPS is abandoning PPDs in favor of real-time printer
capabilities queries via IPP, PPD-based print clients have a limited future.

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


On Sat, Mar 26, 2016 at 6:21 PM, Richard Hughes <hughsient@gmail.com> wrote:

> What point is there continuing CMPD if there is literally zero buy in for
> Android, iOS, Windows or even the Ubuntu phone? What point is a purely
> theoretical specification with an implementation that none of the mobile OS
> vendors want to (or could) use? Seems like a wasted GSoC student to my
> eyes. Sorry to be blunt.
>
> Richard
> On 26 Mar 2016 7:31 pm, "Ira McDonald" <blueroofmusic@gmail.com> wrote:
>
>> Hi Michael,
>>
>> Many thanks to GTK and QT folks for responding.
>>
>> My comments are informal.  CPD was focused on large-screen laptops and
>> desktops and explicitly ruled out UI for smartphones.  That focus drew
>> some
>> criticism at the time.
>>
>> Before his retirement from EPSON, Glen Petrie did some excellent work
>> on a lightweight Common Mobile Print Dialog that was scaleable across all
>> mobile devices, screens, and input methods and specifically optimized for
>> small-screen smartphones and written in pure C (for portability).  The
>> design,
>> code, and presentations are archived on the IEEE-ISTO PWG FTP server at:
>>
>>   http://ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/
>>
>> Till and I would both be delighted to see CMPD work resumed and completed.
>>
>> Cheers,
>> - Ira
>>
>>
>> Ira McDonald (Musician / Software Architect)
>> Co-Chair - TCG Trusted Mobility Solutions WG
>> Chair - Linux Foundation Open Printing WG
>> Secretary - IEEE-ISTO Printer Working Group
>> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
>> IETF Designated Expert - IPP & Printer MIB
>> Blue Roof Music / High North Inc
>> http://sites.google.com/site/blueroofmusic
>> http://sites.google.com/site/highnorthinc
>> mailto: blueroofmusic@gmail.com
>> Winter  579 Park Place  Saline, MI  48176  734-944-0094
>> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>>
>>
>> On Sat, Mar 26, 2016 at 2:19 PM, Michael Weghorn <m.weghorn@posteo.de>
>> wrote:
>>
>>> Thank you for your quick replies.
>>>
>>> If neither GTK+ nor Qt are planning to support the CPD, this does not
>>> sound like it had a very bright future.
>>>
>>> Maybe it might be a good idea to add some note about the current status
>>> in the CPD section on the website so that other people looking at it can
>>> quickly get an idea of it.
>>>
>>> Are there possibly other plans/ideas to provide a more consistent user
>>> experience in printing dialogs across various applications?
>>> The current situation with so many different printing dialogs (e.g. GTK,
>>> KDE, LibreOffice, Java, several applications having their one one's,
>>> ...) that look differently and have a different set of features does not
>>> seem optimal to me.
>>>
>>> Also, from a developer's point of view it is non-optimal when adding a
>>> new feature or fixing a bug potentially requires making that change
>>> several times in totally different code bases (I only know LibreOffice,
>>> Qt 4 and GTK)...
>>>
>>> Best regards,
>>> Michael
>>>
>>> On 2016-03-26 18:01, John Layt wrote:
>>> > On 26 March 2016 at 15:42, Richard Hughes <hughsient@gmail.com> wrote:
>>> >> On 26 March 2016 at 15:03, Michael Weghorn <m.weghorn@posteo.de>
>>> wrote:
>>> >>> Could somebody possibly say something about the current status of the
>>> >>> Common Printing Dialog?
>>> >>
>>> >> Last time I spoke to the GTK maintainers and the GNOME Design team
>>> >> there was a total lack of support for the project.
>>> >>
>>> >> Richard
>>> >
>>> > While the usual Qt policy is to use the host platform facilities where
>>> > available, Qt has no interest in using CPD either, at least not in the
>>> > architecture proposed. There were too many implementation issues and
>>> > no funding for the required cross-platform architectural changes that
>>> > Qt would have required.
>>> >
>>> > John.
>>> > _______________________________________________
>>> > Printing-architecture mailing list
>>> > Printing-architecture@lists.linux-foundation.org
>>> >
>>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>> >
>>> _______________________________________________
>>> Printing-architecture mailing list
>>> Printing-architecture@lists.linux-foundation.org
>>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>>
>>
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
>>

--001a113ee4bc8edb4c052efba37c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Richard,<br><br></div>Umm=
.=C2=A0 Glen&#39;s CMPD has never been proposed to be a GSoC project.<br><b=
r></div>However, Glen did a lot of very good real-world research into the s=
pectrum<br></div>of UIs on various mobile phone platforms and some good des=
ign for CMPD.<br><br></div>Abandoning the CMPD simply because it hasn&#39;t=
 been completed doesn&#39;t seem <br>obvious to me (i.e., if non-GSoC peopl=
e want to resume work on it) .=C2=A0 <br><br>Glen&#39;s design ideas includ=
ed a much lighter weight client than a classic CUPS <br>client that would s=
till give access to the IPP Everywhere functionality that is now <br>widely=
 available in new printers (i.e., using a standard PWG print job ticket in =
IPP <br>instead of embedding print instructions in PDLs, an ultimately dead=
-end idea).<br></div><div><br>Since even mainstream CUPS is abandoning PPDs=
 in favor of real-time printer<br></div><div>capabilities queries via IPP, =
PPD-based print clients have a limited future.<br><br></div><div>Cheers,<br=
></div><div>- Ira<br><br></div></div><div></div></div><div class=3D"gmail_e=
xtra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr=
">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mo=
bility Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Secreta=
ry - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet P=
rinting Protocol WG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>Bl=
ue Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D=
"http://sites.google.com/site/blueroofmusic" target=3D"_blank">http://sites=
.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" hre=
f=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">http://si=
tes.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailto:blueroofm=
usic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br>Winter=C2=
=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094<br>Summe=
r=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434<br><br><=
div style=3D"display:inline"></div><div style=3D"display:inline"></div><div=
 style=3D"display:inline"></div><div></div><div></div><div></div><div></div=
></div></div></div>
<br><div class=3D"gmail_quote">On Sat, Mar 26, 2016 at 6:21 PM, Richard Hug=
hes <span dir=3D"ltr">&lt;<a href=3D"mailto:hughsient@gmail.com" target=3D"=
_blank">hughsient@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><p dir=3D"ltr">What point is there continuing CMPD if there is lit=
erally zero buy in for Android, iOS, Windows or even the Ubuntu phone? What=
 point is a purely theoretical specification with an implementation that no=
ne of the mobile OS vendors want to (or could) use? Seems like a wasted GSo=
C student to my eyes. Sorry to be blunt.</p><span class=3D"HOEnZb"><font co=
lor=3D"#888888">
<p dir=3D"ltr">Richard</p></font></span><div class=3D"HOEnZb"><div class=3D=
"h5">
<div class=3D"gmail_quote">On 26 Mar 2016 7:31 pm, &quot;Ira McDonald&quot;=
 &lt;<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofm=
usic@gmail.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr"><div><div><div><div><div><div>Hi Michael,<br><br=
></div>Many thanks to GTK and QT folks for responding.<br><br></div>My comm=
ents are informal.=C2=A0 CPD was focused on large-screen laptops and<br></d=
iv>desktops and explicitly ruled out UI for smartphones.=C2=A0 That focus d=
rew some<br></div>criticism at the time.=C2=A0 <br><br>Before his retiremen=
t from EPSON, Glen Petrie did some excellent work<br></div>on a lightweight=
 Common Mobile Print Dialog that was scaleable across all <br>mobile device=
s, screens, and input methods and specifically optimized for <br>small-scre=
en smartphones and written in pure C (for portability).=C2=A0 The design,<b=
r>code, and presentations are archived on the IEEE-ISTO PWG FTP server at:<=
br><br></div><div>=C2=A0 <a href=3D"http://ftp.pwg.org/pub/pwg/openprinting=
/common.mobile.print/" target=3D"_blank">http://ftp.pwg.org/pub/pwg/openpri=
nting/common.mobile.print/</a><br><br></div><div>Till and I would both be d=
elighted to see CMPD work resumed and completed.<br></div><div><br></div><d=
iv>Cheers,<br></div><div>- Ira<br></div><div><br></div><div class=3D"gmail_=
extra"><br clear=3D"all"><div><div><div dir=3D"ltr">Ira McDonald (Musician =
/ Software Architect)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Ch=
air - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer Wo=
rking Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IE=
TF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High Nort=
h Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/=
site/blueroofmusic" target=3D"_blank">http://sites.google.com/site/blueroof=
music</a><br><a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.=
com/site/highnorthinc" target=3D"_blank">http://sites.google.com/site/highn=
orthinc</a><br>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D=
"_blank">blueroofmusic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 S=
aline, MI=C2=A0 48176=C2=A0 <a href=3D"tel:734-944-0094" value=3D"+17349440=
094" target=3D"_blank">734-944-0094</a><br>Summer=C2=A0 PO Box 221=C2=A0 Gr=
and Marais, MI 49839=C2=A0 <a href=3D"tel:906-494-2434" value=3D"+190649424=
34" target=3D"_blank">906-494-2434</a><br><br><div style=3D"display:inline"=
></div><div style=3D"display:inline"></div><div style=3D"display:inline"></=
div><div></div><div></div><div></div><div></div></div></div></div>
<br><div class=3D"gmail_quote">On Sat, Mar 26, 2016 at 2:19 PM, Michael Weg=
horn <span dir=3D"ltr">&lt;<a href=3D"mailto:m.weghorn@posteo.de" target=3D=
"_blank">m.weghorn@posteo.de</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Thank you for your quick replies.<br>
<br>
If neither GTK+ nor Qt are planning to support the CPD, this does not<br>
sound like it had a very bright future.<br>
<br>
Maybe it might be a good idea to add some note about the current status<br>
in the CPD section on the website so that other people looking at it can<br=
>
quickly get an idea of it.<br>
<br>
Are there possibly other plans/ideas to provide a more consistent user<br>
experience in printing dialogs across various applications?<br>
The current situation with so many different printing dialogs (e.g. GTK,<br=
>
KDE, LibreOffice, Java, several applications having their one one&#39;s,<br=
>
...) that look differently and have a different set of features does not<br=
>
seem optimal to me.<br>
<br>
Also, from a developer&#39;s point of view it is non-optimal when adding a<=
br>
new feature or fixing a bug potentially requires making that change<br>
several times in totally different code bases (I only know LibreOffice,<br>
Qt 4 and GTK)...<br>
<br>
Best regards,<br>
Michael<br>
<div><div><br>
On 2016-03-26 18:01, John Layt wrote:<br>
&gt; On 26 March 2016 at 15:42, Richard Hughes &lt;<a href=3D"mailto:hughsi=
ent@gmail.com" target=3D"_blank">hughsient@gmail.com</a>&gt; wrote:<br>
&gt;&gt; On 26 March 2016 at 15:03, Michael Weghorn &lt;<a href=3D"mailto:m=
.weghorn@posteo.de" target=3D"_blank">m.weghorn@posteo.de</a>&gt; wrote:<br=
>
&gt;&gt;&gt; Could somebody possibly say something about the current status=
 of the<br>
&gt;&gt;&gt; Common Printing Dialog?<br>
&gt;&gt;<br>
&gt;&gt; Last time I spoke to the GTK maintainers and the GNOME Design team=
<br>
&gt;&gt; there was a total lack of support for the project.<br>
&gt;&gt;<br>
&gt;&gt; Richard<br>
&gt;<br>
&gt; While the usual Qt policy is to use the host platform facilities where=
<br>
&gt; available, Qt has no interest in using CPD either, at least not in the=
<br>
&gt; architecture proposed. There were too many implementation issues and<b=
r>
&gt; no funding for the required cross-platform architectural changes that<=
br>
&gt; Qt would have required.<br>
&gt;<br>
&gt; John.<br>
&gt; _______________________________________________<br>
&gt; Printing-architecture mailing list<br>
&gt; <a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" ta=
rget=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing=
-architecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoun=
dation.org/mailman/listinfo/printing-architecture</a><br>
&gt;<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</div></div></blockquote></div><br></div></div>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
<br></blockquote></div>
</div></div></blockquote></div><br></div>

--001a113ee4bc8edb4c052efba37c--
