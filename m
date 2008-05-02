Message-ID: <b801b6f40805012017q2ca21240ma28e2f919f7330f3@mail.gmail.com>
Date: Thu, 1 May 2008 22:17:46 -0500
From: "Alex Wauck" <alex.wauck@gmail.com>
In-Reply-To: <87myn9mvqu.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_6009_26123772.1209698266399"
References: <481101A3.6030700@gmail.com> <4818BB7F.50603@gmail.com>
	<b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
	<b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
	<4819F6A5.3040400@gmail.com> <87myn9mvqu.fsf@geek.avasys.jp>
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
	its interface
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Cc: printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

------=_Part_6009_26123772.1209698266399
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Clarification:
It is an aspect ratio restriction.  If it was a simple height restriction,
it would be easy.  Fixed aspect ratio is still a pain in the butt in Qt, and
it has certain usability/user experience implications.  Plus, I'm not sure
what the advantage is.  The ratio between the widths of the columns is
useful and not a problem, but I would like to at least see a clear reason
for making all columns the same height as the width of the second column.

Alex

On Thu, May 1, 2008 at 6:48 PM, Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
wrote:

> Till Kamppeter <till.kamppeter@gmail.com> writes:
>
> > Peter, what is the importance of your column height restrictions? Or is
> > it only an aspect ratio restriction (see Alex' problems below)?
>
> As mentioned earlier in feedback on the CPD, absolute dimensions are
> no good when you need to consider i18n and/or assistive technologies.
> Given the various languages you will need to cater to, string lengths
> will vary, considerably.  For certain scripts, small font sizes just
> don't work.  For Japanese, for example, anything less than 12pt is
> next to unreadable.  Even 12pt is only hardly bearable.
>
> > Josef, you as expert on automatic dialog creation, can you help Alex
> > here? AFAIR there was only a restriction on the aspect ratio of the
> > columns and not on the absolute height.
>
> Fixed aspect ratios may be okay, but, again, given the variation in
> string lengths, I doubt it.  What may be two characters in Japanese
> (corresponding to four Latin characters, space wise and using a fixed
> width font) may very well be 20 characters in German.  That is to say,
> when considering strings, the horizontal and vertical dimensions vary
> independently so trying to maintain a fixed aspect ratio is at best
> cumbersome.
>
> Also note, that word wrapping may not work as you are used to in CJK
> locales.
>
> Hope this helps,
>
> > [snip]
> --
> Olaf Meeuwissen                   FLOSS Engineer -- AVASYS Corporation
> FSF Associate Member #1962           sign up at http://member.fsf.org/
>

------=_Part_6009_26123772.1209698266399
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Clarification:<br>
It is an aspect ratio restriction.&nbsp; If it was a simple height restriction, it would be easy.&nbsp; Fixed aspect ratio is still a pain in the butt in
Qt, and it has certain usability/user experience implications.&nbsp; Plus, I&#39;m not sure what the advantage is.&nbsp; The ratio between the
widths of the columns is useful and not a problem, but I would like to at least see a clear reason for making all columns the same height as the width of the second column.<br><br>Alex<br><br><div class="gmail_quote">On Thu, May 1, 2008 at 6:48 PM, Olaf Meeuwissen &lt;<a href="mailto:olaf.meeuwissen@avasys.jp">olaf.meeuwissen@avasys.jp</a>&gt; wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"><div class="Ih2E3d">Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; writes:<br>

<br>
&gt; Peter, what is the importance of your column height restrictions? Or is<br>
&gt; it only an aspect ratio restriction (see Alex&#39; problems below)?<br>
<br>
</div>As mentioned earlier in feedback on the CPD, absolute dimensions are<br>
no good when you need to consider i18n and/or assistive technologies.<br>
Given the various languages you will need to cater to, string lengths<br>
will vary, considerably. &nbsp;For certain scripts, small font sizes just<br>
don&#39;t work. &nbsp;For Japanese, for example, anything less than 12pt is<br>
next to unreadable. &nbsp;Even 12pt is only hardly bearable.<br>
<div class="Ih2E3d"><br>
&gt; Josef, you as expert on automatic dialog creation, can you help Alex<br>
&gt; here? AFAIR there was only a restriction on the aspect ratio of the<br>
&gt; columns and not on the absolute height.<br>
<br>
</div>Fixed aspect ratios may be okay, but, again, given the variation in<br>
string lengths, I doubt it. &nbsp;What may be two characters in Japanese<br>
(corresponding to four Latin characters, space wise and using a fixed<br>
width font) may very well be 20 characters in German. &nbsp;That is to say,<br>
when considering strings, the horizontal and vertical dimensions vary<br>
independently so trying to maintain a fixed aspect ratio is at best<br>
cumbersome.<br>
<br>
Also note, that word wrapping may not work as you are used to in CJK<br>
locales.<br>
<br>
Hope this helps,<br>
<br>
&gt; [snip]<br>
<font color="#888888">--<br>
Olaf Meeuwissen &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; FLOSS Engineer -- AVASYS Corporation<br>
FSF Associate Member #1962 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; sign up at <a href="http://member.fsf.org/" target="_blank">http://member.fsf.org/</a><br>
</font></blockquote></div><br>

------=_Part_6009_26123772.1209698266399--
