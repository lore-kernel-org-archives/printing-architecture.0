Return-Path: <kurt.pfeifle@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:references:in-reply-to:reply-to:from:date:message-id
	:subject:to; bh=gQLsPO7ZiX7UjLO/BkIMAebOgp4JBYXB65XU/5b1fpM=;
	b=G2/gsktN1pgpWcU93BvZFJEz9J3Rcd6TrvAD4I7V4l/rqQFm6Hp5iDv14YK3BypCcb
	v+imx5ZD/MRMCfQJ8gr54+9nlmEHNrlF8cDqnOBm7t+JO7gp1G5Yg86crn3w4DiozRI8
	ypMeKQO8HGatAGRWSUdeIxLdMj5rEWPGdF2Zcn79qnTqHNj3960Rb4Cpok6AVrT4WedW
	J3ukaGR+Wq9aOcs5qsFaS/4JI3JUIqH5PoaYyuWg1BNSqXYuyY7lDbYROadEPCDg/bOi
	7viHGYaZ2ksRd6aCDIzo9L4P46j/PapRDqjgpc7R6vxsIAa+5hmCDqXftHI+LCk/5y/M
	Gpvw==
MIME-Version: 1.0
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
	<aeeb7c9d-b8b9-ade7-88a3-7d9b1e3b87c7@gmail.com>
	<20190213235604.GE28869@shaftnet.org>
	<CAK+62whQu7X+PwS3RsZk__vY7q1deG-HwejpTTkqWV-4He-pow@mail.gmail.com>
	<74fba676-bbc2-e318-724f-131f30b5ec07@gmail.com>
In-Reply-To: <74fba676-bbc2-e318-724f-131f30b5ec07@gmail.com>
Reply-To: kurt.pfeifle@gmail.com
From: Kurt Pfeifle <kurt.pfeifle@googlemail.com>
Date: Fri, 15 Feb 2019 00:43:56 +0100
Message-ID: <CAK+62wgTnu+k_tAwtwVC4Xjf1Tniu2K46wet3M1Lp8jnqs9JCA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000067305d0581e33d3c"
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--00000000000067305d0581e33d3c
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 14, 2019 at 9:58 PM Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> On 14/02/2019 18:49, Kurt Pfeifle wrote:
> > This is not correct.
> >
> > Avahi was initially created by Trend Lloyd in early 2004. He was
> > certainly inspired by Apple's Bonjour, which unfortunately was not Open
> > Source initially, so there as a strong motivation to implement a FOSS
> > ZeroConf stack, since all of the relevant specs (mDNS + DNS-SD) were
> > already there at IETF, and open.
> >
> > Later that same year Lennart Poettering started a similar project to
> > implement mDNS/DNS-SD functionality called "FlexMDNS".
> >
> > Both projects united and merged their code bases sometime in 2005.
> > Though I have no idea which of the two guys wrote more lines of code
> > that still exists in today's code base, Poettering surely had a heavy
> > impact on today's Avahi.
> >
> > Apple released Bonjour as Open Source software under the Apache License
> > only in 2006.
> >
> > Avahi's name certainly was Trend's decision, and he started his
> > implementation half a year before Poettering.
> >
> > Poettering's last commit into Avahi's GitHub code was in Sept  2012.
> > Trend's last commit was 10 days ago. The last time Trend merged a major
> > pull request was in August 2018. See
> > https://github.com/lathiat/avahi/commits?author=lathiat.
> >
> >   According to https://github.com/lathiat Trend works for Canonical.
> >
>
> That is interesting to know. Now I understand why Trent does not like
> that someone will take the project away from him.
>

In any case, starting at the last link I provided, this leads, within 5
minutes to...

* ...his info that he works for Canonical,
* ...an email address registered by Trent with GitHub,
* ...a website run by him showing his Twitter handle,
* ...confirming his Canonical association info,
* ...showing his frequent Twitter activity.

In the same time span spent at https://github.com/lathiat/avahi/issues I
could not identify...

* ...any bug reports related to problems created by Avahi shortcomings
   for CUPS printing as mentioned before,
* ...any pull requests submitted at GitHub to solve these problems.

But maybe I was not aware of what I should search for....

However I noted the following Avahi statistics on GitHub:

* 81 open vs. 43 closed Issues.
* 39 open vs. 55 closed Pull Requests.

So indeed, the activities on Avahi have slowed down in recent years.
But it is not the case that Trent is missing from planet earth or turned
un-interested regarding computer-related topics.

So my advice would be the following:

* Create the relevant bug reports ("issues") for Avahi on GitHub.
* Create the most wanted feature requests for Avahi on GitHub.
* For each bug and feature supply a pull request on GitHub.
* Upvote/comment/like/discuss these new activities on Avahi's GitHub.
* Contact Trent via Twitter (where he seems most responsive) about
   the Github issues and ask for his comments.
* If he does not show any willingness to integrate well done pull
   requests, then only seriously consider a fork on the project. Y'all
   will have an easier way to convince people about the need for
   such a drastic step, if your PRs are sitting there for too long. Also
   a fork will have a headstart, if the code to add/improve is already
   waiting there, well-tested.

Don't just jump into such an adventure based on rumours, un-prepared and
without your troops well-equipped.

