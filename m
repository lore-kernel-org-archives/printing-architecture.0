Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642686834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ovLUkJavuEQ/d5Kt7GpjFfUKD4wL3eeeyyjGO1tBzAE=;
 b=dk0rQaL75ysQGLcVhret2zG3HVEg2ns4kZQ3Jv0B1HG5mk7PoXcEl9I3BuOTY4jtQ/RnuD
 drUcD8amU6zjN5MoNUuSFngd85npCBaefaPCr7za5fF4LUIhuq9Nscl8NgAg81hJieXHe0
 +px7d7XcEsjoYey7ODnQ4A1xrmxM3I0=
MIME-Version: 1.0
References: <9c17c59d-0ed6-c1c3-42ce-4bcef58363f8@gmail.com>
In-Reply-To: <9c17c59d-0ed6-c1c3-42ce-4bcef58363f8@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Date: Thu, 20 Jan 2022 14:53:39 +0100
Message-ID: <CAAqMZmaderbgCakFtoPutkg3a94naCCqnLmy6wKuLE6+sXFjsA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000051ab305d603d570"
Subject: Re: [Printing-architecture] Use of filter functions in CUPS 2.x and
	3.x
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Pranshu Kharkwal <pranshukharkwal08@gmail.com>

--000000000000051ab305d603d570
Content-Type: text/plain; charset="UTF-8"

Hi Till,

I'm sorry for answering this late - HDD got wasted, Christmas, all new year
responsibilities and I'm not particularly strong on my feet regarding
filters, so I'm not sure whether my feedback will relevant, but so there it
is:

On Mon, Dec 13, 2021 at 10:07 PM Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> with the background of CUPS 3.x, planned to get released 2 years from
> now, not supporting PPD files any more and only considering driverless
> IPP printers I have changed the architecture of cups-filters, converting
> filter executables (CUPS filters) into filter functions (library
> functions doing a filter's task, with standardized call
> scheme/interface) so that the code of the filters is preserved but they
> get more universally usable.
>

Kudos for doing that! I would propose to leave each filter binaries for
check/test target and use them in the test suite. IMO it would be great to
know that at least common use cases work the same way as with the previous
filter binaries.


>
> Now I am also thinking about making use of the filter functions somehow
> in CUPS, both to get improvement in the upcoming 2 years where CUPS
> still supports PPD files and classic drivers and also in PPD-less CUPS
> 3.x, where data-format conversions are still needed, as for example
> print jobs usually come in PDF but it is not required for a driverless
> IPP printer to support PDF. Also implementation of functionality like
> N-up or flattening filled PDF forms (both tasks currently done by
> pdftopdf) is needed in CUPS 3.x.
>

Agreed - IMO it is sensible to spread new features in the timeframe instead
of putting all changes into work at once and got hit by numerous possible
issues.


>
> We should do our best to avoid duplicate code in OpenPrinting and not
> re-invent the wheel.
>
+1

>
>
> "universal" filter for CUPS
> ---------------------------
>
> https://gist.github.com/pranshukharkwal/9413499a6744049ef549159948392023
>
> As a first approach to improve PPDish CUPS 2.4.x and 2.5.x I have run
> the GSoC project of a universal CUPS filter, where one single CUPS
> filter executable does all the filtering for a job by calling filter
> functions, in a chain if needed. This reduces the number of external
> executable calls by CUPS vastly, as normally CUPS calls for each filter
> to run first the cups-exec helper program and cups-exec then calls the
> filter executable, making up 2 external executable calls per filter.
>
> The filter function chaining in the universal CUPS filter still does a
> fork for each filter function though and pipes the print data from
> filter function to filter function. Also filters of printer drivers and
> CUPS backends are not part of the universal filter and need to get
> called separately by CUPS.
>
> The disk space saved is low, as with cups-filters 2.x each filter
> executable in /usr/lib/cups/filters/ is only a little code stub calling
> the actual filter function in libcupsfilters,
>
> Also the universal filter still needs a fix to work correctly with PPD
> files which use "cupsFilter2" instead of "cupsFilter" lines.
>
> So it is a little bit of a question whether it is really worth the
> effort to replace the individual filters called by CUPS 2.4.x and 2.5.x
> by this universal filter, especially also that we have only more 2 years
> where CUPS uses PPD files.
>
> So before I complete this (if not, the universal filter will at least be
> used to make cups-browsed's "implicitclass" backend use filter functions
> instead of external filters) I want to hear some opinions about this,
> especially also whether actually saving external executable calls is
> more resource-saving than for example saving forked parallel tasks and
> pipes between them.
>

IMO it would be great to have this before we fully switch to non-PPD
printing stack - this way we could test the filtering functions on more
places than just in printer applications, which still aren't widely used
for now.


>
>
> Forking and piping vs. one filter after the other
> -------------------------------------------------
>
> In general if forking and piping for a filter chain consumes much more
> than calling each filter function one after the other directly and let
> them write their output into temporary files for the next filter
> functions in the chain reading from the previous filter function's temp
> file I am also thinking about adding a second mode to filterChain() to
> let it operate this way. WDYT?
>

