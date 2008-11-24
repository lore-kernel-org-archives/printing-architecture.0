Message-ID: <008201c94dfe$77ae3fb0$7302640a@mona>
From: "chirag Shah" <chirag.shah@einfochips.com>
References: <003801c94ad0$279307d0$7302640a@mona>
	<9624da290811230511v10e7be98u7ecefff0aad6d841@mail.gmail.com>
Date: Mon, 24 Nov 2008 12:02:44 +0530
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_007F_01C94E2C.8F52DDF0"
Subject: Re: [Printing-architecture] Embedded printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Matt Gessner <magembcons@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.

------=_NextPart_000_007F_01C94E2C.8F52DDF0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Matt,

Thanks for your responce. But i need complete details on this as i am =
new to linux and especially for printing.=20
Let me explain my experiments and assumptions:
  a.. My montavista kernel is having support for CUPS but not of =
ghostscripts, hpijs and libijs. I tried to print .jpg images directly to =
the HP b/w printer, it worked fine. But when i tried to print .txt or =
.vi file having normal text, its not getting printed. So i assumed that =
my kernel is not having support to creaete .PS files and to convert .PS =
files in to printable form.
  b.. So, i am trying to cross-compile ghostscipt code for my arm-v5t-le =
compiler. I changed configure files to make this happen. I will share =
the end result of my cross-compiling once its over.
  c.. Before cross compiling of ghostscript, I also tried to build hpijs =
code (which is part of my shost script source package) independently (to =
run hpijs_client_example), but i think it is not getting some function =
definitions which are in some libraries. So i am playing a gamble to =
cross-compile ghost script on my ARM board.
I am expecting from you:
  a.. In one liner, i need everything working for HP laserjet printer =
from you. I dont want to spent time on this as we are developing =
application not the driver / system support package for this project.
  b.. How could i convert my report file (can have text and images both) =
in to raster data. I think this is done by ghost script.
  c.. How hpijs will be useful to me without ghost script? Frenkly =
speaking i want to know what exactly hpijs and libijs are for ? As per =
my understandings, hpijs are using ghostscripts and without ghostscript =
, i can not use hpijs.
  d.. can you please provide complete source code package with =
installation and running steps to make HP printer working ? I think this =
will be good to not to spent more time on something which is proven and =
discovered.=20
Thanks in advance.
Regards,
Chirag Shah
  ----- Original Message -----=20
  From: Matt Gessner=20
  To: chirag Shah=20
  Cc: printing-architecture@lists.linux-foundation.org=20
  Sent: Sunday, November 23, 2008 6:41 PM
  Subject: Re: [Printing-architecture] Embedded printing


  Hi,

  What we ended up doing is invoking hp via fork() and exec(), with a =
pipe dup'd over the new process's stdout.

  Then we did a fork() and exec() and started hp, and set the OutputFD =
parameter to the hp's dup'd stdout pipe fd.

  Then we used the ijs_client commands (taken from the =
ijs_client_example, mostly) to get the printing done.

  Part of our system creates the raster in memory before invoking the =
printing.  We had to previously agree on the resolution (150x150 -- =
we're low on memory) and a full 8.5x11.0 page.  Then I simply converted =
the raster from ARGB to RGB (being careful of the system endianness!)=20

  If you would like me to post more details, I'd be happy to do that.  =
Sometimes people like to figure things out themselves.

  It works pretty darn well.  One thing to watch is that you get the =
PrintableTopLeft value via ijs_client_get_parm() because it will affect =
how your page looks if you want a margin that's greater than the built =
in one on the printer.

  We used no cups, and no ghostscript.  Another person on the team =
figured out how to get it into OE.  I can give you the basics for =
compiling everything if you want it.

  You need hp, which requires hpmud for USB comms.  You also need hpijs =
(which builds the commands and spits them to OutputFD) and libijs (which =
is the ijs client stuff).

  This was one of several approaches I tried to make this work.  It's =
the only one that works.

  Oh, I also tore into the ghostscript code to see how it used the hpijs =
tool, and that provided an interesting detail or two that saved me some =
time.  The rest I figured out via experimentation.

  I hope this helps.

  Regards,

  Matt


  On Thu, Nov 20, 2008 at 12:22 AM, chirag Shah =
<chirag.shah@einfochips.com> wrote:

    Hi All,

    Sorry to copy paste whole thread as i did not find any button to =
post reply on continued thread. Anyway doesn't matter.
    What i would like to ask is, i am in the simillar situation as =
"Matt".=20

    I am developing an embedded system in which i need to give support =
of laser printers. I am having monta vista linux 2.6 on my ARM based =
embedded board. In that basic kernel i am having support of CUPS through =
which i was able to print only .jpg files. I used lp commands to print =
.jpg file. But my end goal is to print a report which can have text and =
images combined on same page. I am not able to print a simple .txt or =
.vi file.

    For that, i believe i need ghost script support. But my monta vista =
linux is not having support for ghost script. I tried to cross-compile =
ghost script source with my arm tool-chain but it failed.

    So, how can i add support of laser printers in my embedded(ARM =
based) system?

    Thanks in advance,
    Chirag Shah (A new member eager for favorable reply :) )



    Matt Gessner magembcons at gmail.com=20
    Mon Oct 13 10:46:18 PDT 2008=20

      a.. Previous message: [Printing-architecture] Embedded printing=20
      b.. Next message: [Printing-architecture] CANCEL - Next OP SC - =
