Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ePbrUbiKeGECQ85BRbfsS+pxJv2TTdWRnOR2hbgD8tE=;
	b=IMFYCmLoWPmPbnLMfqdhAfyLuI8xajWX+1iZCLYmEKeUReZj/Gaty5vUA387a67yz1
	L3Vdrtia/UlTOj3M9p2FeQX2VJ9rDxsHfrZAHWVu7ydB5l8pIVAK6NmLianBVrTRGVKO
	Nluh48z35t2SUlFh+5/srmQtoIz4bCF2TxOHXtEnat0aRyadNdC1CyVmLMWaMznMy9tV
	efDB1SEOiUf8gNdnNNHkjoqvuFhLhuIC6k4Z2KA2ygKn22XfHezBeI9RnmvoFLBjAiVr
	rRwI0oQPIB6OVwHWMU8HGFU9FDFv2It+ltIorPmUseKrFabewrRNw0K+UYgEyqcYGOnw
	v0TQ==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <CAN40gStuDx9p+x0oxMuuNmC6d-it_1Gos-p1WFFX7OHAEfookw@mail.gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<CAN40gStuDx9p+x0oxMuuNmC6d-it_1Gos-p1WFFX7OHAEfookw@mail.gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Fri, 3 Oct 2014 16:23:59 -0400
Message-ID: <CA+3RNfhWDPgDSTUq4WvhLAi5nwiazsdgohRNEcWSpKvArFNZ8Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=90e6ba1ef1108b8ab305048a842c
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
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

--90e6ba1ef1108b8ab305048a842c
Content-Type: text/plain; charset=UTF-8

Hi Ira,

Thanks for your answer. Let me explain it with more details:

Example PPDs for pure PDF workflow are provided by printer manufacturers,
and they have "cupsManualCopies: true" set in them. Now, let's say a client
prints a job: lp -d mypurepdfprinter -n 3 myfile.pdf

As you can see, the number of copies will be passed to all the filters, but
only one copy will be printed if I set cupsManualCopies to false, because
filters don't seem to care about the number of copies in the pure PDF
workflow. At least, I don't see pdftopdf injecting anything but a comment,
nor backend filters setting a number of copies via IPP.

I guess it is a question about cups-filters package, not CUPS itself.


2014-10-03 15:49 GMT-04:00 Ira McDonald <blueroofmusic@gmail.com>:

> Hi Alex,
>
> Processing instructions (such as copies) should never be embedded in PDF
> files anymore.
> On the wire, they should be in the IPP PrintJob or CreateJob request
> (i.e., job ticket).
>
> CUPS or other client should send "copies" through the CUPS filter
> chain.(so that client-side
> copies can be done, if the target printer does not support multiple
> copies).
>
> Mike Sweet - can you answer why cupsManualCopies PPD attribute is always
> set to "true"?
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
> On Fri, Oct 3, 2014 at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com>
> wrote:
>
>> Hi all,
>>
>> I'm looking at example PPDs for pure PDF workflow, and all of them have
>> cupsManualCopies: true
>>
>> Why is that? Is it impossible to tell printer to print a number of copies
>> with pure PDF workflow?
>> Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
>>
>> --
>> -Alex
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
>>
>


-- 
-Alex

--90e6ba1ef1108b8ab305048a842c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ira,=C2=A0<div><br></div><div>Thanks for your answer. L=
et me explain it with more details:=C2=A0</div><div><br></div><div>Example =
PPDs for pure PDF workflow are provided by printer manufacturers, and they =
have &quot;cupsManualCopies: true&quot; set in them. Now, let&#39;s say a c=
lient prints a job: lp -d mypurepdfprinter -n 3 myfile.pdf</div><div><br></=
div><div>As you can see, the number of copies will be passed to all the fil=
ters, but only one copy will be printed if I set cupsManualCopies to false,=
 because filters don&#39;t seem to care about the number of copies in the p=
ure PDF workflow. At least, I don&#39;t see pdftopdf injecting anything but=
 a comment, nor backend filters setting a number of copies via IPP.=C2=A0</=
div><div><br></div><div>I guess it is a question about cups-filters package=
, not CUPS itself.=C2=A0</div><div><br></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2014-10-03 15:49 GMT-04:00 Ira McDonald <=
span dir=3D"ltr">&lt;<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_=
blank">blueroofmusic@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div><div><div>Hi Alex,<br><br></div>Processing inst=
ructions (such as copies) should never be embedded in PDF files anymore.=C2=
=A0 <br>On the wire, they should be in the IPP PrintJob or CreateJob reques=
t (i.e., job ticket).<br><br>CUPS or other client should send &quot;copies&=
quot; through the CUPS filter chain.(so that client-side <br>copies can be =
done, if the target printer does not support multiple copies).<br><br></div=
><div>Mike Sweet - can you answer why cupsManualCopies PPD attribute is alw=
ays set to &quot;true&quot;?<br><br></div><div>Cheers,<br></div><div>- Ira<=
br><br></div></div></div><div class=3D"gmail_extra"><br clear=3D"all"><div>=
<div dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>Co-Chair -=
 TCG Trusted Mobility Solutions WG<br>Chair - Linux Foundation Open Printin=
g WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO=
 PWG Internet Printing Protocol WG<br>IETF Designated Expert - IPP &amp; Pr=
inter MIB<br>Blue Roof Music / High North Inc<br><a style=3D"color:rgb(51,5=
1,255)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blan=
k">http://sites.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(=
102,0,204)" href=3D"http://sites.google.com/site/highnorthinc" target=3D"_b=
lank">http://sites.google.com/site/highnorthinc</a><br>mailto: <a href=3D"m=
ailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a=
><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 <a href=
=3D"tel:734-944-0094" value=3D"+17349440094" target=3D"_blank">734-944-0094=
</a><br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 <a href=
=3D"tel:906-494-2434" value=3D"+19064942434" target=3D"_blank">906-494-2434=
</a><br><br><div style=3D"display:inline"></div><div style=3D"display:inlin=
e"></div><div style=3D"display:inline"></div><div></div><div></div><div></d=
iv><div></div></div></div>
<br><div class=3D"gmail_quote"><div><div class=3D"h5">On Fri, Oct 3, 2014 a=
t 3:28 PM, Alex Korobkin <span dir=3D"ltr">&lt;<a href=3D"mailto:korobkin+o=
p@gmail.com" target=3D"_blank">korobkin+op@gmail.com</a>&gt;</span> wrote:<=
br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div d=
ir=3D"ltr">Hi all,=C2=A0<div><br></div><div>I&#39;m looking at example PPDs=
 for pure PDF workflow, and all of them have=C2=A0</div><div>cupsManualCopi=
es: true</div><div><br></div><div>Why is that? Is it impossible to tell pri=
nter to print a number of copies with pure PDF workflow?=C2=A0</div><div>Ma=
ybe pdftopdf can inject @PJL SET COPIES=3DX into the file?=C2=A0</div><span=
><font color=3D"#888888"><div><div><br></div>-- <br><div dir=3D"ltr">-Alex<=
/div>
</div></font></span></div>
<br></div></div>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">-Alex</div>
</div>

--90e6ba1ef1108b8ab305048a842c--
