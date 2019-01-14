Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	message-id : references : to; s=20180706;
	bh=BDdCuLbHKjBgzxQelQ8oz8WFbb9pB7yFDG5qocGbsdA=;
	b=lcUmlS2/GzdV6kFooR8nMMdd5HLk50rzOtDFfM/vfSDou3qGPJqKlmMf6J9ucm/kIu8Q
	SnWFyHpQVRse4CHS7c6n0fRlWQfPP2xClurQz5R0iJxAxqbNo/v4GvNiAPKdsXwQgrhi
	BeMc6S9DVzCs704FFVxCk+ODOi0wo5Sp7vdU9CMEsj53rh5XS0UstNAmmwEujjpmpwlX
	6KceyOzfVerpinNfLIJbr3BxLVkrw5+fx0atQpzaa3KYUhir5gfqPIuV1QezGqoiXpqY
	JspKhoeI2NbVGbM7odnBxFd5b1cCuvTVAALNmSGotG++LTkyQPQkib5WlasRtBQreUh3
	mQ== 
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_lOeSXlxONEo3TCAcSkevWQ)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
Date: Sun, 13 Jan 2019 19:52:00 -0500
Message-id: <649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
Subject: Re: [Printing-architecture] OP Minutes (9 January)
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <aveek.basu@lexmark.com>, Till Kamppeter <till.kamppeter@gmail.com>


