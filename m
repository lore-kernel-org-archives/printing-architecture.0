Message-ID: <9624da290810131046x648a65bai175326935d2d59bc@mail.gmail.com>
Date: Mon, 13 Oct 2008 13:46:18 -0400
From: "Matt Gessner" <magembcons@gmail.com>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2746@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_47457_30473851.1223919978601"
References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2746@EEAEX03.us.epson.net>
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
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org

------=_Part_47457_30473851.1223919978601
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello, and thank you.

Is the HPIJS solution part of the HPLIP solution?  Or is it something
different?

On the web page, http://www.linuxprinting.org/ijs there are some drivers
listed, but I'm confused as to where to go from there?

Also, is there a web page that describes in detail what I need?  Something
that lays out the architecture of what needs to be done by applications (do
I need lpd, CUPS, or something else?)  I've skimmed lots of documentation,
so perhaps I've missed something in my skimming that would answer all my
questions.

THanks lots,

Matt

On Mon, Oct 13, 2008 at 12:33 PM, Petrie, Glen
<glen.petrie@eitc.epson.com>wrote:

>  Matt,
>
>
>
> For embedded solutions, IJS (for Epson and others) or HPIJS (for HP
> printers) is a suggestion.  It is small, MIT open-source driver; and,
> print-vender drivers typically do not have floating point.   (Contact me for
> a CD of Epson's version of the IJS.)
>
>
>
> Epson also has a generic, platform independent, non-floating driver for
> their desktop inkjet printer. (Contact me if you are interested.)
>
>
>
> glen
>
>
>   ------------------------------
>
> *From:* printing-architecture-bounces@lists.linux-foundation.org [mailto:
> printing-architecture-bounces@lists.linux-foundation.org] *On Behalf Of *Matt
> Gessner
> *Sent:* Sunday, October 12, 2008 6:33 PM
> *To:* printing-architecture@lists.linux-foundation.org
> *Subject:* [Printing-architecture] Embedded printing
>
>
>
> Hi,
>
> I''m looking for some solutions for doing printing on an embedded system
> (arm, if it matters).  Raster screen shots and simple text reports are
> (pretty much) all that's desired.
>
> One objective is to avoid using anything that requires floating point math,
> as it's only emulated on this particular arm.
>
> I've been searcing the lists and can't find anything specific to embedded
> systems, but in an O'Reilly article from 2007, there's a note that such
> capabilities would be added in 6 months.  Since we're well past that date,
> I'm wondering if that's been tackled.
>
> Would someone please point me to some resources where I could read up on
> how to do printing on such a system?  I will continue to do my own research,
> but it sure seems like this is an area where there would be some discussion
> so I'm hoping this is the right list.
>
> Thank you.
>

------=_Part_47457_30473851.1223919978601
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div dir="ltr">Hello, and thank you.<br><br>Is the HPIJS solution part of the HPLIP solution?&nbsp; Or is it something different?<br><br>On the web page, <a href="http://www.linuxprinting.org/ijs">http://www.linuxprinting.org/ijs</a> there are some drivers listed, but I&#39;m confused as to where to go from there?<br>
<br>Also, is there a web page that describes in detail what I need?&nbsp; Something that lays out the architecture of what needs to be done by applications (do I need lpd, CUPS, or something else?)&nbsp; I&#39;ve skimmed lots of documentation, so perhaps I&#39;ve missed something in my skimming that would answer all my questions.<br>
<br>THanks lots,<br><br>Matt<br><br><div class="gmail_quote">On Mon, Oct 13, 2008 at 12:33 PM, Petrie, Glen <span dir="ltr">&lt;<a href="mailto:glen.petrie@eitc.epson.com">glen.petrie@eitc.epson.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">









<div link="blue" vlink="purple" lang="EN-US">

<div>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">Matt,</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">&nbsp;</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">For embedded solutions, IJS (for Epson and
others) or HPIJS (for HP printers) is a suggestion.&nbsp; It is small, MIT
open-source driver; and, print-vender drivers typically do not have floating
point.&nbsp;&nbsp; (Contact me for a CD of Epson's version of the IJS.)</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">&nbsp;</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">Epson also has a generic, platform
independent, non-floating driver for their desktop inkjet printer. (Contact me
if you are interested.)</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">&nbsp;</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">glen</span></font></p>

<p><font color="navy" size="2" face="Arial"><span style="font-size: 10pt; font-family: Arial; color: navy;">&nbsp;</span></font></p>

<div style="border-style: none none none solid; border-color: -moz-use-text-color -moz-use-text-color -moz-use-text-color blue; border-width: medium medium medium 1.5pt; padding: 0in 0in 0in 4pt;">

<div>

<div style="text-align: center;" align="center"><font size="3" face="Times New Roman"><span style="font-size: 12pt;">

<hr align="center" size="2" width="100%">

</span></font></div>

<p><b><font size="2" face="Tahoma"><span style="font-size: 10pt; font-family: Tahoma; font-weight: bold;">From:</span></font></b><font size="2" face="Tahoma"><span style="font-size: 10pt; font-family: Tahoma;">
<a href="mailto:printing-architecture-bounces@lists.linux-foundation.org" target="_blank">printing-architecture-bounces@lists.linux-foundation.org</a>
[mailto:<a href="mailto:printing-architecture-bounces@lists.linux-foundation.org" target="_blank">printing-architecture-bounces@lists.linux-foundation.org</a>] <b><span style="font-weight: bold;">On Behalf Of </span></b>Matt Gessner<br>

<b><span style="font-weight: bold;">Sent:</span></b> Sunday, October 12, 2008
6:33 PM<br>
<b><span style="font-weight: bold;">To:</span></b>
<a href="mailto:printing-architecture@lists.linux-foundation.org" target="_blank">printing-architecture@lists.linux-foundation.org</a><br>
<b><span style="font-weight: bold;">Subject:</span></b> [Printing-architecture]
Embedded printing</span></font></p>

</div><div><div></div><div class="Wj3C7c">

<p><font size="3" face="Times New Roman"><span style="font-size: 12pt;">&nbsp;</span></font></p>

<div>

<p><font size="3" face="Times New Roman"><span style="font-size: 12pt;">Hi,<br>
<br>
I&#39;&#39;m looking for some solutions for doing printing on an embedded system (arm,
if it matters).&nbsp; Raster screen shots and simple text reports are (pretty
much) all that&#39;s desired.<br>
<br>
One objective is to avoid using anything that requires floating point math, as
it&#39;s only emulated on this particular arm.<br>
<br>
I&#39;ve been searcing the lists and can&#39;t find anything specific to embedded
systems, but in an O&#39;Reilly article from 2007, there&#39;s a note that such
capabilities would be added in 6 months.&nbsp; Since we&#39;re well past that date,
I&#39;m wondering if that&#39;s been tackled. <br>
<br>
Would someone please point me to some resources where I could read up on how to
do printing on such a system?&nbsp; I will continue to do my own research, but
it sure seems like this is an area where there would be some discussion so I&#39;m
hoping this is the right list.<br>
<br>
Thank you.</span></font></p>

</div>

</div></div></div>

</div>

</div>


</blockquote></div><br></div>

------=_Part_47457_30473851.1223919978601--