To be honest forking and piping sounds better for me - a file can stay on
system if something goes wrong, taking the resources, additionally
protective systems can complain about accessing/creating files in
unexpected location. AFAIK forking and piping sounds cleaner to me...


>
>
> Using filter functions directly in CUPS
> ---------------------------------------
>
> And, finally, should we make the filter functions be directly used by
> CUPS, either that in CUPS 2.5.x in scheduler/job.c we call filter
> functions instead of external filter executables (at least for standard,
> non-driver filters), or that for CUPS 3.x we do the needed file format
> conversions by filter function calls (there are no driver filters)?
> Backends could also be converted to filter functions and be directly
> called. WDYT?
>

I would prefer universal filter binary for the current CUPS 2.x, because,
as you wrote below, filter functions from libcupsfilters would cause
circular deps and the CUPS splitting is best done in CUPS 3.0.


>
> Also, do we need extra functionality in the filter function concept for
> using it directly in CUPS? For example add a field to the records of the
> filter functions called by filterChain() to tell as which user each
> individual filter function should get run?
>

I'm not sure if I am able to tell something relevant about this - how I
imagine the filter function is a 'in' pointer, 'out' pointer, ipp
attributes of the destination and array of CUPS options related to the job
(basically similar what current filter binaries take as parameters and
produce, with exception that instead of PPD we have IPP attributes). Maybe
to have some 'void' pointer for additional data, if some filter function
will need more info?


>
> Also, if we want CUPS to use filter functions, we need to do
> re-structuring to avoid circular dependencies, as libcupsfilters uses
> libcups and if a function in libcups would call a filter function of
> libcupsfilters, libcups is using libcupsfilters, ... The planned
> splitting of libcups, local CUPS daemon, sharing CUPS daemon of CUPS 3.x
> could help here as if the daemons call filter functions but not libcups,
> we will not get a circular dependency. WDYT?
>

As I wrote above, I would prefer an universal driver binary because of this
for now to prevent the circular dependency and pasting cups-filters code
into CUPS.



>
>
> It would be great if we could discuss these topics before finalizing
> cups-filters 2.x
>

Looking forward to cups-filters-2.0 :)

Zdenek


>
>     Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

--000000000000051ab305d603d570
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Till,</div><div><br></div><div>I&#39;m sorry for a=
nswering this late - HDD got wasted, Christmas, all new year responsibiliti=
es and I&#39;m not particularly strong on my feet regarding filters, so I&#=
39;m not sure whether my feedback will relevant, but so there it is:<br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Dec 13, 2021 at 10:07 PM Till Kamppeter &lt;<a href=3D"mailto:till.kam=
ppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
with the background of CUPS 3.x, planned to get released 2 years from <br>
now, not supporting PPD files any more and only considering driverless <br>
IPP printers I have changed the architecture of cups-filters, converting <b=
r>
filter executables (CUPS filters) into filter functions (library <br>
functions doing a filter&#39;s task, with standardized call <br>
scheme/interface) so that the code of the filters is preserved but they <br=
>
get more universally usable.<br></blockquote><div><br></div><div>Kudos for =
doing that! I would propose to leave each filter binaries for check/test ta=
rget and use them in the test suite. IMO it would be great to know that at =
least common use cases work the same way as with the previous filter binari=
es. <br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">

<br>
Now I am also thinking about making use of the filter functions somehow <br=
>
in CUPS, both to get improvement in the upcoming 2 years where CUPS <br>
still supports PPD files and classic drivers and also in PPD-less CUPS <br>
3.x, where data-format conversions are still needed, as for example <br>
print jobs usually come in PDF but it is not required for a driverless <br>
IPP printer to support PDF. Also implementation of functionality like <br>
N-up or flattening filled PDF forms (both tasks currently done by <br>
pdftopdf) is needed in CUPS 3.x.<br></blockquote><div><br></div><div>Agreed=
 - IMO it is sensible to spread new features in the timeframe instead of pu=