--Boundary_(ID_lOeSXlxONEo3TCAcSkevWQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Ira,

A bug was filed against CUPS last month requesting that we start supporting systemd's new mDNS resolver (which apparently is replacing the use of Avahi in systemd?!?):

    https://github.com/apple/cups/issues/5452 <https://github.com/apple/cups/issues/5452>

I pushed back since there does not appear to be a way to browse DNS-SD SRV records and there is no interface for registering services outside of systemd configuration files.  But that might be a future alternative to Avahi should they extend the current interfaces to support it...


> On Jan 13, 2019, at 5:56 PM, Ira McDonald <blueroofmusic@gmail.com> wrote:
> 
> Minutes from our last Open Printing call are posted at:
> 
>   http://ftp.pwg.org/pub/pwg/liaison/openprinting/minutes/OP-Minutes-20190109.htm <http://ftp.pwg.org/pub/pwg/liaison/openprinting/minutes/OP-Minutes-20190109.htm>
> 
> 
> Action Items:
> 
>   None
> 
> 
> Next OP US/Europe/Brazil/India Conference Calls:
> 
> Note:  OP monthly calls have shifted to Bluejeans.com
> 
> (1) February - US/Europe/Brazil/India - OP Monthly Meeting
>     - Tuesday 12 February 2019, Daytime
>       - Note - IEEE 1609 F2F (Qualcomm Host) in San Diego, CA - 6-7 February 2019
>       - Note - PWG Virtual F2F (PWG Host) - 13-14 February 2019
>       - Note - BRST (Brasilia Summer Time) ends 17 February 2019
>       - Bluejeans.com web conference to be announced
>       - US
>         10am in San Francisco - US PST (Pacific Standard Time)
>         11am in Colorado - US MST (Mountain Standard Time)
>         12am in Chicago - US CST (Central Standard Time)
>         1pm in New York - US EST (Eastern Standard Time)
>       - Europe
>         7pm in Berlin - CET (Central Europe Time)
>       - Brazil
>         4pm in Belo Horizonte - BRST (Brasilia Summer Time)
>       - India
>         11:30pm in New Delhi - IST (India Standard Time) 
> 
> 
> (2) March - US/Europe/Brazil/India - OP Monthly Meeting (tentative)
>     - Tuesday 5 March 2019, Daytime
>       - Note - BRST (Brasilia Summer Time) ends 17 February 2019
>       - Note - US EDT (Eastern Daylight Time) starts 10 March 2019
>       - Note - EU CEST (Central Europe Summer Time) starts 31 March 2019
>       - Bluejeans.com web conference to be announced
>       - US
>         10am in San Francisco - US PST (Pacific Standard Time)
>         11am in Colorado - US MST (Mountain Standard Time)
>         12am in Chicago - US CST (Central Standard Time)
>         1pm in New York - US EST (Eastern Standard Time)
>       - Europe
>         7pm in Berlin - CET (Central Europe Time)
>       - Brazil
>         3pm in Belo Horizonte - BRT (Brasilia Time)
>       - India
>         11:30pm in New Delhi - IST (India Standard Time) 
> 
> 
> (3) April - US/Europe/Brazil/India - OP Monthly Meeting (tentative)
>    - Tuesday 2 April 2019, Daytime
>       - Note - BRST (Brasilia Summer Time) ends 17 February 2019
>       - Note - US EDT (Eastern Daylight Time) starts 10 March 2019
>       - Note - EU CEST (Central Europe Summer Time) starts 31 March 2019
>       - Bluejeans.com web conference to be announced
>       - US
>         10am in San Francisco - US PDT (Pacific Daylight Time)
>         11am in Colorado - US MDT (Mountain Daylight Time)
>         12am in Chicago - US CDT (Central Daylight Time)
>         1pm in New York - US EDT (Eastern Daylight Time)
>       - Europe
>         7pm in Berlin - CEST (Central Europe Summer Time)
>       - Brazil
>         2pm in Belo Horizonte - BRT (Brasilia Time)
>       - India
>         10:30pm in New Delhi - IST (India Standard Time) 
> 
> Cheers,
> - Ira
> 
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Co-Chair - TCG Metadata Access Protocol SG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic <http://sites.google.com/site/blueroofmusic>
> http://sites.google.com/site/highnorthinc <http://sites.google.com/site/highnorthinc>
> mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> PO Box 221  Grand Marais, MI 49839  906-494-2434
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_lOeSXlxONEo3TCAcSkevWQ)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Ira,<div class=3D""><br class=3D""></div><div class=3D"">A =
bug was filed against CUPS last month requesting that we start =
supporting systemd's new mDNS resolver (which apparently is replacing =
the use of Avahi in systemd?!?):</div><div class=3D""><br =
class=3D""></div><div class=3D"">&nbsp; &nbsp;&nbsp;<a =
href=3D"https://github.com/apple/cups/issues/5452" =
class=3D"">https://github.com/apple/cups/issues/5452</a></div><div =
class=3D""><br class=3D""></div><div class=3D"">I pushed back since =
there does not appear to be a way to browse DNS-SD SRV records and there =
is no interface for registering services outside of systemd =
configuration files. &nbsp;But that might be a future alternative to =
Avahi should they extend the current interfaces to support =
it...</div><div class=3D""><br class=3D""></div><div class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Jan =
13, 2019, at 5:56 PM, Ira McDonald &lt;<a =
href=3D"mailto:blueroofmusic@gmail.com" =
class=3D"">blueroofmusic@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D"">
<div class=3D""><div class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-m_2973737917277585369gmail-m_42441612358149528=
14gmail-m_-1437717217799848893gmail-m_-309151344415276828gmail-m_-27994419=
03750312663gmail-m_8879919866472623741gmail-m_6247121733015438196gmail-m_-=
45336563860668868gmail-m_-7696371708218007806gmail-m_4662659131797929118gm=
ail-m_4437823930890095150gmail-m_-681379959383614342gmail-m_78188851448918=
78450gmail-m_5896293692365239151gmail-m_7484771893033705782m_7416439913013=
906919gmail-il"><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-m_2973737917277585369gmail-m_42441612358149528=
14gmail-m_-1437717217799848893gmail-m_-309151344415276828gmail-m_-27994419=
03750312663gmail-m_8879919866472623741gmail-m_6247121733015438196gmail-m_-=
45336563860668868gmail-m_-7696371708218007806gmail-m_4662659131797929118gm=
ail-m_4437823930890095150gmail-il"><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-m_2973737917277585369gmail-m_42441612358149528=
14gmail-m_-1437717217799848893gmail-il"><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-il">Minutes</span></span></span></span></span>=
</span></span></span></span></span></span></span></span></span></span></sp=
an></span></span></span></span></span></span></span></span></span></span><=
/span> from our last Open Printing<span class=3D""> call</span> are =
<span class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span =
class=3D"">posted</span></span></span></span></span></span></span></span><=
/span></span></span></span></span></span></span></span> at:<br class=3D"">=













