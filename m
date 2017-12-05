Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1512500125;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xRC7sc1g4qhAwtQ5rSKDnuAmj/gU6Wsn0c/9ygTdZj8=;
	b=dswt8pwie59I8+w0qez8xqqbI1+m1UAEdrT8RYu0pECI2hAXZpBptXvqQObaSNyZ
	YQxN3ZYWRtWDguwtI8fQSPjHRxBdUnEk4eAdwXu+UtQT+xHiOIEqEX48Q/tZPkuY
	ABDY2cRqNiSc6dCrXmwWgs3Goi0iWWId6obTBiBhuL1rQ/4rXY+yYuVAqUoDaCKy
	bhtmMPLdhOR7Qh4NxHVmaHYCLsP/AEGLrlWBy++aB6FHpbgeLy4K5yQy5K5P4FkF
	VNQOP0RYq7jsUkpD/3BzYOvmzMtvHaJVD960d7Ag6A3rbZBYm8rQjqnv9UHfyAqE
	VUwVFkvlMoKzujaFKvu1wg==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_o9Go4jEqd4YwdLCZac2djQ)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfhZqemUfTg_OJQTNTnH1RHutEOAjKNJiG6zrkPppos9Hw@mail.gmail.com>
Date: Tue, 05 Dec 2017 13:55:21 -0500
Message-id: <94286B80-5F36-4A38-A146-1E1B4BEEA04D@apple.com>
References: <CA+3RNfhNgNFupp3AboQc8vi2FZiitRRtoK8schu4JCqTK6M8VQ@mail.gmail.com>
	<D869C264-319C-45AC-B102-986F1EF3FF4D@apple.com>
	<CA+3RNfhzLeqKCTS1QOovw=jOp94QBKKNkbLQAEzFW2KZC-hrjw@mail.gmail.com>
	<F43A3DFD-E49A-4E5F-8892-4BAF296D7B24@apple.com>
	<CA+3RNfhZqemUfTg_OJQTNTnH1RHutEOAjKNJiG6zrkPppos9Hw@mail.gmail.com>
Subject: Re: [Printing-architecture] IPP Shared Infrastructure Extensions
 (INFRA)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_o9Go4jEqd4YwdLCZac2djQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Alex,

It is entirely possible for a printer manufacturer to read the document and implement the Proxy role.

The ippsample code will (once I get another few days of free time to work on it) provide a fully-functional prototype for both the Infrastructure Printer and Proxy roles, so then vendors will have something to test against.


