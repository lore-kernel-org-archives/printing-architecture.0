Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1513265400;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=swb95IZ3m0VRgA3K1pjuDJaVjSk2a8Q63tF3WmW/WcM=;
	b=ATF8dudn30brGjgvndrtbpkCUXm0BCwvtbcnrTIJyow2wyUCdoL15+WhhfpROKv2
	mqAZa8a2CwJW/U4uKwfRiv80l4rkI85m+h66/uimcjHHjYImzoDP9R/CzsdMIgt3
	2dTmIwhlpv0zf+3e1dcxMswdonGHGIYFvnGJ0Wa0eVprMPjW0wdZbQ3bB2reVjzl
	eFfn1jFsDaBeT0WXQ+gT6DV093SrfKPH+1GHUOpcG5Zhsxr31zbyUNK592M17zuk
	M4CgJMFEZCOGIJlsvcNTi8qNxu3Wx02iHpjBssI8gLcqi39FqhumfZV+DvsNfeGd
	xzsTkO9duTVsTGd8FDuG9g==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_czft4WVcashO+sIXffWOTA)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+9ZNicGERJ38dBhN7abEXaC30wPRbkNuzWF8Oo09VEpjh5pqQ@mail.gmail.com>
Date: Thu, 14 Dec 2017 10:29:57 -0500
Message-id: <1E61ADED-A678-4953-8533-8818C39FA63E@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
	<1513192373.2462.33.camel@obry.net>
	<4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
	<1513204278.2462.45.camel@obry.net>
	<CA+9ZNicGERJ38dBhN7abEXaC30wPRbkNuzWF8Oo09VEpjh5pqQ@mail.gmail.com>
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


--Boundary_(ID_czft4WVcashO+sIXffWOTA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Pascal,

The cupsLocalizeDestValue API is there to get the equivalent of the PPD choice text field.  However, for a driver-based queue we currently do not generate the strings file (being tracked by Issue #5194) so unless it is a standard choice you'll just get the unlocalized (US english) keyword string.

FWIW, I think it would be useful for you to do development with a printer that actually supports IPP, if for any other reason to see where things are going and the functionality that is available on a modern printer without additional driver software...


> On Dec 14, 2017, at 5:57 AM, Pascal Obry <pascal@obry.net> wrote:
> 
> Hello Michael,
> 
> Sorry to bother you again with this. But now I'm not sure we are talking about the same thing. The get cupsLocalizeDestValue() is to handle the translation in different language I suppose, but what I want is to get the "text" field for a *MediaType line.
> 
> With the PPD API one could do:
> 
>     ppd_option_t *opt = ppdFindOption(ppd, "MediaType");
> 
>     if (opt)
>       {
>         ppd_choice_t *choice = opt->choices;
> 
>         for (int k=0; k<opt->num_choices; k++)
>           {
>             printf ("PPD: media type %s | %s\n", choice->choice, choice->text);
>             choice++;
>           }
> 
> And the choice->choice above is "Luster" in "Luster/Premium Luster Photo Paper" (see PPD def just below) and choice->text is the second part (human readable string) after the / so "Premium Luster Photo Paper".
> 
>    *MediaType Luster/Premium Luster Photo Paper:    "<</MediaType(Luster)>>setpagedevice"
> 
> And what I'm looking for is a way to get the human readable part without resorting on the PPD API. I've tried many things, but fails to get this value.
> 
> Is that possible without the PPD API?
> 
> Thanks,
> 
> -- 
>   Pascal Obry /  Magny Les Hameaux (78)
> 
>   The best way to travel is by means of imagination
> 
>   http://photos.obry.net <http://photos.obry.net/>
>   http://www.obry.net <http://www.obry.net/>
> 
>   gpg --keyserver keys.gnupg.net <http://keys.gnupg.net/> --recv-key F949BD3B

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_czft4WVcashO+sIXffWOTA)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Pascal,<div class=3D""><br class=3D""></div><div class=3D"">The=
 cupsLocalizeDestValue API is there to get the equivalent of the PPD =
choice text field. &nbsp;However, for a driver-based queue we currently =
do not generate the strings file (being tracked by Issue #5194) so =
unless it is a standard choice you'll just get the unlocalized (US =
english) keyword string.</div><div class=3D""><br class=3D""></div><div =
class=3D"">FWIW, I think it would be useful for you to do development =
with a printer that actually supports IPP, if for any other reason to =
see where things are going and the functionality that is available on a =
modern printer without additional driver software...</div><div =
class=3D""><br class=3D""></div><div class=3D""><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 14, 2017, at 5:57 AM, Pascal Obry &lt;<a =
href=3D"mailto:pascal@obry.net" class=3D"">pascal@obry.net</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><div class=3D"">Hello Michael,<br =
class=3D""><br class=3D""></div>Sorry to bother you again with this. But =
now I'm not sure we are talking about the same thing. The get =
cupsLocalizeDestValue() is to handle the translation in different =
language I suppose, but what I want is to get the "text" field for a =
*MediaType line.<br class=3D""><br class=3D""></div>With the PPD API one =
could do:<br class=3D""><div class=3D""><div class=3D""><br =
class=3D""></div><div class=3D"">&nbsp;&nbsp;&nbsp; ppd_option_t *opt =3D =
ppdFindOption(ppd, "MediaType");<br class=3D""><br =
class=3D"">&nbsp;&nbsp;&nbsp; if (opt)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ppd_choice_t =
*choice =3D opt-&gt;choices;<br class=3D""><br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (int k=3D0; =
k&lt;opt-&gt;num_choices; k++)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; printf ("PPD: media type %s | %s\n", choice-&gt;choice, =
choice-&gt;text);<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; choice++;<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">And =
the choice-&gt;choice above is  "Luster" in "Luster/Premium Luster Photo =
Paper" (see PPD def just below) and choice-&gt;text is the second part =
(human readable string) after the / so "Premium Luster Photo =
Paper".</div><div class=3D""><br class=3D""></div><div =
class=3D"">&nbsp;&nbsp; *MediaType Luster/Premium Luster Photo =
Paper:&nbsp;&nbsp;&nbsp; =
"&lt;&lt;/MediaType(Luster)&gt;&gt;setpagedevice"<br class=3D""></div><div=
 class=3D""><br class=3D""></div><div class=3D"">And what I'm looking =
for is a way to get the human readable part without resorting on the PPD =
API. I've tried many things, but fails to get this value.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Is that possible without =
the PPD API?<br class=3D""></div><div class=3D""><br =
class=3D""></div>Thanks,</div><div class=3D""><br class=3D""><div =
class=3D""><div class=3D"gmail_extra">-- <br class=3D""><div =
class=3D"gmail_signature">&nbsp; Pascal Obry / &nbsp;Magny Les Hameaux =
(78)<br class=3D""><br class=3D"">&nbsp; The best way to travel is by =
means of imagination<br class=3D""><br class=3D"">&nbsp; <a =
href=3D"http://photos.obry.net/" target=3D"_blank" =
class=3D"">http://photos.obry.net</a><br class=3D"">&nbsp; <a =
href=3D"http://www.obry.net/" target=3D"_blank" =
class=3D"">http://www.obry.net</a><br class=3D""><br class=3D"">&nbsp; =
gpg --keyserver <a href=3D"http://keys.gnupg.net/" target=3D"_blank" =
class=3D"">keys.gnupg.net</a> --recv-key F949BD3B</div>
</div></div></div></div>
</div></blockquote></div><br class=3D""><div class=3D"">
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

--Boundary_(ID_czft4WVcashO+sIXffWOTA)--