<br class=3D"">
&nbsp; <a =
href=3D"http://ftp.pwg.org/pub/pwg/liaison/openprinting/minutes/OP-Minutes=
-20190109.htm" target=3D"_blank" =
class=3D"">http://ftp.pwg.org/pub/pwg/liaison/openprinting/minutes/OP-Minu=
tes-20190109.htm</a><br class=3D"">





</div><div class=3D""><br class=3D""><br class=3D""></div>
Action Items:<br class=3D""><br class=3D""></div><div class=3D"">&nbsp; =
None<br class=3D""><br class=3D""><br class=3D"">Next <span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span class=3D""><span class=3D""><span class=3D""><span =
class=3D""><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-m_2973737917277585369gmail-m_-9009147911283959=
335gmail-m_-1437717217799848893gmail-m_-309151344415276828gmail-m_-2799441=
903750312663gmail-m_8879919866472623741gmail-m_6247121733015438196gmail-m_=
-45336563860668868gmail-m_-7696371708218007806gmail-m_4662659131797929118g=
mail-m_4437823930890095150gmail-m_-681379959383614342gmail-m_7818885144891=
878450gmail-m_5896293692365239151gmail-m_7484771893033705782m_741643991301=
3906919gmail-il"><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-m_2973737917277585369gmail-m_-9009147911283959=
335gmail-m_-1437717217799848893gmail-m_-309151344415276828gmail-m_-2799441=
903750312663gmail-m_8879919866472623741gmail-m_6247121733015438196gmail-m_=
-45336563860668868gmail-m_-7696371708218007806gmail-m_4662659131797929118g=
mail-m_4437823930890095150gmail-il"><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-m_2973737917277585369gmail-m_-9009147911283959=
335gmail-m_-1437717217799848893gmail-il"><span =
class=3D"gmail-m_1938204550308173004gmail-m_143227704813022973gmail-m_8026=
677298455142025gmail-m_3910236386328534355gmail-m_9066534496284299746gmail=
-m_4346366972293637117gmail-il">OP</span></span></span></span></span></spa=
n></span></span></span></span></span></span></span></span></span></span></=
span> US/Europe/Brazil/India Conference Calls: </div>

<div class=3D""><br class=3D""></div><div class=3D""><span =
style=3D"background-color:rgb(255,255,0)" class=3D"">Note:&nbsp; OP =
monthly calls have shifted to <a href=3D"http://Bluejeans.com" =
class=3D"">Bluejeans.com</a></span></div>

