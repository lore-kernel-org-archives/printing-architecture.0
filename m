Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=AQB9a1tLVh/ohGNBpBIy3des50O/AFU21LSBcB8H+2g=;
	b=Pd++qVf3VNdtu+HZwzWsTDBm+B9ahoZnl48ca97pfqyqjwLScKa9bLeQOfq7FWs3T7
	ahSHOypZgQcW1mC0qRRRZg9HSl9TR+qm54iHcP7nVznn4AxFHCFFjIL78MKNNvlJSFSI
	+8eTqCD51MaKtDOqSBLs4ro5wK0KHPLp4AJfQm3VA6oa6ZsJMqv1R6vXug5rQRThduMa
	rT4/3vccEe7NACkXc8jCmjoOFuyy4tV1CmFQ7mfuXhpPnQ4I9LnIO/KxjKWwGIJLrWmH
	KnRz3Uvxe5qB6v5jjSgGMz/qsXRau5xlIeWyzbj8rgfyJftG2+eoiCW/E6c095h8olAv
	oXZA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <55DB5430.7000906@gmail.com>
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
	<CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
	<FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
	<55DB5430.7000906@gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 24 Aug 2015 14:11:03 -0400
Message-ID: <CA+3RNfiGkWAYNjOSboBPmeRk=6eaZ=Hv=N+g4PGp4qXLqF_FwQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113dc0048a8436051e128b91
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
	and Windows clients
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
Cc: Smith Kennedy <smith.kennedy@hp.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--001a113dc0048a8436051e128b91
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 24, 2015 at 1:28 PM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> On 08/24/2015 12:59 PM, Michael Sweet wrote:
>
>> Alex,
>>
>> The Windows print system is based on Microsoft's XPS format, which is
>> functionally the same as PDF but requiring different tools/filters.
>>
>> I know Ghostscript and mupdf have XPS support, but I don't know of anyone
>> that has either written the necessary CUPS filters nor the corresponding
>> Windows drivers (which need to comply with some unfortunately strict
>> Microsoft licensing...)
>>
>
> One should check how well Ghostscript performs as XPS
> interpreter/converter If it does well, the needed CUPS filter would be a
> simple wrapper around Ghostscript, which we would name xpstopdf and after
> that we get the usual pdftopdf and then pdfto<whatever the printer needs>.
>
>
GhostScript 9.16 is great at XPS to PDF conversion. Older versions had some
bugs, but more recent ones are good at it.

I don't see how we could integrate that with printer options, though. Let's
say I want a user to be able to select a stapling option. One cannot inject
PJL commands into an XPS job I suppose?


-- 
-Alex

--001a113dc0048a8436051e128b91
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Aug 24, 2015 at 1:28 PM, Till Kamppeter <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:till.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">On 08/24/2015 12:59 PM, Michael Sweet wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Alex,<br>
<br>
The Windows print system is based on Microsoft&#39;s XPS format, which is f=
unctionally the same as PDF but requiring different tools/filters.<br>
<br>
I know Ghostscript and mupdf have XPS support, but I don&#39;t know of anyo=
ne that has either written the necessary CUPS filters nor the corresponding=
 Windows drivers (which need to comply with some unfortunately strict Micro=
soft licensing...)<br>
</blockquote>
<br></span>
One should check how well Ghostscript performs as XPS interpreter/converter=
 If it does well, the needed CUPS filter would be a simple wrapper around G=
hostscript, which we would name xpstopdf and after that we get the usual pd=
ftopdf and then pdfto&lt;whatever the printer needs&gt;.<span class=3D"HOEn=
Zb"><font color=3D"#888888"><br>
<br></font></span></blockquote><div><br></div><div>GhostScript 9.16 is grea=
t at XPS to PDF conversion. Older versions had some bugs, but more recent o=
nes are good at it.=C2=A0</div><div><br></div><div>I don&#39;t see how we c=
ould integrate that with printer options, though. Let&#39;s say I want a us=
er to be able to select a stapling option. One cannot inject PJL commands i=
nto an XPS job I suppose?</div><div><br></div><div>=C2=A0</div></div>-- <br=
><div class=3D"gmail_signature"><div dir=3D"ltr">-Alex</div></div>
</div></div>

--001a113dc0048a8436051e128b91--
