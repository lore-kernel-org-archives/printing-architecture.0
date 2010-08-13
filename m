MIME-Version: 1.0
In-Reply-To: <4C6464F3.5050002@gmail.com>
References: <AANLkTik7wncfpOHH8RgCtk5TmWDGA6TI8jBglN2sY88L@mail.gmail.com>
	<4C6464F3.5050002@gmail.com>
Date: Fri, 13 Aug 2010 08:41:28 +0200
Message-ID: <AANLkTim1neggV9P-unE==ok8m59NHKofAitT36ZzaCxO@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: multipart/alternative; boundary=0015175caad2ccab4e048daec583
Subject: Re: [Printing-architecture] Last Call - OP Vector Printer Driver
	API/1.0 - ends 13 August
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
Cc: printing-architecture@lists.linux-foundation.org, Osamu MIHARA <osamu.mihara@fujixerox.co.jp>, Printing-japan <printing-japan@lists.linux-foundation.org>

--0015175caad2ccab4e048daec583
Content-Type: text/plain; charset=UTF-8

There is still one little issue:

The formula for the CTM use is rather awkward. Instead of

(x, y) = (x, y) x [ matrix ]

I would write something like

x = ax + by + c
y = dx + ey + f

WDYT?

  Till

On 12 Aug 2010 23:17, "Till Kamppeter" <till.kamppeter@gmail.com> wrote:
> I reviewed the specs and for me all is OK.
>
> Till
>
>
> On 07/13/2010 10:53 PM, Ira McDonald wrote:
>> Greetings,
>>
>> Starting today and ending on Friday 13 August 2010, I am pleased to
>> announce the Open Printing WG Last Call of the OP Vector Printer
>> Driver API/1.0, which is located at:
>>
>> ftp://ftp.pwg.org/pub/pwg/openprinting/vector/opvp-spec-1.0rc6.pdf
>>
>> Please positively confirm that you have reviewed this specification
>> and either (a) have comments or (b) have no comments, as follows:
>>
>> To: printing-architecture@lists.linux-foundation.org
>> Subject:<Company/Individual> has<no> comments on OP Vector API/1.0
>>
>> Please include both page number and line number for each of
>> your comments (they are present in the above PDF file).
>>
>> Cheers,
>> - Ira (Chair Open Printing WG)
>>
>> Ira McDonald (Musician / Software Architect)
>> Chair - Linux Foundation Open Printing WG
>> Co-Chair - TCG Hardcopy WG
>> IETF Designated Expert - IPP& Printer MIB
>> Blue Roof Music/High North Inc
>> http://sites.google.com/site/blueroofmusic
>> http://sites.google.com/site/highnorthinc
>> mailto:blueroofmusic@gmail.com
>> winter:
>> 579 Park Place Saline, MI 48176
>> 734-944-0094
>> summer:
>> PO Box 221 Grand Marais, MI 49839
>> 906-494-2434
>>
>

--0015175caad2ccab4e048daec583
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>There is still one little issue:</p>
<p>The formula for the CTM use is rather awkward. Instead of</p>
<p>(x, y) =3D (x, y) x [ matrix ]</p>
<p>I would write something like</p>
<p>x =3D ax + by + c<br>
y =3D dx + ey + f</p>
<p>WDYT?</p>
<p>=C2=A0 Till</p>
<p>On 12 Aug 2010 23:17, &quot;Till Kamppeter&quot; &lt;<a href=3D"mailto:t=
ill.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br type=3D=
"attribution">&gt; I reviewed the specs and for me all is OK.<br>&gt; <br>
&gt;     Till<br>&gt; <br>&gt; <br>&gt; On 07/13/2010 10:53 PM, Ira McDonal=
d wrote:<br>&gt;&gt; Greetings,<br>&gt;&gt;<br>&gt;&gt; Starting today and =
ending on Friday 13 August 2010, I am pleased to<br>&gt;&gt; announce the O=
pen Printing WG Last Call of the OP Vector Printer<br>
&gt;&gt; Driver API/1.0, which is located at:<br>&gt;&gt;<br>&gt;&gt;    <a=
 href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/vector/opvp-spec-1.0rc6.pdf=
">ftp://ftp.pwg.org/pub/pwg/openprinting/vector/opvp-spec-1.0rc6.pdf</a><br=
>
&gt;&gt;<br>&gt;&gt; Please positively confirm that you have reviewed this =
specification<br>&gt;&gt; and either (a) have comments or (b) have no comme=
nts, as follows:<br>&gt;&gt;<br>&gt;&gt;    To: <a href=3D"mailto:printing-=
architecture@lists.linux-foundation.org">printing-architecture@lists.linux-=
foundation.org</a><br>
&gt;&gt;    Subject:&lt;Company/Individual&gt;  has&lt;no&gt;  comments on =
OP Vector API/1.0<br>&gt;&gt;<br>&gt;&gt; Please include both page number a=
nd line number for each of<br>&gt;&gt; your comments (they are present in t=
he above PDF file).<br>
&gt;&gt;<br>&gt;&gt; Cheers,<br>&gt;&gt; - Ira (Chair Open Printing WG)<br>=
&gt;&gt;<br>&gt;&gt; Ira McDonald (Musician / Software Architect)<br>&gt;&g=
t; Chair - Linux Foundation Open Printing WG<br>&gt;&gt; Co-Chair - TCG Har=
dcopy WG<br>
&gt;&gt; IETF Designated Expert - IPP&amp;  Printer MIB<br>&gt;&gt; Blue Ro=
of Music/High North Inc<br>&gt;&gt; <a href=3D"http://sites.google.com/site=
/blueroofmusic">http://sites.google.com/site/blueroofmusic</a><br>&gt;&gt; =
<a href=3D"http://sites.google.com/site/highnorthinc">http://sites.google.c=
om/site/highnorthinc</a><br>
&gt;&gt; mailto:<a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gm=
ail.com</a><br>&gt;&gt; winter:<br>&gt;&gt;    579 Park Place  Saline, MI  =
48176<br>&gt;&gt;    734-944-0094<br>&gt;&gt; summer:<br>&gt;&gt;    PO Box=
 221  Grand Marais, MI 49839<br>
&gt;&gt;    906-494-2434<br>&gt;&gt;<br>&gt; <br></p>

--0015175caad2ccab4e048daec583--