tting all changes into work at once and got hit by numerous possible issues=
.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<br>
We should do our best to avoid duplicate code in OpenPrinting and not <br>
re-invent the wheel.<br></blockquote><div>+1 <br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
<br>
<br>
&quot;universal&quot; filter for CUPS<br>
---------------------------<br>
<br>
<a href=3D"https://gist.github.com/pranshukharkwal/9413499a6744049ef5491599=
48392023" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/pran=
shukharkwal/9413499a6744049ef549159948392023</a><br>
<br>
As a first approach to improve PPDish CUPS 2.4.x and 2.5.x I have run <br>
the GSoC project of a universal CUPS filter, where one single CUPS <br>
filter executable does all the filtering for a job by calling filter <br>
functions, in a chain if needed. This reduces the number of external <br>
executable calls by CUPS vastly, as normally CUPS calls for each filter <br=
>
to run first the cups-exec helper program and cups-exec then calls the <br>
filter executable, making up 2 external executable calls per filter.<br>
<br>
The filter function chaining in the universal CUPS filter still does a <br>
fork for each filter function though and pipes the print data from <br>
filter function to filter function. Also filters of printer drivers and <br=
>
CUPS backends are not part of the universal filter and need to get <br>
called separately by CUPS.<br>
<br>
The disk space saved is low, as with cups-filters 2.x each filter <br>
executable in /usr/lib/cups/filters/ is only a little code stub calling <br=
>
the actual filter function in libcupsfilters,<br>
<br>
Also the universal filter still needs a fix to work correctly with PPD <br>
files which use &quot;cupsFilter2&quot; instead of &quot;cupsFilter&quot; l=
ines.<br>
<br>
So it is a little bit of a question whether it is really worth the <br>
effort to replace the individual filters called by CUPS 2.4.x and 2.5.x <br=
>
by this universal filter, especially also that we have only more 2 years <b=
r>
where CUPS uses PPD files.<br>
<br>
So before I complete this (if not, the universal filter will at least be <b=
r>
used to make cups-browsed&#39;s &quot;implicitclass&quot; backend use filte=
r functions <br>
instead of external filters) I want to hear some opinions about this, <br>
especially also whether actually saving external executable calls is <br>
more resource-saving than for example saving forked parallel tasks and <br>
pipes between them.<br></blockquote><div><br></div><div>IMO it would be gre=
at to have this before we fully switch to non-PPD printing stack - this way=
 we could test the filtering functions on more places than just in printer =
applications, which still aren&#39;t widely used for now.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
Forking and piping vs. one filter after the other<br>
-------------------------------------------------<br>
<br>
In general if forking and piping for a filter chain consumes much more <br>
than calling each filter function one after the other directly and let <br>
them write their output into temporary files for the next filter <br>
functions in the chain reading from the previous filter function&#39;s temp=
 <br>
file I am also thinking about adding a second mode to filterChain() to <br>
let it operate this way. WDYT?<br></blockquote><div><br></div><div>To be ho=
nest forking and piping sounds better for me - a file can stay on system if=
 something goes wrong, taking the resources, additionally protective system=
s can complain about accessing/creating files in unexpected location. AFAIK=
 forking and piping sounds cleaner to me...<br></div><div>=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
Using filter functions directly in CUPS<br>
---------------------------------------<br>
<br>
And, finally, should we make the filter functions be directly used by <br>
CUPS, either that in CUPS 2.5.x in scheduler/job.c we call filter <br>
functions instead of external filter executables (at least for standard, <b=
r>
non-driver filters), or that for CUPS 3.x we do the needed file format <br>
conversions by filter function calls (there are no driver filters)? <br>
Backends could also be converted to filter functions and be directly <br>
called. WDYT?<br></blockquote><div><br></div><div>I would prefer universal =
filter binary for the current CUPS 2.x, because, as you wrote below, filter=
 functions from libcupsfilters would cause circular deps and the CUPS split=
ting is best done in CUPS 3.0.<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Also, do we need extra functionality in the filter function concept for <br=
>
using it directly in CUPS? For example add a field to the records of the <b=
r>
filter functions called by filterChain() to tell as which user each <br>
individual filter function should get run?<br></blockquote><div><br></div><=
div>I&#39;m not sure if I am able to tell something relevant about this - h=
ow I imagine the filter function is a &#39;in&#39; pointer, &#39;out&#39; p=
ointer, ipp attributes of the destination and array of CUPS options related=
 to the job (basically similar what current filter binaries take as paramet=
ers and produce, with exception that instead of PPD we have IPP attributes)=
. Maybe to have some &#39;void&#39; pointer for additional data, if some fi=
lter function will need more info?<br></div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
<br>
Also, if we want CUPS to use filter functions, we need to do <br>
re-structuring to avoid circular dependencies, as libcupsfilters uses <br>
libcups and if a function in libcups would call a filter function of <br>
libcupsfilters, libcups is using libcupsfilters, ... The planned <br>
splitting of libcups, local CUPS daemon, sharing CUPS daemon of CUPS 3.x <b=
r>
could help here as if the daemons call filter functions but not libcups, <b=
r>
we will not get a circular dependency. WDYT?<br></blockquote><div><br></div=
><div>As I wrote above, I would prefer an universal driver binary because o=
f this for now to prevent the circular dependency and pasting cups-filters =
code into CUPS.</div><div><br></div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<br>
<br>
It would be great if we could discuss these topics before finalizing <br>
cups-filters 2.x<br></blockquote><div><br></div><div>Looking forward to cup=
s-filters-2.0 :)</div><div><br></div><div>Zdenek<br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 =C2=A0 Till<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div>Zdenek Dohnal</div><div>Software Engi=
neer</div><div>Red Hat, BRQ-TPBC<br></div></div></div></div>

--000000000000051ab305d603d570--

