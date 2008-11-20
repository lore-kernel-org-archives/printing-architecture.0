Message-ID: <003801c94ad0$279307d0$7302640a@mona>
From: "chirag Shah" <chirag.shah@einfochips.com>
Date: Thu, 20 Nov 2008 10:52:26 +0530
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0033_01C94AFE.134976A0"
Subject: [Printing-architecture]  Embedded printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.

------=_NextPart_000_0033_01C94AFE.134976A0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

Sorry to copy paste whole thread as i did not find any button to post =
reply on continued thread. Anyway doesn't matter.
What i would like to ask is, i am in the simillar situation as "Matt".=20

I am developing an embedded system in which i need to give support of =
laser printers. I am having monta vista linux 2.6 on my ARM based =
embedded board. In that basic kernel i am having support of CUPS through =
which i was able to print only .jpg files. I used lp commands to print =
.jpg file. But my end goal is to print a report which can have text and =
images combined on same page. I am not able to print a simple .txt or =
.vi file.

For that, i believe i need ghost script support. But my monta vista =
linux is not having support for ghost script. I tried to cross-compile =
ghost script source with my arm tool-chain but it failed.

So, how can i add support of laser printers in my embedded(ARM based) =
system?

Thanks in advance,
Chirag Shah (A new member eager for favorable reply :) )



Matt Gessner magembcons at gmail.com=20
Mon Oct 13 10:46:18 PDT 2008=20

  a.. Previous message: [Printing-architecture] Embedded printing=20
  b.. Next message: [Printing-architecture] CANCEL - Next OP SC - =
Mon/Tue - 13/14 October 2008=20
  c.. Messages sorted by: [ date ] [ thread ] [ subject ] [ author ]=20

-------------------------------------------------------------------------=
-------

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
 

------=_NextPart_000_0033_01C94AFE.134976A0
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
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Hi =
All,</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Sorry to copy =
paste whole=20
thread as i did not find any button to post reply on continued thread. =
Anyway=20
doesn't matter.</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>What i would =
like to ask is,=20
i am in the simillar situation as "Matt". </FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>I am developing =
an embedded=20
system in which i need to give support of laser printers. I am having =
monta=20
vista linux 2.6 on my ARM based embedded board. In that basic kernel i =
am having=20
support of CUPS through which&nbsp;i was able to print only .jpg files. =
I used=20
lp commands to print .jpg file. But my end goal is to print a report =
which can=20
have text and images combined on same page. I am not able to print a =
simple .txt=20
or .vi file.</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>For that, i =
believe i need=20
ghost script support. But my monta vista linux is not having support for =
ghost=20
script. I tried to cross-compile ghost script source with my arm =
tool-chain but=20
it failed.</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>So, how can i =
add support of=20
laser printers in my embedded(ARM based) system?</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Thanks in=20
advance,</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Chirag Shah (A =
new member=20
eager for favorable reply :) )</FONT></DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff =
size=3D2></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New" color=3D#0000ff=20
size=3D2><STRONG></STRONG></FONT>&nbsp;</DIV>
<DIV><FONT face=3D"Courier New"><FONT size=3D2><FONT =
color=3D#0000ff><STRONG>Matt=20
Gessner</STRONG> </FONT></FONT></FONT><A=20
title=3D"[Printing-architecture] Embedded printing"=20
href=3D"mailto:printing-architecture@lists.linux-foundation.org?Subject=3D=
%5BPrinting-architecture%5D%20Embedded%20printing&amp;In-Reply-To=3DED409=
4DE5E8ACD4BBDACA6AD398E608F1B2746%40EEAEX03.us.epson.net"><FONT=20
face=3D"Courier New" size=3D2>magembcons at gmail.com =
</FONT></A><BR><FONT=20
face=3D"Courier New"><FONT size=3D2><FONT color=3D#0000ff><I>Mon Oct 13 =
10:46:18 PDT=20
2008</I> </FONT></FONT></FONT></DIV>
<P><FONT face=3D"Courier New" color=3D#0000ff size=3D2></FONT></P>
<UL>
  <LI><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Previous =
message: </FONT><A=20
  =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/001589.html"><FONT=20
  face=3D"Courier New" size=3D2>[Printing-architecture] Embedded =
printing=20
  </FONT></A></LI>
  <LI><FONT face=3D"Courier New" color=3D#0000ff size=3D2>Next message: =
</FONT><A=20
  =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/001592.html"><FONT=20
  face=3D"Courier New" size=3D2>[Printing-architecture] CANCEL - Next OP =
SC -=20
  Mon/Tue - 13/14 October 2008 </FONT></A></LI>
  <LI><FONT face=3D"Courier New"><FONT size=3D2><FONT =
color=3D#0000ff><B>Messages=20
  sorted by:</B> </FONT></FONT></FONT><A=20
  =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/date.html#1590"><FONT=20
  face=3D"Courier New" size=3D2>[ date ]</FONT></A><FONT face=3D"Courier =
New"=20
  color=3D#0000ff size=3D2> </FONT><A=20
  =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/thread.html#1590"><FONT=20
  face=3D"Courier New" size=3D2>[ thread ]</FONT></A><FONT =
face=3D"Courier New"=20
  color=3D#0000ff size=3D2> </FONT><A=20
  =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/subject.html#1590"><FONT=20
  face=3D"Courier New" size=3D2>[ subject ]</FONT></A><FONT =
face=3D"Courier New"=20
  color=3D#0000ff size=3D2> </FONT><A=20
  =
href=3D"https://lists.linux-foundation.org/pipermail/printing-architectur=
e/2008/author.html#1590"><FONT=20
  face=3D"Courier New" size=3D2>[ author ]</FONT></A><FONT =
face=3D"Courier New"=20
  color=3D#0000ff size=3D2> </FONT></LI></UL>
<DIV><FONT face=3D"Courier New" color=3D#0000ff size=3D2>
<HR>
</FONT></DIV><!--beginarticle--><PRE><FONT color=3D#0000ff =
size=3D2>Hello, and thank you.

Is the HPIJS solution part of the HPLIP solution?  Or is it something
different?

On the web page, </FONT><A =
href=3D"http://www.linuxprinting.org/ijs"><FONT =
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
itecture"><FONT size=3D2>glen.petrie at eitc.epson.com</FONT></A><FONT =
color=3D#0000ff size=3D2>&gt;wrote:

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
itecture"><FONT size=3D2>printing-architecture-bounces at =
lists.linux-foundation.org</FONT></A><FONT color=3D#0000ff size=3D2> =
[mailto:
</FONT></I><FONT color=3D#0000ff size=3D2>&gt;</FONT><I><FONT =
color=3D#0000ff size=3D2> </FONT><A =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture"><FONT size=3D2>printing-architecture-bounces at =
lists.linux-foundation.org</FONT></A><FONT color=3D#0000ff size=3D2>] =
*On Behalf Of *Matt
</FONT></I><FONT color=3D#0000ff size=3D2>&gt;</FONT><FONT =
size=3D2><FONT color=3D#0000ff><I> Gessner
</I>&gt;</FONT></FONT><FONT size=3D2><FONT color=3D#0000ff><I> *Sent:* =
Sunday, October 12, 2008 6:33 PM
</I>&gt;</FONT></FONT><I><FONT color=3D#0000ff size=3D2> *To:* </FONT><A =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arch=
itecture"><FONT size=3D2>printing-architecture at =
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
</FONT></I></PRE><BR>
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

------=_NextPart_000_0033_01C94AFE.134976A0--

