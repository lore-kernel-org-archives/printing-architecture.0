Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Yx4fKUJl5QW1S6kVr21CCfXgmMQQTYcX2lMHVFgiq7w=;
	b=XDANHbCACDtYdX4CvUHoetoDte+NmanHfC9hL5f8nB09MhFMnfWxsaJWwK9nsmvVPl
	MimZGD7jibiAThkSvwTg3JyrTmXnnTdAYNbH1X+FblggvhRR83ljLzOHSEyjSz5rIH6/
	exFeVfruQQrbKXsCTQ91yZDWp04bzEle6Me5v19j0LP9Wx6R9kyOho3E93Mn5Z3N6Rcn
	g3OSnUpoNsZr6hAxC+eXZGtuILZb0qOVLDeNjz3Jk3jmqcycnBPJp0vbPIazZdfSADHU
	WiMh4MHIJDTGBd3De3jC+ewWvykYsZRrJVb0TuSMEeTruZDq+N7ziqaP4oekeEgIA4BM
	6+OA==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Tue, 7 Oct 2014 10:06:16 -0400
Message-ID: <CA+3RNfi12RuMZRLH0UrHO2R2XeF8+oFrXwbj4DH4GhOvgmTVaQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303b44072ad5a80504d5b5e0
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--20cf303b44072ad5a80504d5b5e0
Content-Type: text/plain; charset=UTF-8

Till,

I'm not sure if you noticed my question there, sorry for bugging you, but I
have no one else to ask.

Do you know what should be added to a JCL-based PPD in order make pdftopdf
to generate hardware copies on a PDF printer?


2014-10-06 10:06 GMT-04:00 Alex Korobkin <korobkin+op@gmail.com>:

> Hi Till,
>
> You're right, JCLToPDFInterpreter is already set in the example PPDs
> shipped with cups-filters [1].
> But what needs to be added to those PPDs to have printers make copies in
> hardware instead of cupsManualCopies?
> There seem to be some code for it in pdftopdf [2], but it is unclear what
> exactly needs to be in the PPD for it to work.
>
> [1]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
> [2]
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35
>
>
> 2014-10-06 8:54 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:
>
> On 10/04/2014 09:48 PM, Michael Sweet wrote:
>> > Alex,
>> >
>> > You'll have to confirm with Till, but AFAIK the pdftopdf filter doesn't
>> support PJL options.
>> >
>>
>> pdftopdf adds PJL if the printer is a PDF printer. The printer is
>> considered a PDF printer if there is a "*JCLToPDFInterpreter:" line in
>> the PPD file.
>>
>>    Till
>>
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
>
>
>
> --
> -Alex
>



-- 
-Alex

--20cf303b44072ad5a80504d5b5e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Till,=C2=A0<div><br></div><div>I&#39;m not sure if you not=
iced my question there, sorry for bugging you, but I have no one else to as=
k.=C2=A0</div><div><br></div><div>Do you know what should be added to a JCL=
-based PPD in order make pdftopdf to generate hardware copies on a PDF prin=
ter?=C2=A0</div><div><br></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2014-10-06 10:06 GMT-04:00 Alex Korobkin <span dir=3D"l=
tr">&lt;<a href=3D"mailto:korobkin+op@gmail.com" target=3D"_blank">korobkin=
+op@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">Hi Till,=C2=A0<div><br></div><div>You&#39;re right,=C2=A0JCLToPDFInte=
rpreter is already set in the example PPDs shipped with cups-filters [1].=
=C2=A0</div><div>But what needs to be added to those PPDs to have printers =
make copies in hardware instead of cupsManualCopies?=C2=A0</div><div>There =
seem to be some code for it in pdftopdf [2], but it is unclear what exactly=
 needs to be in the PPD for it to work.=C2=A0</div><div><br></div><div>[1]=
=C2=A0<a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/cup=
s-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd" target=
=3D"_blank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-fil=
ters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd</a></div><div>=
<div dir=3D"ltr" style=3D"font-family:arial,sans-serif;font-size:13px">[2]=
=C2=A0<a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/cup=
s-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35" target=3D"_bl=
ank">http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/an=
notate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35</a></div></div><div><br></=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10=
-06 8:54 GMT-04:00 Till Kamppeter <span dir=3D"ltr">&lt;<a href=3D"mailto:t=
ill.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gmail.com</a>&gt;=
</span>:<div><div class=3D"h5"><br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>On=
 10/04/2014 09:48 PM, Michael Sweet wrote:<br>
&gt; Alex,<br>
&gt;<br>
&gt; You&#39;ll have to confirm with Till, but AFAIK the pdftopdf filter do=
esn&#39;t support PJL options.<br>
&gt;<br>
<br>
</span>pdftopdf adds PJL if the printer is a PDF printer. The printer is<br=
>
considered a PDF printer if there is a &quot;*JCLToPDFInterpreter:&quot; li=
ne in<br>
the PPD file.<br>
<span><font color=3D"#888888"><br>
=C2=A0 =C2=A0Till<br>
</font></span><div><div><br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</div></div></blockquote></div></div></div><span class=3D"HOEnZb"><font col=
or=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>-Alex</div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">-Alex</div>
</div>

--20cf303b44072ad5a80504d5b5e0--
