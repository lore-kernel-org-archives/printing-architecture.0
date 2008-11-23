Message-ID: <9624da290811230511v10e7be98u7ecefff0aad6d841@mail.gmail.com>
Date: Sun, 23 Nov 2008 08:11:30 -0500
From: "Matt Gessner" <magembcons@gmail.com>
In-Reply-To: <003801c94ad0$279307d0$7302640a@mona>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_180240_11284716.1227445890095"
References: <003801c94ad0$279307d0$7302640a@mona>
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
To: chirag Shah <chirag.shah@einfochips.com>
Cc: printing-architecture@lists.linux-foundation.org

------=_Part_180240_11284716.1227445890095
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

What we ended up doing is invoking hp via fork() and exec(), with a pipe
dup'd over the new process's stdout.

Then we did a fork() and exec() and started hp, and set the OutputFD
parameter to the hp's dup'd stdout pipe fd.

Then we used the ijs_client commands (taken from the ijs_client_example,
mostly) to get the printing done.

Part of our system creates the raster in memory before invoking the
printing.  We had to previously agree on the resolution (150x150 -- we're
low on memory) and a full 8.5x11.0 page.  Then I simply converted the raste=
r
from ARGB to RGB (being careful of the system endianness!)

If you would like me to post more details, I'd be happy to do that.
Sometimes people like to figure things out themselves.

It works pretty darn well.  One thing to watch is that you get the
PrintableTopLeft value via ijs_client_get_parm() because it will affect how
your page looks if you want a margin that's greater than the built in one o=
n
the printer.

We used no cups, and no ghostscript.  Another person on the team figured ou=
t
how to get it into OE.  I can give you the basics for compiling everything
if you want it.

You need hp, which requires hpmud for USB comms.  You also need hpijs (whic=
h
builds the commands and spits them to OutputFD) and libijs (which is the ij=
s
client stuff).

This was one of several approaches I tried to make this work.  It's the onl=
y
one that works.

Oh, I also tore into the ghostscript code to see how it used the hpijs tool=
,
and that provided an interesting detail or two that saved me some time.  Th=
e
rest I figured out via experimentation.

I hope this helps.

Regards,

Matt

On Thu, Nov 20, 2008 at 12:22 AM, chirag Shah <chirag.shah@einfochips.com>w=
rote:

>  Hi All,
>
> Sorry to copy paste whole thread as i did not find any button to post rep=
ly
> on continued thread. Anyway doesn't matter.
> What i would like to ask is, i am in the simillar situation as "Matt".
>
> I am developing an embedded system in which i need to give support of las=
er
> printers. I am having monta vista linux 2.6 on my ARM based embedded boar=
d.
> In that basic kernel i am having support of CUPS through which i was able=
 to
