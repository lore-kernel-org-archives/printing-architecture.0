Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lJryIp6RSHKx5umF5r9Zw2V5W6CJeE38JtGpeAHtJy4=;
	b=uSN04nJENJS9XKRsIODunLNi8ySEyOWRn9hm/KVyM/z/1dX5wXfUFCDWvcoKcNS0n7
	n1687F6wVAO01CqkC3EicLt1BTGMyWmK2egmHdOTZxdHGi2dVKuVUgczQf0DnZhbxn8V
	oY7OgX3OtEFOH0H5cOkQrnI1J8I3A6y/9PRqg=
MIME-Version: 1.0
In-Reply-To: <4EA99DFF.3080801@gmail.com>
References: <4EA99DFF.3080801@gmail.com>
Date: Thu, 27 Oct 2011 12:38:06 -0600
Message-ID: <CAGC3nLAF-dT=wiaSS=yUSgDvcHRSrBoBf_ZMtEhKtWoXhtrpgA@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=90e6ba6e8f4ed3e24004b04c1236
Subject: Re: [Printing-architecture] Moving CUPS filters to OpenPrinting
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

--90e6ba6e8f4ed3e24004b04c1236
Content-Type: text/plain; charset=UTF-8

Hello

I think we should keep foomatic-* as is, if only to avoid user confusion.

Overall openprinting-cups-filters is a good name and can be extended to an
optional package easily, e.g. openprinting-cups-filters-extra, cannot really
go wrong with it.

The only downsides I can think of is that it is verbose and just a bit,
plain.

There is another source of options, in line with CUPS, CPD, CMPD we could
call it CFS* ( Common Filter Set ) or CPF ( Common Printing Filters ) or
CCUPSFS (Common Common Unix Printing Spooler Filter Set).

But perhaps my favourite: CUFS ( Common Unix Filter Set), it may not mention
the cups specific nature of the filters but what we lose in description we
make up for in branding, it is a pronounceable word!**

Daniel

*Already taken =\
**In English at least.



2011/10/27 Till Kamppeter <till.kamppeter@gmail.com>

> Hi,
>
> Mike Sweet intends to remove the filters which are not used by Mac OS X
> from the CUPS upstream package:
>
> http://www.cups.org/str.php?**L3930 <http://www.cups.org/str.php?L3930>
>
> We have agreed on this on the last OpenPrinting Summit and the filters will
> be continued and hosted by OpenPrinting. In addition, the filters for the
> PDF printing workflow will not be adopted by CUPS but joined with the CUPS
> filters we overtake.
>
> All Linux distributions would have to include this new CUPS filters package
> then to get CUPS continuing to work and have the same feature set as before.
>
> Due to the fact that this package will use the PDF workflow by default and
> that all major desktop applications send their print jobs already in PDF,
> this will complete the implementation of PDF as standard print job format.
> See also my updated web page:
>
> https://www.linuxfoundation.**org/collaborate/workgroups/**openprinting/**
> pdfasstandardprintjobformat<https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfasstandardprintjobformat>
>
> By this, we also do not need to get a copyright/license agreement between
> the developers of the PDF filters and Apple.
>
> We can start hosting the CUPS filters as soon as our BZR repositories for
> OpenPrinting will be back. In the CUPS project these filters are already
> separated into their own branch, we only need to import them from their SVN
> into our BZR.
>
> We also need a name for the package. Should we call it simply
> "cups-filters"? Or "op-cups-filters"? Or do we rename Foomatic to
> openprinting and have the packages
>
> - openprinting-db
> - openprinting-db-nonfree
> - openprinting-db-engine
> - openprinting-rip
> - openprinting-cups-filters
>
> Note that we keep foomatic-rip/openprinting-rip separate from the CUPS
> filters as this filter is a universal filter which also works with many
> other printing systems.
>
> Another decision to make is whether we really should maintain all the
> filters which get over to us from CUPS or whether we should discontinue
> some. The filter set will contain "imageto..." and "textto..." filters which
> are not made use of by the usual desktop applications, they send all PDF
> (and some send PostScript). Alternatively, these filters could be made
> optional.
>
>   Till
> ______________________________**_________________
> Printing-architecture mailing list
> Printing-architecture@lists.**linux-foundation.org<Printing-architecture@lists.linux-foundation.org>
> https://lists.linuxfoundation.**org/mailman/listinfo/printing-**
> architecture<https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>
>

