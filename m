MIME-Version: 1.0
In-Reply-To: <4E4BF67B.8030607@gmail.com>
References: <CAN40gSvhq3mPVfDg3teNxQ9WcuBfKmBLyp5KbUXcm-CncN7T1A@mail.gmail.com>
	<4E4A9179.9040900@gmail.com>
	<CAGC3nLCoLcy5adH+ox8TNLCpzH+6FPKKoAwkFDMV=HGKE0a0OA@mail.gmail.com>
	<4E4AB226.7040507@gmail.com>
	<1313572289.2418.2.camel@localhost.localdomain>
	<4E4BF67B.8030607@gmail.com>
Date: Wed, 17 Aug 2011 11:43:35 -0600
Message-ID: <CAGC3nLCqkWNQqnVSz-ox+7H4ch5hqCRKAn2spH5U5DTtDrTbZQ@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=20cf303f6c62251f7804aab709c4
Subject: Re: [Printing-architecture] IN 10 MINUTES: OP US/Europe - Tuesday
 16 August 2011
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

--20cf303f6c62251f7804aab709c4
Content-Type: text/plain; charset=UTF-8

Without compression the full compiled ppd set is about ~220MB, with pyppd it
gets down to ~330KB.

Daniel

2011/8/17 Till Kamppeter <till.kamppeter@gmail.com>

> On 08/17/2011 11:11 AM, Tim Waugh wrote:
>
>> On Tue, 2011-08-16 at 20:08 +0200, Till Kamppeter wrote:
>>
>>> Thank you. Using pyppd-compressed PPD archives the listing of the PPD
>>> files take well less than a second on my computer and extracting the
>>> mentioned PPD file takes the same order of magnitude of time as SQLite.
>>>
>>> For most CUPS users the pyppd solution is the best due to the speed.
>>>
>>
>> I'm not sure I really understand the purpose of pyppd.  Is it just to
>> save disk space?  CUPS implements its own fast indexing of PPD files, so
>> performance seems to be covered there.
>>
>
> For ready-made (static) PPDs, like the ones from the printer manufacturers
> for PostScript printers, it is only saving disk space. Putting them all into
> one archive compresses them much more than individually gzipping them.
>
> Replacing PPD generators like /usr/lib/cups/driver/foomatic by
> pyppd-generated PPD archives is also a vast improvement in speed. It is much
> faster to grab a PPD out of a compressed archive then putting it together
> from the Foomatic XML data.
>
>   Till
>

--20cf303f6c62251f7804aab709c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Without compression the full compiled ppd set is about ~220MB, with pyppd i=
t gets down to ~330KB.<br><font color=3D"#888888"><br>Daniel</font><br><br>=
<div class=3D"gmail_quote">2011/8/17 Till Kamppeter <span dir=3D"ltr">&lt;<=
a href=3D"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;=
</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div><div></div><div class=3D"h5">On 08/17/=
2011 11:11 AM, Tim Waugh wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tue, 2011-08-16 at 20:08 +0200, Till Kamppeter wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thank you. Using pyppd-compressed PPD archives the listing of the PPD<br>
files take well less than a second on my computer and extracting the<br>
mentioned PPD file takes the same order of magnitude of time as SQLite.<br>
<br>
For most CUPS users the pyppd solution is the best due to the speed.<br>
</blockquote>
<br>
I&#39;m not sure I really understand the purpose of pyppd. =C2=A0Is it just=
 to<br>
save disk space? =C2=A0CUPS implements its own fast indexing of PPD files, =
so<br>
performance seems to be covered there.<br>
</blockquote>
<br></div></div>
For ready-made (static) PPDs, like the ones from the printer manufacturers =
for PostScript printers, it is only saving disk space. Putting them all int=
o one archive compresses them much more than individually gzipping them.<br=
>

<br>
Replacing PPD generators like /usr/lib/cups/driver/foomatic by pyppd-genera=
ted PPD archives is also a vast improvement in speed. It is much faster to =
grab a PPD out of a compressed archive then putting it together from the Fo=
omatic XML data.<br>
<font color=3D"#888888">
<br>
 =C2=A0 Till<br>
</font></blockquote></div><br>

--20cf303f6c62251f7804aab709c4--