> print only .jpg files. I used lp commands to print .jpg file. But my end
> goal is to print a report which can have text and images combined on same
> page. I am not able to print a simple .txt or .vi file.
>
> For that, i believe i need ghost script support. But my monta vista linux
> is not having support for ghost script. I tried to cross-compile ghost
> script source with my arm tool-chain but it failed.
>
> So, how can i add support of laser printers in my embedded(ARM based)
> system?
>
> Thanks in advance,
> Chirag Shah (A new member eager for favorable reply :) )
>
>
> **
> *Matt Gessner* magembcons at gmail.com
> <printing-architecture@lists.linux-foundation.org?Subject=3D%5BPrinting-a=
rchitecture%5D%20Embedded%20printing&In-Reply-To=3DED4094DE5E8ACD4BBDACA6AD=
398E608F1B2746%40EEAEX03.us.epson.net>
> *Mon Oct 13 10:46:18 PDT 2008*
>
>
>    - Previous message: [Printing-architecture] Embedded printing
>    <https://lists.linux-foundation.org/pipermail/printing-architecture/20=
08/001589.html>
>    - Next message: [Printing-architecture] CANCEL - Next OP SC - Mon/Tue =
-
>    13/14 October 2008
>    <https://lists.linux-foundation.org/pipermail/printing-architecture/20=
08/001592.html>
>    - *Messages sorted by:* [ date ]<https://lists.linux-foundation.org/pi=
permail/printing-architecture/2008/date.html#1590> [
>    thread ]<https://lists.linux-foundation.org/pipermail/printing-archite=
cture/2008/thread.html#1590> [
>    subject ]<https://lists.linux-foundation.org/pipermail/printing-archit=
ecture/2008/subject.html#1590> [
>    author ]<https://lists.linux-foundation.org/pipermail/printing-archite=
cture/2008/author.html#1590>
>
>  ------------------------------
>
> Hello, and thank you.
>
> Is the HPIJS solution part of the HPLIP solution?  Or is it something
> different?
>
> On the web page, http://www.linuxprinting.org/ijs there are some drivers
> listed, but I'm confused as to where to go from there?
>
> Also, is there a web page that describes in detail what I need?  Somethin=
g
> that lays out the architecture of what needs to be done by applications (=
do
> I need lpd, CUPS, or something else?)  I've skimmed lots of documentation=
,
> so perhaps I've missed something in my skimming that would answer all my
> questions.
>
> THanks lots,
>
> Matt
>
> On Mon, Oct 13, 2008 at 12:33 PM, Petrie, Glen
> <glen.petrie at eitc.epson.com <https://lists.linux-foundation.org/mailma=
n/listinfo/printing-architecture>>wrote:
>
> >*  Matt,*>**>**>**>* For embedded solutions, IJS (for Epson and others) =
or HPIJS (for HP*>* printers) is a suggestion.  It is small, MIT open-sourc=
e driver; and,*>* print-vender drivers typically do not have floating point=
.   (Contact me for*>* a CD of Epson's version of the IJS.)*>**>**>**>* Eps=
on also has a generic, platform independent, non-floating driver for*>* the=
ir desktop inkjet printer. (Contact me if you are interested.)*>**>**>**>* =
glen*>**>**>*   ------------------------------*>**>* *From:* printing-archi=
tecture-bounces at lists.linux-foundation.org <https://lists.linux-foundati=
on.org/mailman/listinfo/printing-architecture> [mailto:*>* printing-archite=
cture-bounces at lists.linux-foundation.org <https://lists.linux-foundation=
.org/mailman/listinfo/printing-architecture>] *On Behalf Of *Matt*>* Gessne=
r*>* *Sent:* Sunday, October 12, 2008 6:33 PM*>* *To:* printing-architectur=
e at lists.linux-foundation.org <https://lists.linux-foundation.org/mailman=
/listinfo/printing-architecture>*>* *Subject:* [Printing-architecture] Embe=
dded printing*>**>**>**>* Hi,*>**>* I''m looking for some solutions for doi=
ng printing on an embedded system*>* (arm, if it matters).  Raster screen s=
hots and simple text reports are*>* (pretty much) all that's desired.*>**>*=
 One objective is to avoid using anything that requires floating point math=
,*>* as it's only emulated on this particular arm.*>**>* I've been searcing=
 the lists and can't find anything specific to embedded*>* systems, but in =
an O'Reilly article from 2007, there's a note that such*>* capabilities wou=
ld be added in 6 months.  Since we're well past that date,*>* I'm wondering=
 if that's been tackled.*>**>* Would someone please point me to some resour=
ces where I could read up on*>* how to do printing on such a system?  I wil=
l continue to do my own research,*>* but it sure seems like this is an area=
 where there would be some discussion*>* so I'm hoping this is the right li=
st.*>**>* Thank you.*
>
>
> --
> _____________________________________________________________________
> Disclaimer: This e-mail message and all attachments transmitted with it
> are intended solely for the use of the addressee and may contain legally
> privileged and confidential information. If the reader of this message
> is not the intended recipient, or an employee or agent responsible for
> delivering this message to the intended recipient, you are hereby
> notified that any dissemination, distribution, copying, or other use of
> this message or its attachments is strictly prohibited. If you have
> received this message in error, please notify the sender immediately by
> replying to this message and please delete it from your computer. Any
> views expressed in this message are those of the individual sender
> unless otherwise stated.Company has taken enough precautions to prevent
> the spread of viruses. However the company accepts no liability for any
> damage caused by any virus transmitted by this email.
> _____________________________________________________________________
>
>
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>

------=_Part_180240_11284716.1227445890095
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi,<br><br>What we ended up doing is invoking hp via fork() and exec(), with a pipe dup&#39;d over the new process&#39;s stdout.<br><br>Then we did a fork() and exec() and started hp, and set the OutputFD parameter to the hp&#39;s dup&#39;d stdout pipe fd.<br>
<br>Then we used the ijs_client commands (taken from the ijs_client_example, mostly) to get the printing done.<br><br>Part of our system creates the raster in memory before invoking the printing.&nbsp; We had to previously agree on the resolution (150x150 -- we&#39;re low on memory) and a full 8.5x11.0 page.&nbsp; Then I simply converted the raster from ARGB to RGB (being careful of the system endianness!) <br>
<br>If you would like me to post more details, I&#39;d be happy to do that.&nbsp; Sometimes people like to figure things out themselves.<br><br>It works pretty darn well.&nbsp; One thing to watch is that you get the PrintableTopLeft value via ijs_client_get_parm() because it will affect how your page looks if you want a margin that&#39;s greater than the built in one on the printer.<br>
<br>We used no cups, and no ghostscript.&nbsp; Another person on the team figured out how to get it into OE.&nbsp; I can give you the basics for compiling everything if you want it.<br><br>You need hp, which requires hpmud for USB comms.&nbsp; You also need hpijs (which builds the commands and spits them to OutputFD) and libijs (which is the ijs client stuff).<br>
<br>This was one of several approaches I tried to make this work.&nbsp; It&#39;s the only one that works.<br><br>Oh, I also tore into the ghostscript code to see how it used the hpijs tool, and that provided an interesting detail or two that saved me some time.&nbsp; The rest I figured out via experimentation.<br>
<br>I hope this helps.<br><br>Regards,<br><br>Matt<br><br><div class="gmail_quote">On Thu, Nov 20, 2008 at 12:22 AM, chirag Shah <span dir="ltr">&lt;<a href="mailto:chirag.shah@einfochips.com">chirag.shah@einfochips.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">





<div bgcolor="#ffffff">
<div><font size="2" color="#0000ff" face="Courier New">Hi All,</font></div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New">Sorry to copy paste whole 
thread as i did not find any button to post reply on continued thread. Anyway 
doesn&#39;t matter.</font></div>
<div><font size="2" color="#0000ff" face="Courier New">What i would like to ask is, 
i am in the simillar situation as &quot;Matt&quot;. </font></div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New">I am developing an embedded 
system in which i need to give support of laser printers. I am having monta 
vista linux 2.6 on my ARM based embedded board. In that basic kernel i am having 
support of CUPS through which&nbsp;i was able to print only .jpg files. I used 
lp commands to print .jpg file. But my end goal is to print a report which can 
have text and images combined on same page. I am not able to print a simple .txt 
or .vi file.</font></div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New">For that, i believe i need 
ghost script support. But my monta vista linux is not having support for ghost 
script. I tried to cross-compile ghost script source with my arm tool-chain but 
it failed.</font></div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New">So, how can i add support of 
laser printers in my embedded(ARM based) system?</font></div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New">Thanks in 
advance,</font></div>
<div><font size="2" color="#0000ff" face="Courier New">Chirag Shah (A new member 
eager for favorable reply :) )</font></div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New"></font>&nbsp;</div>
<div><font size="2" color="#0000ff" face="Courier New"><b></b></font>&nbsp;</div>
<div><font face="Courier New"><font size="2"><font color="#0000ff"><b>Matt 
Gessner</b> </font></font></font><a title="[Printing-architecture] Embedded printing" href="mailto:printing-architecture@lists.linux-foundation.org?Subject=%5BPrinting-architecture%5D%20Embedded%20printing&amp;In-Reply-To=ED4094DE5E8ACD4BBDACA6AD398E608F1B2746%40EEAEX03.us.epson.net" target="_blank"><font size="2" face="Courier New">magembcons at gmail.com </font></a><br>
<font face="Courier New"><font size="2"><font color="#0000ff"><i>Mon Oct 13 10:46:18 PDT 
2008</i> </font></font></font></div>
<p><font size="2" color="#0000ff" face="Courier New"></font></p>
<ul>
  <li><font size="2" color="#0000ff" face="Courier New">Previous message: </font><a href="https://lists.linux-foundation.org/pipermail/printing-architecture/2008/001589.html" target="_blank"><font size="2" face="Courier New">[Printing-architecture] Embedded printing 
  </font></a></li>
  <li><font size="2" color="#0000ff" face="Courier New">Next message: </font><a href="https://lists.linux-foundation.org/pipermail/printing-architecture/2008/001592.html" target="_blank"><font size="2" face="Courier New">[Printing-architecture] CANCEL - Next OP SC - 
  Mon/Tue - 13/14 October 2008 </font></a></li>
  <li><font face="Courier New"><font size="2"><font color="#0000ff"><b>Messages 
  sorted by:</b> </font></font></font><a href="https://lists.linux-foundation.org/pipermail/printing-architecture/2008/date.html#1590" target="_blank"><font size="2" face="Courier New">[ date ]</font></a><font size="2" color="#0000ff" face="Courier New"> </font><a href="https://lists.linux-foundation.org/pipermail/printing-architecture/2008/thread.html#1590" target="_blank"><font size="2" face="Courier New">[ thread ]</font></a><font size="2" color="#0000ff" face="Courier New"> </font><a href="https://lists.linux-foundation.org/pipermail/printing-architecture/2008/subject.html#1590" target="_blank"><font size="2" face="Courier New">[ subject ]</font></a><font size="2" color="#0000ff" face="Courier New"> </font><a href="https://lists.linux-foundation.org/pipermail/printing-architecture/2008/author.html#1590" target="_blank"><font size="2" face="Courier New">[ author ]</font></a><font size="2" color="#0000ff" face="Courier New"> </font></li>
</ul>
<div><font size="2" color="#0000ff" face="Courier New">
<hr>
</font></div><pre><font size="2" color="#0000ff">Hello, and thank you.

Is the HPIJS solution part of the HPLIP solution?  Or is it something
different?

On the web page, </font><a href="http://www.linuxprinting.org/ijs" target="_blank"><font size="2">http://www.linuxprinting.org/ijs</font></a><font size="2" color="#0000ff"> there are some drivers
listed, but I&#39;m confused as to where to go from there?

Also, is there a web page that describes in detail what I need?  Something
that lays out the architecture of what needs to be done by applications (do
I need lpd, CUPS, or something else?)  I&#39;ve skimmed lots of documentation,
so perhaps I&#39;ve missed something in my skimming that would answer all my
questions.

THanks lots,

Matt

On Mon, Oct 13, 2008 at 12:33 PM, Petrie, Glen
&lt;</font><a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank"><font size="2">glen.petrie at eitc.epson.com</font></a><font size="2" color="#0000ff">&gt;wrote:

&gt;</font><font size="2"><font color="#0000ff"><i>  Matt,
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> For embedded solutions, IJS (for Epson and others) or HPIJS (for HP
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> printers) is a suggestion.  It is small, MIT open-source driver; and,
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> print-vender drivers typically do not have floating point.   (Contact me for
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> a CD of Epson&#39;s version of the IJS.)
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> Epson also has a generic, platform independent, non-floating driver for
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> their desktop inkjet printer. (Contact me if you are interested.)
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> glen
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i>   ------------------------------
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i><font size="2" color="#0000ff"> *From:* </font><a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank"><font size="2">printing-architecture-bounces at lists.linux-foundation.org</font></a><font size="2" color="#0000ff"> [mailto:
</font></i><font size="2" color="#0000ff">&gt;</font><i><font size="2" color="#0000ff"> </font><a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank"><font size="2">printing-architecture-bounces at lists.linux-foundation.org</font></a><font size="2" color="#0000ff">] *On Behalf Of *Matt
</font></i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> Gessner
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> *Sent:* Sunday, October 12, 2008 6:33 PM
</i>&gt;</font></font><i><font size="2" color="#0000ff"> *To:* </font><a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank"><font size="2">printing-architecture at lists.linux-foundation.org</font></a>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> *Subject:* [Printing-architecture] Embedded printing
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> Hi,
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> I&#39;&#39;m looking for some solutions for doing printing on an embedded system
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> (arm, if it matters).  Raster screen shots and simple text reports are
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> (pretty much) all that&#39;s desired.
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> One objective is to avoid using anything that requires floating point math,
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> as it&#39;s only emulated on this particular arm.
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> I&#39;ve been searcing the lists and can&#39;t find anything specific to embedded
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> systems, but in an O&#39;Reilly article from 2007, there&#39;s a note that such
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> capabilities would be added in 6 months.  Since we&#39;re well past that date,
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> I&#39;m wondering if that&#39;s been tackled.
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><font size="2"><font color="#0000ff"><i> Would someone please point me to some resources where I could read up on
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> how to do printing on such a system?  I will continue to do my own research,
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> but it sure seems like this is an area where there would be some discussion
</i>&gt;</font></font><font size="2"><font color="#0000ff"><i> so I&#39;m hoping this is the right list.
</i>&gt;</font></font><i>
</i><font size="2" color="#0000ff">&gt;</font><i><font size="2" color="#0000ff"> Thank you.
</font></i></pre><br>
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

<br>
</div>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
<a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br>
<br></blockquote></div><br>

------=_Part_180240_11284716.1227445890095--
