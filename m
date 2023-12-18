Return-Path: <blueroofmusic@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51C80414C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DD80410A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702943182; x=1703547982;
 darn=lists.linuxfoundation.org; 
 h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NwgQ1etwZCePWNSW16VNM1SOMujwcAkHyr+HEPXh6lU=;
 b=AqN+b4M+uOQaDVDElUbDEaoqnwIWaOr2bI2kNfPtPdvVSQzOEjXsPkasa0qLd0DI9P
 gnM5qon8vXMIZyWzXikhf6SwhzgYDU/xgnOL83KaasrTH1GbdcTtXzOM4dzS1/FSLbfN
 0xiEA2EHibUVx042kHeX+LxHR4sDzN9O9eqxMqEReMBedE/icDlB3siSaybf9Re7ce+t
 w8NdLvEAppzRX79di2YxLXrEh8CgABlqvvShdHKM8FVgXYrpmKgZBp4Crc8qweauF6fz
 JItKUjOiIo23FCEDlr6cNhWP6BVUBAvbx4YdNSI157ka/rmWpbLpepMoB4SjwVj9EG4S
 f8AQ==
MIME-Version: 1.0
References: <20231218-khaki-adder-from-eldorado-aa4f1a@lemur>
In-Reply-To: <20231218-khaki-adder-from-eldorado-aa4f1a@lemur>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Mon, 18 Dec 2023 18:46:10 -0500
Message-ID: <CAN40gStcihqiUE0GOyJauQ-=uWMNYBnJdqo8Hpxtm3UUTxQCsw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000701702060cd15b7e"
Subject: Re: [Printing-architecture] PSA: this list is moving to
 lists.linux.dev (no action required)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
Cc: printing-architecture@lists.linuxfoundation.org

--000000000000701702060cd15b7e
Content-Type: text/plain; charset="UTF-8"

FYI - old OpenPrinting address will work forever, but no inserted list
header in Subject line - see Konstantin's list of details below.

Cheers,
- Ira

On Mon, Dec 18, 2023, 6:02 PM Konstantin Ryabitsev <
konstantin@linuxfoundation.org> wrote:

>
> Hello, all:
>
> The mailman-2 system running on lists.linuxfoundation.org is being
> decommissioned, so all lists currently hosted there will be found new
> homes.
>
> This Thursday, December 21, at 11AM PST (19:00 UTC), this list will be
> migrated
> to live on lists.linux.dev, but the impact of this move should be minor:
>
> 1. The new canonical list address will be
> printing-architecture@lists.linux.dev.
>
> 2. *The old address will continue to work* for the foreseeable future, so
> any
>    existing conversations can continue and any new messages sent to the old
>    list address will be properly delivered to all subscribers.
>
> 3. All members will be automatically subscribed to the new list, so no
> action
>    is required on anyone's part to keep receiving list mail.
>
> 4. The list will be archived on
> https://lore.kernel.org/printing-architecture/
>    with all prior archives automatically imported.
>
> 5. The List-ID header will change, regardless to which address the message
> is
>    sent:
>
>    before: List-Id: <printing-architecture.lists.linuxfoundation.org>
>     after: List-Id: <printing-architecture.lists.linux.dev>
>
>    You will need to update your filtering rules if you filter based on the
>    contents of that header (on or after the migration date).
>
> 6. The mailman footer will no longer be added to message bodies and the
>    subject will no longer be modified to insert [Printing-architecture]
>    (because this violates DMARC).
>
> 7. Subscribing and unsubscribing will be done using the mlmmj supported
>    commands, documented at https://subspace.kernel.org/subscribing.html
>
> Please let me know if you have any questions or concerns. I will follow up
> on Thursday after the migration has been completed.
>
> Best regards,
> -K
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--000000000000701702060cd15b7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>FYI - old OpenPrinting address will work forever, bu=
t no inserted list header in Subject line - see Konstantin&#39;s list of de=
tails below.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers,</di=
v><div dir=3D"auto">- Ira=C2=A0<br><br><div class=3D"gmail_quote" dir=3D"au=
to"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 18, 2023, 6:02 PM Kon=
stantin Ryabitsev &lt;<a href=3D"mailto:konstantin@linuxfoundation.org">kon=
stantin@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><br>
Hello, all:<br>
<br>
The mailman-2 system running on <a href=3D"http://lists.linuxfoundation.org=
" rel=3D"noreferrer noreferrer" target=3D"_blank">lists.linuxfoundation.org=
</a> is being<br>
decommissioned, so all lists currently hosted there will be found new homes=
.<br>
<br>
This Thursday, December 21, at 11AM PST (19:00 UTC), this list will be migr=
ated<br>
to live on <a href=3D"http://lists.linux.dev" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">lists.linux.dev</a>, but the impact of this move should =
be minor:<br>
<br>
1. The new canonical list address will be <a href=3D"mailto:printing-archit=
ecture@lists.linux.dev" target=3D"_blank" rel=3D"noreferrer">printing-archi=
tecture@lists.linux.dev</a>.<br>
<br>
2. *The old address will continue to work* for the foreseeable future, so a=
ny<br>
=C2=A0 =C2=A0existing conversations can continue and any new messages sent =
to the old<br>
=C2=A0 =C2=A0list address will be properly delivered to all subscribers.<br=
>
<br>
3. All members will be automatically subscribed to the new list, so no acti=
on<br>
=C2=A0 =C2=A0is required on anyone&#39;s part to keep receiving list mail.<=
br>
<br>
4. The list will be archived on <a href=3D"https://lore.kernel.org/printing=
-architecture/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lor=
e.kernel.org/printing-architecture/</a><br>
=C2=A0 =C2=A0with all prior archives automatically imported.<br>
<br>
5. The List-ID header will change, regardless to which address the message =
is<br>
=C2=A0 =C2=A0sent:<br>
<br>
=C2=A0 =C2=A0before: List-Id: &lt;<a href=3D"http://printing-architecture.l=
ists.linuxfoundation.org" rel=3D"noreferrer noreferrer" target=3D"_blank">p=
rinting-architecture.lists.linuxfoundation.org</a>&gt;<br>
=C2=A0 =C2=A0 after: List-Id: &lt;<a href=3D"http://printing-architecture.l=
ists.linux.dev" rel=3D"noreferrer noreferrer" target=3D"_blank">printing-ar=
chitecture.lists.linux.dev</a>&gt;<br>
<br>
=C2=A0 =C2=A0You will need to update your filtering rules if you filter bas=
ed on the<br>
=C2=A0 =C2=A0contents of that header (on or after the migration date).<br>
<br>
6. The mailman footer will no longer be added to message bodies and the<br>
=C2=A0 =C2=A0subject will no longer be modified to insert [Printing-archite=
cture]<br>
=C2=A0 =C2=A0(because this violates DMARC).<br>
<br>
7. Subscribing and unsubscribing will be done using the mlmmj supported<br>
=C2=A0 =C2=A0commands, documented at <a href=3D"https://subspace.kernel.org=
/subscribing.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
subspace.kernel.org/subscribing.html</a><br>
<br>
Please let me know if you have any questions or concerns. I will follow up<=
br>
on Thursday after the migration has been completed.<br>
<br>
Best regards,<br>
-K<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank" rel=3D"noreferrer">Printing-architecture@lists.linux-foundation=
.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.lin=
uxfoundation.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div></div></div>

--000000000000701702060cd15b7e--