Mon/Tue - 13/14 October 2008=20
      c.. Messages sorted by: [ date ] [ thread ] [ subject ] [ author ] =


-------------------------------------------------------------------------=
---

Hello, and thank you.

Is the HPIJS solution part of the HPLIP solution?  Or is it something
different?

On the web page, http://www.linuxprinting.org/ijs there are some drivers
listed, but I'm confused as to where to go from there?

Also, is there a web page that describes in detail what I need?  =
Something
that lays out the architecture of what needs to be done by applications =
(do
I need lpd, CUPS, or something else?)  I've skimmed lots of =
documentation,
so perhaps I've missed something in my skimming that would answer all my
questions.

THanks lots,

Matt

On Mon, Oct 13, 2008 at 12:33 PM, Petrie, Glen
<glen.petrie at eitc.epson.com>wrote:

>  Matt,
>
>
>
> For embedded solutions, IJS (for Epson and others) or HPIJS (for HP
> printers) is a suggestion.  It is small, MIT open-source driver; and,
> print-vender drivers typically do not have floating point.   (Contact =
me for
> a CD of Epson's version of the IJS.)
>
>
>
> Epson also has a generic, platform independent, non-floating driver =
for
> their desktop inkjet printer. (Contact me if you are interested.)
>
>
>
> glen
>
>
>   ------------------------------
>
> *From:* printing-architecture-bounces at lists.linux-foundation.org =
[mailto:
> printing-architecture-bounces at lists.linux-foundation.org] *On =
Behalf Of *Matt
> Gessner
> *Sent:* Sunday, October 12, 2008 6:33 PM
> *To:* printing-architecture at lists.linux-foundation.org
> *Subject:* [Printing-architecture] Embedded printing
>
>
>
> Hi,
>
> I''m looking for some solutions for doing printing on an embedded =
system
> (arm, if it matters).  Raster screen shots and simple text reports are
> (pretty much) all that's desired.
>
> One objective is to avoid using anything that requires floating point =
math,
> as it's only emulated on this particular arm.
>
> I've been searcing the lists and can't find anything specific to =
embedded
> systems, but in an O'Reilly article from 2007, there's a note that =
such
> capabilities would be added in 6 months.  Since we're well past that =
date,
> I'm wondering if that's been tackled.
>
> Would someone please point me to some resources where I could read up =
on
> how to do printing on such a system?  I will continue to do my own =
research,
> but it sure seems like this is an area where there would be some =
discussion
> so I'm hoping this is the right list.
>
> Thank you.


--=20
_____________________________________________________________________
Disclaimer: This e-mail message and all attachments transmitted with it
are intended solely for the use of the addressee and may contain legally
privileged and confidential information. If the reader of this message
is not the intended recipient, or an employee or agent responsible for
delivering this message to the intended recipient, you are hereby
notified that any dissemination, distribution, copying, or other use of
this message or its attachments is strictly prohibited. If you have
received this message in error, please notify the sender immediately by
replying to this message and please delete it from your computer. Any
views expressed in this message are those of the individual sender
unless otherwise stated.Company has taken enough precautions to prevent
the spread of viruses. However the company accepts no liability for any
damage caused by any virus transmitted by this email.
_____________________________________________________________________
=20



    _______________________________________________
    Printing-architecture mailing list
    Printing-architecture@lists.linux-foundation.org
    =
https://lists.linux-foundation.org/mailman/listinfo/printing-architecture=






        Email Scanned for Virus & Dangerous Content by : =
www.CleanMailGateway.com=20

-- 
_____________________________________________________________________
Disclaimer: This e-mail message and all attachments transmitted with it
are intended solely for the use of the addressee and may contain legally
privileged and confidential information. If the reader of this message
is not the intended recipient, or an employee or agent responsible for
delivering this message to the intended recipient, you are hereby
notified that any dissemination, distribution, copying, or other use of
this message or its attachments is strictly prohibited. If you have
received this message in error, please notify the sender immediately by
replying to this message and please delete it from your computer. Any
views expressed in this message are those of the individual sender
unless otherwise stated.Company has taken enough precautions to prevent
the spread of viruses. However the company accepts no liability for any
damage caused by any virus transmitted by this email.
_____________________________________________________________________
 

------=_NextPart_000_007F_01C94E2C.8F52DDF0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1">
<META content=3D"MSHTML 6.00.5730.11" name=3DGENERATOR>
<STYLE></STYLE>
</HEAD>
<BODY bgColor=3D#ffffff>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2>Hi Matt,</FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2>Thanks for your =
responce. But i need=20
complete details on this as i am new to linux and especially for =
printing.=20
</FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2><STRONG>Let me explain =
my experiments=20
and assumptions:</STRONG></FONT></DIV>
<UL>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>My montavista kernel =
is having=20
  support for CUPS but not of ghostscripts, hpijs and libijs. I tried to =
print=20
  .jpg images directly to the HP b/w printer, it worked fine. But when i =
tried=20
  to print .txt or .vi file having normal text, its not getting printed. =
So i=20
  assumed that my kernel is not having support to creaete .PS files and =
to=20
  convert .PS files in to printable form.</FONT></LI>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>So, i am trying to =
cross-compile=20
  ghostscipt code for my arm-v5t-le compiler. I changed configure files =
to make=20
  this happen. I will share the end result of my cross-compiling once =
its=20
  over.</FONT></LI>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>Before cross compiling =
of=20
  ghostscript, I also tried to build hpijs code&nbsp;(which is part of =
my shost=20
  script source package) independently (to run hpijs_client_example), =
but i=20
  think it is not getting some function definitions which are in some =
libraries.=20
  So i am playing a gamble to cross-compile ghost script on my ARM=20
  board.</FONT></LI></UL>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2><STRONG>I am expecting =
from=20
you:</STRONG></FONT></DIV>
<UL>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>In one liner, i need =
everything=20
  working for HP laserjet printer from you. I dont want to spent time on =
this as=20
  we are developing application not the driver / system support package =
for this=20
  project.</FONT></LI>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>How could i convert my =
report file=20
  (can have text and images both) in to raster data. I think this is =
done by=20
  ghost script.</FONT></LI>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>How hpijs will be =
useful to me=20
  without ghost script? Frenkly speaking i want to know what exactly =
hpijs and=20
  libijs&nbsp;are for ? As per my understandings, hpijs are using =
ghostscripts=20
  and without ghostscript , i can not use hpijs.</FONT></LI>
  <LI><FONT face=3DArial color=3D#0000ff size=3D2>can you please provide =
complete=20
  source code package with installation and running steps to make HP =
printer=20
  working ? I think this will be good to not to spent more time on =
something=20
  which is proven and discovered. </FONT></LI></UL>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2>Thanks in =
advance.</FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2>Regards,</FONT></DIV>
<DIV><FONT face=3DArial color=3D#0000ff size=3D2>Chirag =
Shah</FONT></DIV>
<BLOCKQUOTE=20
style=3D"PADDING-RIGHT: 0px; PADDING-LEFT: 5px; MARGIN-LEFT: 5px; =
BORDER-LEFT: #0000ff 2px solid; MARGIN-RIGHT: 0px">
  <DIV style=3D"FONT: 10pt arial">----- Original Message ----- </DIV>
  <DIV=20
  style=3D"BACKGROUND: #e4e4e4; FONT: 10pt arial; font-color: =
black"><B>From:</B>=20
  <A title=3Dmagembcons@gmail.com =
href=3D"mailto:magembcons@gmail.com">Matt=20
  Gessner</A> </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>To:</B> <A =
title=3Dchirag.shah@einfochips.com=20
  href=3D"mailto:chirag.shah@einfochips.com">chirag Shah</A> </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Cc:</B> <A=20
  title=3Dprinting-architecture@lists.linux-foundation.org=20
  =
href=3D"mailto:printing-architecture@lists.linux-foundation.org">printing=
-architecture@lists.linux-foundation.org</A>=20
  </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Sent:</B> Sunday, November 23, 2008 =
6:41=20
  PM</DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Subject:</B> Re: =
[Printing-architecture]=20
  Embedded printing</DIV>
  <DIV><BR></DIV>Hi,<BR><BR>What we ended up doing is invoking hp via =
fork() and=20
  exec(), with a pipe dup'd over the new process's stdout.<BR><BR>Then =
we did a=20
  fork() and exec() and started hp, and set the OutputFD parameter to =
the hp's=20
  dup'd stdout pipe fd.<BR><BR>Then we used the ijs_client commands =
(taken from=20
  the ijs_client_example, mostly) to get the printing done.<BR><BR>Part =
of our=20
  system creates the raster in memory before invoking the =
printing.&nbsp; We had=20
  to previously agree on the resolution (150x150 -- we're low on memory) =
and a=20
  full 8.5x11.0 page.&nbsp; Then I simply converted the raster from ARGB =
to RGB=20
  (being careful of the system endianness!) <BR><BR>If you would like me =
to post=20
  more details, I'd be happy to do that.&nbsp; Sometimes people like to =
figure=20
  things out themselves.<BR><BR>It works pretty darn well.&nbsp; One =
thing to=20
  watch is that you get the PrintableTopLeft value via =
ijs_client_get_parm()=20
  because it will affect how your page looks if you want a margin that's =
greater=20
  than the built in one on the printer.<BR><BR>We used no cups, and no=20
  ghostscript.&nbsp; Another person on the team figured out how to get =
it into=20
  OE.&nbsp; I can give you the basics for compiling everything if you =
want=20
  it.<BR><BR>You need hp, which requires hpmud for USB comms.&nbsp; You =
also=20
  need hpijs (which builds the commands and spits them to OutputFD) and =
libijs=20
  (which is the ijs client stuff).<BR><BR>This was one of several =
approaches I=20
  tried to make this work.&nbsp; It's the only one that =
works.<BR><BR>Oh, I also=20
  tore into the ghostscript code to see how it used the hpijs tool, and =
that=20
  provided an interesting detail or two that saved me some time.&nbsp; =
The rest=20
  I figured out via experimentation.<BR><BR>I hope this=20
  helps.<BR><BR>Regards,<BR><BR>Matt<BR><BR>
  <DIV class=3Dgmail_quote>On Thu, Nov 20, 2008 at 12:22 AM, chirag Shah =
<SPAN=20
  dir=3Dltr>&lt;<A=20
  =
href=3D"mailto:chirag.shah@einfochips.com">chirag.shah@einfochips.com</A>=
&gt;</SPAN>=20
  wrote:<BR>
  <BLOCKQUOTE class=3Dgmail_quote=20
  style=3D"PADDING-LEFT: 1ex; MARGIN: 0pt 0pt 0pt 0.8ex; BORDER-LEFT: =
rgb(204,204,204) 1px solid">
    <DIV bgcolor=3D"#ffffff">
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Hi =
All,</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Sorry to =
copy paste whole=20
    thread as i did not find any button to post reply on continued =
thread.=20
    Anyway doesn't matter.</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>What i =
would like to ask=20
    is, i am in the simillar situation as "Matt". </FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>I am =
developing an=20
    embedded system in which i need to give support of laser printers. I =
am=20
    having monta vista linux 2.6 on my ARM based embedded board. In that =
basic=20
    kernel i am having support of CUPS through which&nbsp;i was able to =
print=20
    only .jpg files. I used lp commands to print .jpg file. But my end =
goal is=20
    to print a report which can have text and images combined on same =
page. I am=20
    not able to print a simple .txt or .vi file.</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>For that, i =
believe i=20
    need ghost script support. But my monta vista linux is not having =
support=20
    for ghost script. I tried to cross-compile ghost script source with =
my arm=20
    tool-chain but it failed.</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>So, how can =
i add support=20
    of laser printers in my embedded(ARM based) system?</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Thanks in=20
    advance,</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Chirag Shah =
(A new member=20
    eager for favorable reply :) )</FONT></DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff=20
size=3D2><B></B></FONT>&nbsp;</DIV>
    <DIV><FONT face=3D"Courier New"><FONT size=3D2><FONT =
color=3D#0000ff><B>Matt=20
    Gessner</B> </FONT></FONT></FONT><A=20
    title=3D"[Printing-architecture] Embedded printing"=20
    =
href=3D"mailto:printing-architecture@lists.linux-foundation.org?Subject=3D=
%5BPrinting-architecture%5D%20Embedded%20printing&amp;In-Reply-To=3DED409=
4DE5E8ACD4BBDACA6AD398E608F1B2746%40EEAEX03.us.epson.net"=20
    target=3D_blank><FONT face=3D"Courier New" size=3D2>magembcons at =
gmail.com=20
    </FONT></A><BR><FONT face=3D"Courier New"><FONT size=3D2><FONT=20
    color=3D#0000ff><I>Mon Oct 13 10:46:18 PDT 2008</I>=20
</FONT></FONT></FONT></DIV>
    <P><FONT face=3D"Courier New" color=3D#0000ff size=3D2></FONT></P>
    <UL>
      <LI><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Previous =
message:=20
      </FONT><A=20
      =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/001589.html"=20
      target=3D_blank><FONT face=3D"Courier New" =
size=3D2>[Printing-architecture]=20
      Embedded printing </FONT></A>
      <LI><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Next =
message: </FONT><A=20
      =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/001592.html"=20
      target=3D_blank><FONT face=3D"Courier New" =
size=3D2>[Printing-architecture]=20
      CANCEL - Next OP SC - Mon/Tue - 13/14 October 2008 </FONT></A>
      <LI><FONT face=3D"Courier New"><FONT size=3D2><FONT =
color=3D#0000ff><B>Messages=20
      sorted by:</B> </FONT></FONT></FONT><A=20
      =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/date.html#1590"=20
      target=3D_blank><FONT face=3D"Courier New" size=3D2>[ date =
]</FONT></A><FONT=20
      face=3D"Courier New" color=3D#0000ff size=3D2> </FONT><A=20
      =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/thread.html#1590"=20
      target=3D_blank><FONT face=3D"Courier New" size=3D2>[ thread =
]</FONT></A><FONT=20
      face=3D"Courier New" color=3D#0000ff size=3D2> </FONT><A=20
      =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/subject.html#1590"=20
      target=3D_blank><FONT face=3D"Courier New" size=3D2>[ subject =
]</FONT></A><FONT=20
      face=3D"Courier New" color=3D#0000ff size=3D2> </FONT><A=20
      =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/author.html#1590"=20
      target=3D_blank><FONT face=3D"Courier New" size=3D2>[ author =
]</FONT></A><FONT=20
      face=3D"Courier New" color=3D#0000ff size=3D2> </FONT></LI></UL>
    <DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>
    <HR>
    </FONT></DIV><PRE><FONT color=3D#0000ff size=3D2>Hello, and thank =
you.

Is the HPIJS solution part of the HPLIP solution?  Or is it something
different?

On the web page, </FONT><A href=3D"http://www.linuxprinting.org/ijs" =
target=3D_blank><FONT =
size=3D2>http://www.linuxprinting.org/ijs</FONT></A><FONT =
color=3D#0000ff size=3D2> there are some drivers
listed, but I'm confused as to where to go from there?

Also, is there a web page that describes in detail what I need?  =
Something
that lays out the architecture of what needs to be done by applications =
(do
I need lpd, CUPS, or something else?)  I've skimmed lots of =
documentation,
so perhaps I've missed something in my skimming that would answer all my
questions.

THanks lots,

Matt

On Mon, Oct 13, 2008 at 12:33 PM, Petrie, Glen
&lt;</FONT><A =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture" target=3D_blank><FONT size=3D2>glen.petrie at =
eitc.epson.com</FONT></A><FONT color=3D#0000ff size=3D2>&gt;wrote:

&gt;</FONT><FONT size=3D2><FONT color=3D#0000ff><I>  Matt,
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> For embedded solutions, IJS (for Epson and others) =
or HPIJS (for HP
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> printers) =
is a suggestion.  It is small, MIT open-source driver; and,
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> =
print-vender drivers typically do not have floating point.   (Contact me =
for
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> a CD of =
Epson's version of the IJS.)
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> Epson also has a generic, platform independent, =
non-floating driver for
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> their =
desktop inkjet printer. (Contact me if you are interested.)
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> glen
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I>   ------------------------------
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I><FONT color=3D#0000ff =
size=3D2> *From:* </FONT><A =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture" target=3D_blank><FONT size=3D2>printing-architecture-bounces =
at lists.linux-foundation.org</FONT></A><FONT color=3D#0000ff size=3D2> =
[mailto:
</FONT></I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I><FONT =
color=3D#0000ff size=3D2> </FONT><A =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture" target=3D_blank><FONT size=3D2>printing-architecture-bounces =
at lists.linux-foundation.org</FONT></A><FONT color=3D#0000ff size=3D2>] =
*On Behalf Of *Matt
</FONT></I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT =
size=3D2><FONT color=3D#0000ff><I> Gessner
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> *Sent:* =
Sunday, October 12, 2008 6:33 PM
</I>&gt;</FONT></FONT><I><FONT color=3D#0000ff size=3D2> *To:* </FONT><A =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture" target=3D_blank><FONT size=3D2>printing-architecture at =
lists.linux-foundation.org</FONT></A>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> *Subject:* [Printing-architecture] Embedded printing
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> Hi,
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> I''m looking for some solutions for doing printing =
on an embedded system
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> (arm, if =
it matters).  Raster screen shots and simple text reports are
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> (pretty =
much) all that's desired.
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> One objective is to avoid using anything that =
requires floating point math,
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> as it's =
only emulated on this particular arm.
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> I've been searcing the lists and can't find anything =
specific to embedded
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> systems, =
but in an O'Reilly article from 2007, there's a note that such
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> =
capabilities would be added in 6 months.  Since we're well past that =
date,
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> I'm =
wondering if that's been tackled.
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT size=3D2><FONT =
color=3D#0000ff><I> Would someone please point me to some resources =
where I could read up on
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> how to do =
printing on such a system?  I will continue to do my own research,
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> but it =
sure seems like this is an area where there would be some discussion
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> so I'm =
hoping this is the right list.
</I>&gt;</FONT></FONT><I>
</I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I><FONT color=3D#0000ff =
size=3D2> Thank you.
</FONT></I></PRE><BR><PRE>--=20
_____________________________________________________________________
Disclaimer: This e-mail message and all attachments transmitted with it
are intended solely for the use of the addressee and may contain legally
privileged and confidential information. If the reader of this message
is not the intended recipient, or an employee or agent responsible for
delivering this message to the intended recipient, you are hereby
notified that any dissemination, distribution, copying, or other use of
this message or its attachments is strictly prohibited. If you have
received this message in error, please notify the sender immediately by
replying to this message and please delete it from your computer. Any
views expressed in this message are those of the individual sender
unless otherwise stated.Company has taken enough precautions to prevent
the spread of viruses. However the company accepts no liability for any
damage caused by any virus transmitted by this email.
_____________________________________________________________________
=20
</PRE><BR></DIV><BR>_______________________________________________<BR>Pr=
inting-architecture=20
    mailing list<BR><A=20
    =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing=
-architecture@lists.linux-foundation.org</A><BR><A=20
    =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture"=20
    =
target=3D_blank>https://lists.linux-foundation.org/mailman/listinfo/print=
ing-architecture</A><BR><BR></BLOCKQUOTE></DIV><BR><BR><BR>
  <TABLE cellSpacing=3D0 cellPadding=3D0 width=3D100 align=3Dleft =
border=3D0>
    <TBODY>
    <TR>
      <TD align=3Dmiddle>
        <DIV align=3Dleft><FONT face=3D"Arial, Helvetica, sans-serif" =
color=3D#000000=20
        size=3D2><STRONG>Email Scanned for Virus &amp; Dangerous Content =
by=20
        :</STRONG></FONT><FONT face=3D"Arial, Helvetica, sans-serif" =
color=3D#ffcc00=20
        size=3D2>=20
    =
<STRONG>www.CleanMailGateway.com</STRONG></FONT></DIV></TD></TR></TBODY><=
/TABLE></BLOCKQUOTE><BR>
<pre>-- 
_____________________________________________________________________
Disclaimer: This e-mail message and all attachments transmitted with it
are intended solely for the use of the addressee and may contain legally
privileged and confidential information. If the reader of this message
is not the intended recipient, or an employee or agent responsible for
delivering this message to the intended recipient, you are hereby
notified that any dissemination, distribution, copying, or other use of
this message or its attachments is strictly prohibited. If you have
received this message in error, please notify the sender immediately by
replying to this message and please delete it from your computer. Any
views expressed in this message are those of the individual sender
unless otherwise stated.Company has taken enough precautions to prevent
the spread of viruses. However the company accepts no liability for any
damage caused by any virus transmitted by this email.
_____________________________________________________________________
 
</pre>

<BR>
</BODY></HTML>

------=_NextPart_000_007F_01C94E2C.8F52DDF0--