> On Dec 5, 2017, at 11:36 AM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> 
> I see, thank you. Do you think it's possible for a printer manufacturer to look at the doc and implement Proxy role part in printer firmware, expecting someone else to implement the infra/cloud printer? 
> 
> I'm thinking about a distant future where printers can be configured as cloud/infra clients, and cloud or infra services are provided by various companies, but everything is based on some common standard and can interoperate just fine. 
> 
> On Mon, Dec 4, 2017 at 9:30 PM, Michael Sweet <msweet@apple.com <mailto:msweet@apple.com>> wrote:
> Alex,
> 
> That is exactly the point of IPP INFRA - the local Printer (in its Proxy role) fetches the jobs and documents from the Infrastructure (cloud) Printer.  The Proxy can either be part of the Printer or another network device the relays the fetched jobs to the local Printer.
> 
> 
> > On Dec 4, 2017, at 5:21 PM, Alex Korobkin <korobkin+op@gmail.com <mailto:korobkin%2Bop@gmail.com>> wrote:
> >
> > Thank you Michael.
> >
> > Is there a way for IPP/IPP Everywhere printer to pull jobs from print server, instead of server pushing them to the printer? For example, we tell the printer to periodically check this server/proxy for waiting jobs, so that it could download and print them.
> >
> > It seems like it would fit nicely into this IPP INFRA idea, but I don't see it mentioned. I got an impression that the only method is to push jobs to the printer (from Proxy or from a print server).
> >
> > On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet <msweet@apple.com <mailto:msweet@apple.com>> wrote:
> > Alex,
> >
> > It was precisely written to address cloud and split-network infrastructure issues.  I did some (private) prototyping back when we did the spec, and some of that work is present in the current ippsample project maintained by the PWG/Apple at:
> >
> >     https://github.com/istopwg/ippsample <https://github.com/istopwg/ippsample>
> >
> > I still haven't finished adding IPP INFRA support to the ippsample project yet (lack of time) but ultimately we want to have a more robust publicly-available sample implementation available to show how to do it efficiently.
> >
> > (I believe there are some commercial "release printing" solutions coming that will use IPP INFRA as well, although nothing that has been released AFAIK...)
> >
> >
> > > On Sep 27, 2017, at 1:32 PM, Alex Korobkin <korobkin+op@gmail.com <mailto:korobkin%2Bop@gmail.com>> wrote:
> > >
> > > Hi all,
> > >
> > > There is this interesting design of a cloud-like infrastructure called "IPP Shared Infrastructure Extensions", http://ftp.pwg.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.18.pdf <http://ftp.pwg.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.18.pdf>
> > >
> > > Have you heard of anyone actually implementing that?
> > >
> > > In general, I'm curious how people handle shared printers in the world of public networks and no direct connection between a printer and a user's device. That doc looks like an answer.
> > >
> > > --
> > > -Alex
> > > _______________________________________________
> > > Printing-architecture mailing list
> > > Printing-architecture@lists.linux-foundation.org <mailto:Printing-architecture@lists.linux-foundation.org>
> > > https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>
> >
> > _________________________________________________________
> > Michael Sweet, Senior Printing System Engineer
> >
> >
> >
> >
> > --
> > -Alex
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer
> 
> 
> 
> 
> -- 
> -Alex

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_o9Go4jEqd4YwdLCZac2djQ)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Alex,<div class=3D""><br class=3D""></div><div class=3D"">It =
is entirely possible for a printer manufacturer to read the document and =
implement the Proxy role.</div><div class=3D""><br class=3D""></div><div =
class=3D"">The ippsample code will (once I get another few days of free =
time to work on it) provide a fully-functional prototype for both the =
Infrastructure Printer and Proxy roles, so then vendors will have =
something to test against.</div><div class=3D""><br class=3D""></div><div =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 5, 2017, at 11:36 AM, Alex Korobkin &lt;<a =
href=3D"mailto:korobkin+op@gmail.com" =
class=3D"">korobkin+op@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">I see, thank you. Do you think it's possible for a printer =
manufacturer to look at the doc and implement Proxy role part in printer =
firmware, expecting someone else to implement the infra/cloud =
printer?&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">I'm =
thinking about a distant future where printers can be configured as =
cloud/infra clients, and cloud or infra services are provided by various =
companies, but everything is based on some common standard and can =
interoperate just fine.&nbsp;</div></div><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">On Mon, Dec 4, 2017 at 9:30 PM, =
Michael Sweet <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:msweet@apple.com" target=3D"_blank" =
class=3D"">msweet@apple.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Alex,<br class=3D"">
<br class=3D"">
That is exactly the point of IPP INFRA - the local Printer (in its Proxy =
role) fetches the jobs and documents from the Infrastructure (cloud) =
Printer.&nbsp; The Proxy can either be part of the Printer or another =
network device the relays the fetched jobs to the local Printer.<br =
class=3D"">
<div class=3D"HOEnZb"><div class=3D"h5"><br class=3D"">
<br class=3D"">
&gt; On Dec 4, 2017, at 5:21 PM, Alex Korobkin &lt;<a =
href=3D"mailto:korobkin%2Bop@gmail.com" =
class=3D"">korobkin+op@gmail.com</a>&gt; wrote:<br class=3D"">
&gt;<br class=3D"">
&gt; Thank you Michael.<br class=3D"">
&gt;<br class=3D"">
&gt; Is there a way for IPP/IPP Everywhere printer to pull jobs from =
print server, instead of server pushing them to the printer? For =
example, we tell the printer to periodically check this server/proxy for =
waiting jobs, so that it could download and print them.<br class=3D"">
&gt;<br class=3D"">
&gt; It seems like it would fit nicely into this IPP INFRA idea, but I =
don't see it mentioned. I got an impression that the only method is to =
push jobs to the printer (from Proxy or from a print server).<br =
class=3D"">
&gt;<br class=3D"">
&gt; On Wed, Sep 27, 2017 at 1:58 PM, Michael Sweet &lt;<a =
href=3D"mailto:msweet@apple.com" class=3D"">msweet@apple.com</a>&gt; =
wrote:<br class=3D"">
&gt; Alex,<br class=3D"">
&gt;<br class=3D"">
&gt; It was precisely written to address cloud and split-network =
infrastructure issues.&nbsp; I did some (private) prototyping back when =
we did the spec, and some of that work is present in the current =
ippsample project maintained by the PWG/Apple at:<br class=3D"">
&gt;<br class=3D"">
&gt;&nbsp; &nbsp; &nbsp;<a href=3D"https://github.com/istopwg/ippsample" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://github.com/istopwg/<wbr class=3D"">ippsample</a><br =
class=3D"">
&gt;<br class=3D"">
&gt; I still haven't finished adding IPP INFRA support to the ippsample =
project yet (lack of time) but ultimately we want to have a more robust =
publicly-available sample implementation available to show how to do it =
efficiently.<br class=3D"">
&gt;<br class=3D"">
&gt; (I believe there are some commercial "release printing" solutions =
coming that will use IPP INFRA as well, although nothing that has been =
released AFAIK...)<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt; &gt; On Sep 27, 2017, at 1:32 PM, Alex Korobkin &lt;<a =
href=3D"mailto:korobkin%2Bop@gmail.com" =
class=3D"">korobkin+op@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; &gt;<br class=3D"">
&gt; &gt; Hi all,<br class=3D"">
&gt; &gt;<br class=3D"">
&gt; &gt; There is this interesting design of a cloud-like =
infrastructure called "IPP Shared Infrastructure Extensions", <a =
href=3D"http://ftp.pwg.org/pub/pwg/candidates/cs-ippinfra10-20150619-5100.=
18.pdf" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://ftp.pwg.org/pub/pwg/<wbr =
class=3D"">candidates/cs-ippinfra10-<wbr =
class=3D"">20150619-5100.18.pdf</a><br class=3D"">
&gt; &gt;<br class=3D"">
&gt; &gt; Have you heard of anyone actually implementing that?<br =
class=3D"">
&gt; &gt;<br class=3D"">
&gt; &gt; In general, I'm curious how people handle shared printers in =
the world of public networks and no direct connection between a printer =
and a user's device. That doc looks like an answer.<br class=3D"">
&gt; &gt;<br class=3D"">
&gt; &gt; --<br class=3D"">
&gt; &gt; -Alex<br class=3D"">
&gt; &gt; ______________________________<wbr =
class=3D"">_________________<br class=3D"">
&gt; &gt; Printing-architecture mailing list<br class=3D"">
&gt; &gt; <a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org" =
class=3D"">Printing-architecture@lists.<wbr =
class=3D"">linux-foundation.org</a><br class=3D"">
&gt; &gt; <a =
href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-archit=
ecture" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.linuxfoundation.<wbr =
class=3D"">org/mailman/listinfo/printing-<wbr =
class=3D"">architecture</a><br class=3D"">
&gt;<br class=3D"">
&gt; ______________________________<wbr =
class=3D"">___________________________<br class=3D"">
&gt; Michael Sweet, Senior Printing System Engineer<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt; --<br class=3D"">
&gt; -Alex<br class=3D"">
<br class=3D"">
______________________________<wbr =
class=3D"">___________________________<br class=3D"">
Michael Sweet, Senior Printing System Engineer<br class=3D"">
<br class=3D"">
</div></div></blockquote></div><br class=3D""><br clear=3D"all" =
class=3D""><div class=3D""><br class=3D""></div>-- <br class=3D""><div =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr" class=3D"">-Alex</div></div>
</div>
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

--Boundary_(ID_o9Go4jEqd4YwdLCZac2djQ)--