--00000000000067305d0581e33d3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 14, 2019 at =
9:58 PM Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com">till=
.kamppeter@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On 14/02/2019 18:49, Kurt Pf=
eifle wrote:<br>
&gt; This is not correct.<br>
&gt; <br>
&gt; Avahi was initially created by Trend Lloyd in early 2004. He was <br>
&gt; certainly inspired by Apple&#39;s Bonjour, which unfortunately was not=
 Open <br>
&gt; Source initially, so there as a strong motivation to implement a FOSS =
<br>
&gt; ZeroConf stack, since all of the relevant specs (mDNS + DNS-SD) were <=
br>
&gt; already there at IETF, and open.<br>
&gt; <br>
&gt; Later that same year Lennart Poettering started a similar project to <=
br>
&gt; implement mDNS/DNS-SD functionality called &quot;FlexMDNS&quot;.<br>
&gt; <br>
&gt; Both projects united and merged their code bases sometime in 2005. <br=
>
&gt; Though I have no idea which of the two guys wrote more lines of code <=
br>
&gt; that still exists in today&#39;s code base, Poettering surely had a he=
avy <br>
&gt; impact on today&#39;s Avahi.<br>
&gt; <br>
&gt; Apple released Bonjour as Open Source software under the Apache Licens=
e <br>
&gt; only in 2006.<br>
&gt; <br>
&gt; Avahi&#39;s name certainly was Trend&#39;s decision, and he started hi=
s <br>
&gt; implementation half a year before Poettering.<br>
&gt; <br>
&gt; Poettering&#39;s last commit into Avahi&#39;s GitHub code was in Sept=
=C2=A0 2012. <br>
&gt; Trend&#39;s last commit was 10 days ago. The last time Trend merged a =
major <br>
&gt; pull request was in August 2018. See <br>
&gt; <a href=3D"https://github.com/lathiat/avahi/commits?author=3Dlathiat" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/lathiat/avahi/commi=
ts?author=3Dlathiat</a>.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0According to <a href=3D"https://github.com/lathiat" rel=3D=
"noreferrer" target=3D"_blank">https://github.com/lathiat</a> Trend works f=
or Canonical.<br>
&gt; <br>
<br>
That is interesting to know. Now I understand why Trent does not like <br>
that someone will take the project away from him.<br></blockquote><div><br>=
</div><div>In any case, starting at the last link I provided, this leads, w=
ithin 5 minutes to...</div><div><br></div><div>* ...his info that he works =
for Canonical,</div><div>* ...an email address registered by Trent with Git=
Hub,</div><div>* ...a website run by him showing his Twitter handle,</div><=
div>* ...confirming his Canonical association info,</div><div>* ...showing =
his frequent Twitter activity.</div><div><br></div><div>In the same time sp=
an spent at=C2=A0<a href=3D"https://github.com/lathiat/avahi/issues">https:=
//github.com/lathiat/avahi/issues</a> I=C2=A0</div><div>could not identify.=
..</div><div><br></div><div>* ...any bug reports related to problems create=
d by Avahi shortcomings</div><div>=C2=A0 =C2=A0for CUPS printing as mention=
ed before,</div><div>* ...any pull requests submitted at GitHub to solve th=
ese problems.</div><div><br></div><div>But maybe I was not aware of what I =
should search for....</div><div><br></div><div>However I noted the followin=
g Avahi statistics on GitHub:</div><div><br></div><div>* 81 open vs. 43 clo=
sed Issues.</div><div>* 39 open vs. 55 closed Pull Requests.</div><div><br>=
</div><div>So indeed, the activities on Avahi have slowed down in recent ye=
ars.</div><div>But it is not the case that Trent is missing from planet ear=
th or turned</div><div>un-interested regarding computer-related topics.</di=
v><div><br></div><div>So my advice would be the following:</div><div><br></=
div><div>* Create the relevant bug reports (&quot;issues&quot;) for Avahi o=
n GitHub.</div><div>* Create the most wanted feature requests for Avahi on =
GitHub.</div><div>* For each bug and feature supply a pull request on GitHu=
b.</div><div>* Upvote/comment/like/discuss these new activities on Avahi&#3=
9;s GitHub.</div><div>* Contact Trent via Twitter (where he seems most resp=
onsive) about=C2=A0</div><div>=C2=A0 =C2=A0the Github issues and ask for hi=
s comments.</div><div>* If he does not show any willingness to integrate we=
ll done pull</div><div>=C2=A0 =C2=A0requests, then only seriously consider =
a fork on the project. Y&#39;all</div><div>=C2=A0 =C2=A0will have an easier=
 way to convince people about the need for=C2=A0</div><div>=C2=A0 =C2=A0suc=
h a drastic step, if your PRs are sitting there for too long. Also</div><di=
v>=C2=A0 =C2=A0a fork will have a headstart, if the code to add/improve is =
already</div><div>=C2=A0 =C2=A0waiting there, well-tested.</div><div><br></=
div><div>Don&#39;t just jump into such an adventure based on rumours, un-pr=
epared and without your troops well-equipped.</div><div><br></div><div><br>=
</div></div></div></div>

--00000000000067305d0581e33d3c--
