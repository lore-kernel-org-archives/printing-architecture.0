Message-ID: <b801b6f40806021603m62c934bcw4a29e8aafef34063@mail.gmail.com>
Date: Mon, 2 Jun 2008 18:03:47 -0500
From: "Alex Wauck" <alex.wauck@gmail.com>
In-Reply-To: <e395be80806021555m3cd08365neaeb1fdc2b5cd8c4@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_23220_26573238.1212447827163"
References: <4844567A.7080709@gmail.com>
	<b801b6f40806021541s7301efao48d7722bc61ff1b7@mail.gmail.com>
	<e395be80806021555m3cd08365neaeb1fdc2b5cd8c4@mail.gmail.com>
Subject: Re: [Printing-architecture] Suggestion for a small change in your
	design for the Common Printing Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, Henrik Nilsen Omma <henrik@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, Till Kamppeter <till.kamppeter@gmail.com>

------=_Part_23220_26573238.1212447827163
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Could you describe that in more detail?  I don't really like the current way
(i.e. entering something like "1,2,5-70,75" to get pages 1, 2, 5 through 70,
and 75).  It's quick and easy for people like me who feel hobbled without a
command line, but I don't think it's particularly intuitive or easy for
others.

Alex

On Mon, Jun 2, 2008 at 5:55 PM, Ira McDonald <blueroofmusic@gmail.com>
wrote:

> Hi Alex and Till,
>
> FWIW - In IPP/1.1 Production Printing, Open Printing Job Ticket API, and
> PWG Semantic Model, we have a common "pages" attribute defined as
> '(1setOf rangeOfInteger(1:MAX))' (i.e., a set of page ranges).
>
> I suggest we give the user a set of boxes like ordinary page range that can
> be filled in for a discontiguous set of pages.
>
> Cheers,
> - Ira
>
> On Mon, Jun 2, 2008 at 6:41 PM, Alex Wauck <alex.wauck@gmail.com> wrote:
> > I like it.  I'm using a custom widget for the preview instead of the Qt
> > preview widget, so it won't be too difficult to implement.  We just need
> to
> > figure out how to specify ranges.  People don't want to go through and
> mark
> > every page in a 100-page range.
> >
> > Alex
> >
> > On Mon, Jun 2, 2008 at 3:22 PM, Till Kamppeter <till.kamppeter@gmail.com
> >
> > wrote:
> >>
> >> Hi,
> >>
> >> on the Ubuntu Developer Summit (UDS) in Prague we have discussed your
> >> design for the Common Printing Dialog. During the discussion doubts came
> >> up about how to print only selected pages of a document. A suggestion
> >> was then that one can add buttons to the preview to (de)select the page
> >> currently visible (like implemented in multi-function printers where one
> >> can print photos from a memory card selecting them on the printer's
> >> display, or like on digital cameras with PictBridge).
> >>
> >> WDYT about this feature? Or what were your ideas about selecting the
> >> pages to be printed?
> >>
> >>    Till
> >> _______________________________________________
> >> Printing-architecture mailing list
> >> Printing-architecture@lists.linux-foundation.org
> >>
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> >
> >
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> >
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> >
> >
>
>
>
> --
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Blue Roof Music/High North Inc
> email: blueroofmusic@gmail.com
> winter:
>  579 Park Place Saline, MI 48176
>  734-944-0094
> summer:
>  PO Box 221 Grand Marais, MI 49839
>  906-494-2434
>

------=_Part_23220_26573238.1212447827163
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Could you describe that in more detail?&nbsp; I don&#39;t really like the current way (i.e. entering something like &quot;1,2,5-70,75&quot; to get pages 1, 2, 5 through 70, and 75).&nbsp; It&#39;s quick and easy for people like me who feel hobbled without a command line, but I don&#39;t think it&#39;s particularly intuitive or easy for others.<br>
<br>Alex<br><br><div class="gmail_quote">On Mon, Jun 2, 2008 at 5:55 PM, Ira McDonald &lt;<a href="mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt; wrote:<br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Hi Alex and Till,<br>
<br>
FWIW - In IPP/1.1 Production Printing, Open Printing Job Ticket API, and<br>
PWG Semantic Model, we have a common &quot;pages&quot; attribute defined as<br>
&#39;(1setOf rangeOfInteger(1:MAX))&#39; (i.e., a set of page ranges).<br>
<br>
I suggest we give the user a set of boxes like ordinary page range that can<br>
be filled in for a discontiguous set of pages.<br>
<br>
Cheers,<br>
- Ira<br>
<div><div></div><div class="Wj3C7c"><br>
On Mon, Jun 2, 2008 at 6:41 PM, Alex Wauck &lt;<a href="mailto:alex.wauck@gmail.com">alex.wauck@gmail.com</a>&gt; wrote:<br>
&gt; I like it. &nbsp;I&#39;m using a custom widget for the preview instead of the Qt<br>
&gt; preview widget, so it won&#39;t be too difficult to implement. &nbsp;We just need to<br>
&gt; figure out how to specify ranges. &nbsp;People don&#39;t want to go through and mark<br>
&gt; every page in a 100-page range.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Mon, Jun 2, 2008 at 3:22 PM, Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; on the Ubuntu Developer Summit (UDS) in Prague we have discussed your<br>
&gt;&gt; design for the Common Printing Dialog. During the discussion doubts came<br>
&gt;&gt; up about how to print only selected pages of a document. A suggestion<br>
&gt;&gt; was then that one can add buttons to the preview to (de)select the page<br>
&gt;&gt; currently visible (like implemented in multi-function printers where one<br>
&gt;&gt; can print photos from a memory card selecting them on the printer&#39;s<br>
&gt;&gt; display, or like on digital cameras with PictBridge).<br>
&gt;&gt;<br>
&gt;&gt; WDYT about this feature? Or what were your ideas about selecting the<br>
&gt;&gt; pages to be printed?<br>
&gt;&gt;<br>
&gt;&gt; &nbsp; &nbsp;Till<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Printing-architecture mailing list<br>
&gt;&gt; <a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
&gt;&gt; <a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Printing-architecture mailing list<br>
&gt; <a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
&gt; <a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture" target="_blank">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br>
&gt;<br>
&gt;<br>
<br>
<br>
<br>
</div></div>--<br>
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Blue Roof Music/High North Inc<br>
email: <a href="mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a><br>
winter:<br>
&nbsp;579 Park Place Saline, MI 48176<br>
&nbsp;734-944-0094<br>
summer:<br>
&nbsp;PO Box 221 Grand Marais, MI 49839<br>
&nbsp;906-494-2434<br>
</blockquote></div><br>

------=_Part_23220_26573238.1212447827163--
