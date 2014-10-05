Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=GYiUXAztD22otdw+0FziWmZzCh2WJnzPQzyMf1F8rqk=;
	b=GbV68cxOs88TS7RzQANQoRAdWtoe2+t1KoAPW4iW919VUf4TqEo/ecqcqCxBo3F7oe
	Hl1kwAC3tN2CYF5p8b4FWdA/4pzZmJduW4CdqGMZ1HUykIG0unmcuebgh16C8rTuVohK
	HZOQ+oYGfwlu8BS3I2dxhxDUxM5Gqz3FI7B6kZuhcirT/uM6nhu4RhPHJ73tLbCbQk6H
	PKktAKHog7aLqpSZI2moGTYfewIUbCS/IADVGpU3QUW/bAkSLcC0duwR5LFoLKLquZy+
	C9jmmq35fS2k2yLLK2Y2RxRd7O9hq1QazPQPHvpfecFACA8coSdTiX8Q/UG4geteym7I
	NcOg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <54304ED0.5000809@thax.hardliners.org>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<54304ED0.5000809@thax.hardliners.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Sun, 5 Oct 2014 00:58:43 -0400
Message-ID: <CA+3RNfibQ1=RVN1XV8NuF9TX-6UB-oT3LVjm_N4vJ38Spa4m8A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e011619324ea0150504a5d3bf
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--089e011619324ea0150504a5d3bf
Content-Type: text/plain; charset=UTF-8

Hi Tobias,

Thanks for the explanation. Directives pdftopdfJCLCopies and Copies sound
promising, there is a mention of them in README [1], but that's all, I
couldn't find any other documentation.

Do you happen to see a PPD with these options being used? I'd like to see
an example, but cannot find any.

[1]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/README#L1021

2014-10-04 15:47 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

> On 04/10/14 19:36, Alex Korobkin wrote:
>
>> cups-filters package ships with a couple of sample PPDs [2], [3] that
>> basically allow for inserting PJL commands into the job to change its most
>> common options: tray, duplex, etc.
>> I'm trying to find out whether making manual copies via cupsManualCopies
>> is the only way to handle the number of copies. Can pdftopdf or CUPS insert
>> PJL SET COPIES=X into the job?
>>
> Yes (for resonably recent versions). But the string "PJL SET COPIES" (or
> whatever the printer needs) has to come *from the PPD*. Also the emit-jcl
> must not be disabled in pdftopdf's arguments (mostly relevant when pdftopdf
> is NOT the last filter).
>
>  Can CUPS set the number of copies via IPP commands? There is also some
>> code in pdftopdf_jcl.cc [4] that is dealing with a Copies directive in a
>> PPD, but I don't quite understand what it does.
>>
> If the PPD does not specify cupsManualCopies, then the JCL commands *for
> that particular printer* have to be specified in the PPD.
> Also keep in mind that the device might not support deviceCopies for
> certain collate settings; the PPD has to contain the necessary "logic" for
> that, too.
>
> From [4] it follows that certain PPD Attributes /can/ be necessary for
> deviceCopies:
>   *JCLToPDFInterpreter, *pdftopdfJCLBegin, *pdftopdfJCLCopies, Copies
>
>   Tobias
>



-- 
-Alex

--089e011619324ea0150504a5d3bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tobias,=C2=A0<div><br></div><div>Thanks for the explana=
tion. Directives pdftopdfJCLCopies and Copies sound promising, there is a m=
ention of them in README [1], but that&#39;s all, I couldn&#39;t find any o=
ther documentation.=C2=A0</div><div><br></div><div>Do you happen to see a P=
PD with these options being used? I&#39;d like to see an example, but canno=
t find any.=C2=A0</div><div><br></div><div>[1]=C2=A0<a href=3D"http://bzr.l=
inuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/READ=
ME#L1021">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filte=
rs/annotate/head:/README#L1021</a></div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">2014-10-04 15:47 GMT-04:00 Tobias Hoffmann <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:lprint-list@thax.hardliners.org" targe=
t=3D"_blank">lprint-list@thax.hardliners.org</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><span class=3D"">On 04/10/14 19:36, Alex Korobkin wrote=
:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
cups-filters package ships with a couple of sample PPDs [2], [3] that basic=
ally allow for inserting PJL commands into the job to change its most commo=
n options: tray, duplex, etc.<br>
I&#39;m trying to find out whether making manual copies via cupsManualCopie=
s is the only way to handle the number of copies. Can pdftopdf or CUPS inse=
rt PJL SET COPIES=3DX into the job?<br>
</blockquote></span>
Yes (for resonably recent versions). But the string &quot;PJL SET COPIES&qu=
ot; (or whatever the printer needs) has to come *from the PPD*. Also the em=
it-jcl must not be disabled in pdftopdf&#39;s arguments (mostly relevant wh=
en pdftopdf is NOT the last filter).<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Can CUPS set the number of copies via IPP commands? There is also some code=
 in pdftopdf_jcl.cc [4] that is dealing with a Copies directive in a PPD, b=
ut I don&#39;t quite understand what it does.<br>
</blockquote></span>
If the PPD does not specify cupsManualCopies, then the JCL commands *for th=
at particular printer* have to be specified in the PPD.<br>
Also keep in mind that the device might not support deviceCopies for certai=
n collate settings; the PPD has to contain the necessary &quot;logic&quot; =
for that, too.<br>
<br>
From [4] it follows that certain PPD Attributes /can/ be necessary for devi=
ceCopies:<br>
=C2=A0 *JCLToPDFInterpreter, *pdftopdfJCLBegin, *pdftopdfJCLCopies, Copies<=
span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
=C2=A0 Tobias<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr">-Alex</div>
</div>

--089e011619324ea0150504a5d3bf--
