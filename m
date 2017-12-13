Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1513187336;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ilfRtKiw3pkwUVxwgIt7ITy+ZNUxUT4EsEI2ZD3Xngw=;
	b=vm5iNwExlmADmBiC1UxRc8bi/oXxU4wM4iessVdqHEsFVgcP8h7PAYABXdWlELNz
	DYYZhzzCFuNsT0eV2XR1xrNfpi9JtsoYa92OpyDleQQtChfy7yRiNGsA0wn+pTk4
	mykKh56I6V9yQJpM6jrBbBBVbdBAkQ/vj52vCPPCYI/Opp/BQY46WvltziU/k7q+
	l9HLS1CG6ZWDQVZUTUsxYXijFSWrZZ5BPJtlvILlFoCnGD43KBPDE6A22B1hS8SJ
	9wyJO3RiXbJVrkSKnziX94x/PNUfqahU4ePyn1JRMUfcY208cSnt25FYxLXc1ARh
	01hhqblo7p3Btjx3fPuicA==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_QqosCxKcPehGMWVbf8BBCQ)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1513184881.2462.20.camel@obry.net>
Date: Wed, 13 Dec 2017 12:48:53 -0500
Message-id: <E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
Subject: Re: [Printing-architecture] CUPS and PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Pascal Obry <pascal@obry.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_QqosCxKcPehGMWVbf8BBCQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Pascal,

The CUPS destination API is the replacement, specifically the cupsGetDestMedia* functions.  The current CUPS Programming Manual shows how to use it.

FWIW, media type, size, and source are combined with the new API and the typical usage is to show the ready (loaded) media.  You can also look for the supported "media-type" values with the cupsDestFindSupported function, in order to specify it separately.


> On Dec 13, 2017, at 12:08 PM, Pascal Obry <pascal@obry.net> wrote:
> 
> 
> Hello!
> 
> I'm not sure this is the right list, if not please let me know.
> 
> I've seen that the CUPS PPD API is being deprecated, so I'm trying to
> move away from it.
> 
> But for the MediaType list I cannot find a way without PPD API.
> Currently the code is something like:
> 
> 
>  const char *PPDFile = cupsGetPPD(printer_name);
>  ppd_file_t *ppd = ppdOpenFile(PPDFile);
> 
>  if (ppd)
>  {
>      ppd_option_t *opt = ppdFindOption(ppd, "MediaType");
> 
>      if (opt)
>      {
>        ppd_choice_t *choice = opt->choices;
> 
>        for (int k=0; k<opt->num_choices; k++)
>        {
>          ... use choice->text here ...
> 
> 
> What would be the equivalent without using the PPD API?
> 
> Any pointer appreciated as I've not found a solution at this stage. I'm
> sure I'm just missing something obvious...
> 
> Thanks,
> 
> -- 
>  Pascal Obry /  Magny Les Hameaux (78)
> 
>  The best way to travel is by means of imagination
> 
>  http://www.obry.net
> 
>  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_QqosCxKcPehGMWVbf8BBCQ)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Pascal,<div class=3D""><br class=3D""></div><div class=3D"">The=
 CUPS destination API is the replacement, specifically the =
cupsGetDestMedia* functions. &nbsp;The current CUPS Programming Manual =
shows how to use it.</div><div class=3D""><br class=3D""></div><div =
class=3D"">FWIW, media type, size, and source are combined with the new =
API and the typical usage is to show the ready (loaded) media. &nbsp;You =
can also look for the supported "media-type" values with the =
cupsDestFindSupported function, in order to specify it =
separately.</div><div class=3D""><br class=3D""></div><div =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 13, 2017, at 12:08 PM, Pascal Obry &lt;<a =
href=3D"mailto:pascal@obry.net" class=3D"">pascal@obry.net</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D""><br class=3D"">Hello!<br class=3D""><br class=3D"">I'm not =
sure this is the right list, if not please let me know.<br class=3D""><br =
class=3D"">I've seen that the CUPS PPD API is being deprecated, so I'm =
trying to<br class=3D"">move away from it.<br class=3D""><br =
class=3D"">But for the MediaType list I cannot find a way without PPD =
API.<br class=3D"">Currently the code is something like:<br class=3D""><br=
 class=3D""><br class=3D""> &nbsp;const char *PPDFile =3D =
cupsGetPPD(printer_name);<br class=3D""> &nbsp;ppd_file_t *ppd =3D =
ppdOpenFile(PPDFile);<br class=3D""><br class=3D""> &nbsp;if (ppd)<br =
class=3D""> &nbsp;{<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ppd_option_t *opt =3D ppdFindOption(ppd, =
"MediaType");<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (opt)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ppd_choice_t *choice =3D =
opt-&gt;choices;<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (int k=3D0; =
k&lt;opt-&gt;num_choices; k++)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;... use =
choice-&gt;text here ...<br class=3D""><br class=3D""><br class=3D"">What =
would be the equivalent without using the PPD API?<br class=3D""><br =
class=3D"">Any pointer appreciated as I've not found a solution at this =
stage. I'm<br class=3D"">sure I'm just missing something obvious...<br =
class=3D""><br class=3D"">Thanks,<br class=3D""><br class=3D"">-- <br =
class=3D""> &nbsp;Pascal Obry / &nbsp;Magny Les Hameaux (78)<br =
class=3D""><br class=3D""> &nbsp;The best way to travel is by means of =
imagination<br class=3D""><br class=3D""> &nbsp;<a =
href=3D"http://www.obry.net" class=3D"">http://www.obry.net</a><br =
class=3D""><br class=3D""> &nbsp;gpg --keyserver <a =
href=3D"http://keys.gnupg.net" class=3D"">keys.gnupg.net</a> --recv-key =
F949BD3B<br class=3D"">_______________________________________________<br =
class=3D"">Printing-architecture mailing list<br class=3D""><a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org" =
class=3D"">Printing-architecture@lists.linux-foundation.org</a><br =
class=3D"">https://lists.linuxfoundation.org/mailman/listinfo/printing-arc=
hitecture<br class=3D""></div></div></blockquote></div><br class=3D""><div=
 class=3D"">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing =
System&nbsp;Engineer</div></span></div></span>
</div>
<br class=3D""></div></body></html>=

--Boundary_(ID_QqosCxKcPehGMWVbf8BBCQ)--