<div class=3D""><div dir=3D"ltr" class=3D"gmail_signature"><div =
dir=3D"ltr" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div dir=3D"ltr" =
class=3D""><br class=3D""></div><div dir=3D"ltr" class=3D"">(1) February =
- US/Europe/Brazil/India - OP Monthly Meeting<br =
class=3D"">&nbsp;&nbsp;&nbsp; - Tuesday 12 February 2019, Daytime<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - IEEE 1609 F2F =
(Qualcomm Host) in San Diego, CA - 6-7 February 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - PWG Virtual F2F (PWG =
Host) - 13-14 February 2019<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
- Note - BRST (Brasilia Summer Time) ends 17 February 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a =
href=3D"http://Bluejeans.com" class=3D"">Bluejeans.com</a> web =
conference to be announced<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
- US<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in =
San Francisco - US PST (Pacific Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Colorado - =
US MST (Mountain Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12am in Chicago - =
US CST (Central Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1pm in New York - =
US EST (Eastern Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Europe<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7pm in Berlin - =
CET (Central Europe Time)<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
Brazil<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4pm in =
Belo Horizonte - BRST (Brasilia Summer Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - India<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11:30pm in New =
Delhi - IST (India Standard Time) <br class=3D""><br class=3D""><br =
class=3D"">(2) March - US/Europe/Brazil/India - OP Monthly Meeting =
(tentative)<br class=3D"">&nbsp;&nbsp;&nbsp; - Tuesday 5 March 2019, =
Daytime<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - BRST =
(Brasilia Summer Time) ends 17 February 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - US EDT (Eastern =
Daylight Time) starts 10 March 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - EU CEST (Central =
Europe Summer Time) starts 31 March 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a =
href=3D"http://Bluejeans.com" class=3D"">Bluejeans.com</a> web =
conference to be announced<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
- US<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in =
San Francisco - US PST (Pacific Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Colorado - =
US MST (Mountain Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12am in Chicago - =
US CST (Central Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1pm in New York - =
US EST (Eastern Standard Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Europe<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7pm in Berlin - =
CET (Central Europe Time)<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
Brazil<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3pm in =
Belo Horizonte - BRT (Brasilia Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - India<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11:30pm in New =
Delhi - IST (India Standard Time) <br class=3D""></div><div dir=3D"ltr" =
class=3D""><br class=3D""></div><div dir=3D"ltr" class=3D""><br =
class=3D"">(3) April - US/Europe/Brazil/India - OP Monthly Meeting =
(tentative)<br class=3D"">&nbsp;&nbsp; - Tuesday 2 April 2019, =
Daytime<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - BRST =
(Brasilia Summer Time) ends 17 February 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - US EDT (Eastern =
Daylight Time) starts 10 March 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Note - EU CEST (Central =
Europe Summer Time) starts 31 March 2019<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a =
href=3D"http://Bluejeans.com" class=3D"">Bluejeans.com</a> web =
conference to be announced<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
- US<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in =
San Francisco - US PDT (Pacific Daylight Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Colorado - =
US MDT (Mountain Daylight Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12am in Chicago - =
US CDT (Central Daylight Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1pm in New York - =
US EDT (Eastern Daylight Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Europe<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7pm in Berlin - =
CEST (Central Europe Summer Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Brazil<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2pm in Belo =
Horizonte - BRT (Brasilia Time)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - India<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10:30pm in New =
Delhi - IST (India Standard Time) <br class=3D""></div><div dir=3D"ltr" =
class=3D""></div><div dir=3D"ltr" class=3D""><br class=3D""></div><div =
class=3D"">Cheers,</div><div class=3D"">- Ira</div><div class=3D""><br =
class=3D""></div><div dir=3D"ltr" class=3D"">Ira McDonald (Musician / =
Software Architect)<br class=3D"">Co-Chair - TCG Trusted Mobility =
Solutions WG</div><div class=3D"">Co-Chair - TCG Metadata Access =
Protocol SG<br class=3D""></div><div dir=3D"ltr" class=3D"">Chair - =
Linux Foundation Open Printing WG<br class=3D"">Secretary - IEEE-ISTO =
Printer Working Group<br class=3D"">Co-Chair - IEEE-ISTO PWG Internet =
Printing Protocol WG<br class=3D"">IETF Designated Expert - IPP &amp; =
Printer MIB<br class=3D"">Blue Roof Music / High North Inc<br =
class=3D""><a style=3D"color:rgb(51,51,255)" =
href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank" =
class=3D"">http://sites.google.com/site/blueroofmusic</a><br class=3D""><a=
 style=3D"color:rgb(102,0,204)" =
href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank" =
class=3D"">http://sites.google.com/site/highnorthinc</a><br =
class=3D"">mailto: <a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank" class=3D"">blueroofmusic@gmail.com</a><br class=3D"">PO =
Box 221&nbsp; Grand Marais, MI 49839&nbsp; 906-494-2434<br class=3D""><br =
class=3D""><div style=3D"display:inline" class=3D""></div><div =
style=3D"display:inline" class=3D""></div><div style=3D"display:inline" =
class=3D""></div><div class=3D""></div><div class=3D""></div><div =
class=3D""></div><div =
class=3D""></div></div></div></div></div></div></div></div></div></div></d=
iv></div>
_______________________________________________<br =
class=3D"">Printing-architecture mailing list<br class=3D""><a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org" =
class=3D"">Printing-architecture@lists.linux-foundation.org</a><br =
class=3D"">https://lists.linuxfoundation.org/mailman/listinfo/printing-arc=
hitecture<br class=3D""></div></blockquote></div><br class=3D""><div =
class=3D"">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
font-family: &quot;Andale Mono&quot;; font-variant-ligatures: normal; =
font-variant-east-asian: normal; font-variant-position: normal; =
line-height: normal; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none;"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Andale Mono'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing =
System&nbsp;Engineer</div></span></div></span>
</div>
<br class=3D""></div></body></html>=

--Boundary_(ID_lOeSXlxONEo3TCAcSkevWQ)--
