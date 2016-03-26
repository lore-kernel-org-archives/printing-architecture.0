Return-Path: <hughsient@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=vDAECjm/I/JJP29raeu6KmP8jtUWU4+x04E5zFqKqbc=;
	b=Ibs99eBJ1mWR/XI7CRQ/U67TYgNC7zOlwG/LMnlJoOS3/P8z8gA1BTYIT1Irmvc3Yt
	VV4eWu8WF+vwm7MdfCbSQgLhffTjH/K9EN3FZsrgBfEwM31BWpvXGILavTaGEKP9h0rN
	uOcMLOmLlmaZn8O/iXMX5mv3029pFElhIO7arKB8Rh2NT2kE5kgoNzJzQ9srhexgvmcJ
	qEO1QsoYUsc0NvyBoNbDc/KaFmbfgZ1ePip1lgWe3rKEVXyy4gn5U2hUkGlRzYsAhajp
	Zw6itv+jDI90Q1+DO6NksOfORAjG31rEUJy48LrDWMK8atYCE6aIr5q7e3bc2yRpIze9
	DABw==
MIME-Version: 1.0
In-Reply-To: <CAN40gSsa6nn5DMYKtbHapet88ybiSTDaZBWVE8KuUYNaZ2R0hw@mail.gmail.com>
References: <CAN40gSsa6nn5DMYKtbHapet88ybiSTDaZBWVE8KuUYNaZ2R0hw@mail.gmail.com>
Date: Sat, 26 Mar 2016 22:21:41 +0000
Message-ID: <CAD2FfiHJmKdT5fyWmpyGx-_H5-gysDwaMWAg6vdJ91PJO8Sgqg@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: multipart/alternative; boundary=089e013c68e69473e8052efb1a38
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
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--089e013c68e69473e8052efb1a38
Content-Type: text/plain; charset=UTF-8

What point is there continuing CMPD if there is literally zero buy in for
Android, iOS, Windows or even the Ubuntu phone? What point is a purely
theoretical specification with an implementation that none of the mobile OS
vendors want to (or could) use? Seems like a wasted GSoC student to my
eyes. Sorry to be blunt.

Richard
On 26 Mar 2016 7:31 pm, "Ira McDonald" <blueroofmusic@gmail.com> wrote:

> Hi Michael,
>
> Many thanks to GTK and QT folks for responding.
>
> My comments are informal.  CPD was focused on large-screen laptops and
> desktops and explicitly ruled out UI for smartphones.  That focus drew some
> criticism at the time.
>
> Before his retirement from EPSON, Glen Petrie did some excellent work
> on a lightweight Common Mobile Print Dialog that was scaleable across all
> mobile devices, screens, and input methods and specifically optimized for
> small-screen smartphones and written in pure C (for portability).  The
> design,
> code, and presentations are archived on the IEEE-ISTO PWG FTP server at:
>
>   http://ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/
>
> Till and I would both be delighted to see CMPD work resumed and completed.
>
> Cheers,
> - Ira
>
>
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
> On Sat, Mar 26, 2016 at 2:19 PM, Michael Weghorn <m.weghorn@posteo.de>
> wrote:
>
>> Thank you for your quick replies.
>>
>> If neither GTK+ nor Qt are planning to support the CPD, this does not
>> sound like it had a very bright future.
>>
>> Maybe it might be a good idea to add some note about the current status
>> in the CPD section on the website so that other people looking at it can
>> quickly get an idea of it.
>>
>> Are there possibly other plans/ideas to provide a more consistent user
>> experience in printing dialogs across various applications?
>> The current situation with so many different printing dialogs (e.g. GTK,
>> KDE, LibreOffice, Java, several applications having their one one's,
>> ...) that look differently and have a different set of features does not
>> seem optimal to me.
>>
>> Also, from a developer's point of view it is non-optimal when adding a
>> new feature or fixing a bug potentially requires making that change
>> several times in totally different code bases (I only know LibreOffice,
>> Qt 4 and GTK)...
>>
>> Best regards,
>> Michael
>>
>> On 2016-03-26 18:01, John Layt wrote:
>> > On 26 March 2016 at 15:42, Richard Hughes <hughsient@gmail.com> wrote:
>> >> On 26 March 2016 at 15:03, Michael Weghorn <m.weghorn@posteo.de>
>> wrote:
>> >>> Could somebody possibly say something about the current status of the
>> >>> Common Printing Dialog?
>> >>
>> >> Last time I spoke to the GTK maintainers and the GNOME Design team
>> >> there was a total lack of support for the project.
>> >>
>> >> Richard
>> >
>> > While the usual Qt policy is to use the host platform facilities where
>> > available, Qt has no interest in using CPD either, at least not in the
>> > architecture proposed. There were too many implementation issues and
>> > no funding for the required cross-platform architectural changes that
>> > Qt would have required.
>> >
>> > John.
>> > _______________________________________________
>> > Printing-architecture mailing list
>> > Printing-architecture@lists.linux-foundation.org
>> >
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>> >
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--089e013c68e69473e8052efb1a38
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">What point is there continuing CMPD if there is literally ze=
ro buy in for Android, iOS, Windows or even the Ubuntu phone? What point is=
 a purely theoretical specification with an implementation that none of the=
 mobile OS vendors want to (or could) use? Seems like a wasted GSoC student=
 to my eyes. Sorry to be blunt.</p>
<p dir=3D"ltr">Richard</p>
<div class=3D"gmail_quote">On 26 Mar 2016 7:31 pm, &quot;Ira McDonald&quot;=
 &lt;<a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div><div><div><div><div>Hi Michael,<br><br></div>Many thanks=
 to GTK and QT folks for responding.<br><br></div>My comments are informal.=
=C2=A0 CPD was focused on large-screen laptops and<br></div>desktops and ex=
plicitly ruled out UI for smartphones.=C2=A0 That focus drew some<br></div>=
criticism at the time.=C2=A0 <br><br>Before his retirement from EPSON, Glen=
 Petrie did some excellent work<br></div>on a lightweight Common Mobile Pri=
nt Dialog that was scaleable across all <br>mobile devices, screens, and in=
put methods and specifically optimized for <br>small-screen smartphones and=
 written in pure C (for portability).=C2=A0 The design,<br>code, and presen=
tations are archived on the IEEE-ISTO PWG FTP server at:<br><br></div><div>=
=C2=A0 <a href=3D"http://ftp.pwg.org/pub/pwg/openprinting/common.mobile.pri=
nt/" target=3D"_blank">http://ftp.pwg.org/pub/pwg/openprinting/common.mobil=
e.print/</a><br><br></div><div>Till and I would both be delighted to see CM=
PD work resumed and completed.<br></div><div><br></div><div>Cheers,<br></di=
v><div>- Ira<br></div><div><br></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div><div dir=3D"ltr">Ira McDonald (Musician / Software Archi=
tect)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux Foun=
dation Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>C=
o-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated Ex=
pert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a styl=
e=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmus=
ic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a =
style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highnor=
thinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>m=
ailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroo=
fmusic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 =
48176=C2=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI =
49839=C2=A0 906-494-2434<br><br><div style=3D"display:inline"></div><div st=
yle=3D"display:inline"></div><div style=3D"display:inline"></div><div></div=
><div></div><div></div><div></div></div></div></div>
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
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
<br></blockquote></div>

--089e013c68e69473e8052efb1a38--