--90e6ba6e8f4ed3e24004b04c1236
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello<br><br>I think we should keep foomatic-* as is, if only to avoid user=
 confusion. <br><br>Overall openprinting-cups-filters is a good name and ca=
n be extended to an optional package easily, e.g. openprinting-cups-filters=
-extra, cannot really go wrong with it.<br>
<br>The only downsides I can think of is that it is verbose and just a bit,=
 plain.<br><br>There is another source of options, in line with CUPS, CPD, =
CMPD we could call it CFS* ( Common Filter Set ) or CPF ( Common Printing F=
ilters ) or CCUPSFS (Common Common Unix Printing Spooler Filter Set).<br>
<br>But perhaps my favourite: CUFS ( Common Unix Filter Set), it may not me=
ntion the cups specific nature of the filters but what we lose in descripti=
on we make up for in branding, it is a pronounceable word!**<br><br>Daniel<=
br>
<br>*Already taken =3D\<br>**In English at least.<br><br><br><br><div class=
=3D"gmail_quote">2011/10/27 Till Kamppeter <span dir=3D"ltr">&lt;<a href=3D=
"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;</span><b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex;">
Hi,<br>
<br>
Mike Sweet intends to remove the filters which are not used by Mac OS X fro=
m the CUPS upstream package:<br>
<br>
<a href=3D"http://www.cups.org/str.php?L3930" target=3D"_blank">http://www.=
cups.org/str.php?<u></u>L3930</a><br>
<br>
We have agreed on this on the last OpenPrinting Summit and the filters will=
 be continued and hosted by OpenPrinting. In addition, the filters for the =
PDF printing workflow will not be adopted by CUPS but joined with the CUPS =
filters we overtake.<br>

<br>
All Linux distributions would have to include this new CUPS filters package=
 then to get CUPS continuing to work and have the same feature set as befor=
e.<br>
<br>
Due to the fact that this package will use the PDF workflow by default and =
that all major desktop applications send their print jobs already in PDF, t=
his will complete the implementation of PDF as standard print job format. S=
ee also my updated web page:<br>

<br>
<a href=3D"https://www.linuxfoundation.org/collaborate/workgroups/openprint=
ing/pdfasstandardprintjobformat" target=3D"_blank">https://www.linuxfoundat=
ion.<u></u>org/collaborate/workgroups/<u></u>openprinting/<u></u>pdfasstand=
ardprintjobformat</a><br>

<br>
By this, we also do not need to get a copyright/license agreement between t=
he developers of the PDF filters and Apple.<br>
<br>
We can start hosting the CUPS filters as soon as our BZR repositories for O=
penPrinting will be back. In the CUPS project these filters are already sep=
arated into their own branch, we only need to import them from their SVN in=
to our BZR.<br>

<br>
We also need a name for the package. Should we call it simply &quot;cups-fi=
lters&quot;? Or &quot;op-cups-filters&quot;? Or do we rename Foomatic to op=
enprinting and have the packages<br>
<br>
- openprinting-db<br>
- openprinting-db-nonfree<br>
- openprinting-db-engine<br>
- openprinting-rip<br>
- openprinting-cups-filters<br>
<br>
Note that we keep foomatic-rip/openprinting-rip separate from the CUPS filt=
ers as this filter is a universal filter which also works with many other p=
rinting systems.<br>
<br>
Another decision to make is whether we really should maintain all the filte=
rs which get over to us from CUPS or whether we should discontinue some. Th=
e filter set will contain &quot;imageto...&quot; and &quot;textto...&quot; =
filters which are not made use of by the usual desktop applications, they s=
end all PDF (and some send PostScript). Alternatively, these filters could =
be made optional.<br>

<br>
 =C2=A0 Till<br>
______________________________<u></u>_________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.<u></u>linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.<u></u>org/mailma=
n/listinfo/printing-<u></u>architecture</a><br>
</blockquote></div><br>

--90e6ba6e8f4ed3e24004b04c1236--
