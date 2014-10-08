Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=W/fcfsfcHv/b4yiHFEEBtj7LhTUWgYVQvi6ZXuRKshs=;
	b=k4946RRk6mra3SUkcSZ+t+Oe+C21I0b1++0EPHzIYoRUgSwY1EYI1UItzIkbYn70oj
	1azjoRTpRQeoX5NWDwGdmdmusygB1CLXKqmslLwIeAsbqbhpRlS4gaursZVzpZ4VWfQ3
	pCBNe3e0QFN2Vb5JZptNfBTxRcADctUjJyxy+wKq1mPSZRuWA+qbHswqLL6nO1L5X+u+
	ct9BBrCl6R3zfYxnN1jiliZWg6G1JuTZRxS6bSNKi7zvEdnac/nOSR1fMFEdo+YFZaXw
	HBK1O6SXVZCX+g+FWKIUeFiOeliSHI0NOvhcM6htoeCdUPtiRWOrsghQ6YgAzeTI5bIR
	zOkg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <54345EF9.5010405@thax.hardliners.org>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Tue, 7 Oct 2014 22:53:32 -0400
Message-ID: <CA+3RNfgk=HOS_GMkFt8CT4y=JdmWKOAUMSHbTHeZYfKgJzJtww@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf300e55791196ba0504e06d97
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--20cf300e55791196ba0504e06d97
Content-Type: text/plain; charset=UTF-8

2014-10-07 17:45 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

>  On 07/10/14 23:18, Alex Korobkin wrote:
>
> 2014-10-07 16:03 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:
>
>> pdftopdf uses cupsManualCopies. If cupsManualCopies is set in the PPD
>> software copies are done, otherwise hardware copies. If the printer
>> supports PJL, an appropriate command to generate the copies is added to
>> the PJL header.
>>
>
>  Till, I've just tested it again on my PDF printer and PJL-based PPD, and
> pdftopdf creates software copies regardless of the value of
> cupsManualCopies. Shouldn't it insert PJL SET COPIES=X when
> cupsManualCopies is False or not present?
>
>
> I'm not sure what exactly is happening in your setup.
> Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
> Maybe you don't have a recent cups-filters (>= 1.0.34)?
> Maybe you're hitting some edge-cases that are not handled correctly in the
> current code?
>
> AFAIK no-one else has reported a problem with PJL in a pure pdf workflow,
> and I can't find an obvious flaw in the code which deals with PJL in
> pdftopdf. The code is also basically copied over from the old pdftopdf
> implementation (cups-filters <=1.0.20); if your PPD does hw copy with the
> old implementation, but not with >=1.0.34, I will probably be able to fix
> that.
>
>
I'm using cups-filters 1.0.58 with CUPS 1.7.5, and currently just testing
this PDF workflow. My normal setup is PDF to PostScript workflow.

From what Till said I understood that if cupsManualCopies is True in the
PPD, pdftopdf will create software copies. If it is set to False or is
omitted, hardware copies will be made (how exactly?).

So I took a sample PPD [1] from cups-filters package and tested job
printing with and without cupsManualCopies. No difference, it always makes
software copies. What needs to be done to make it add code for hardware
copies to be made?

[1]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd


  Tobias
>
>


-- 
-Alex

--20cf300e55791196ba0504e06d97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2014-10-07 17:45 GMT-04:00 Tobias Hoffmann <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:lprint-list@thax.hardliners.org" target=3D"_blank">lprint-list@=
thax.hardliners.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><span class=3D"">
    On 07/10/14 23:18, Alex Korobkin wrote:
    </span><blockquote type=3D"cite">
      <div dir=3D"ltr"><span class=3D"">2014-10-07 16:03 GMT-04:00 Till Kam=
ppeter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" ta=
rget=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span>:<br>
        </span><div class=3D"gmail_extra">
          <div class=3D"gmail_quote">
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex"><span></span>pdftopdf uses cupsManualCopies. I=
f
              cupsManualCopies is set in the PPD<span class=3D""><br>
              software copies are done, otherwise hardware copies. If
              the printer<br>
              supports PJL, an appropriate command to generate the
              copies is added to<br>
              the PJL header.<br>
            </span></blockquote><span class=3D"">
            <div><br>
            </div>
            <div>Till, I&#39;ve just tested it again on my PDF printer and
              PJL-based PPD, and pdftopdf creates software copies
              regardless of the value of cupsManualCopies. Shouldn&#39;t it
              insert PJL SET COPIES=3DX when cupsManualCopies is False or
              not present?</div>
            <br>
          </span></div>
        </div>
      </div>
    </blockquote>
    <br>
    I&#39;m not sure what exactly is happening in your setup. <br>
    Maybe your PPD is missing something (- and I&#39;m not an expert for
    PPD/PJL)?<br>
    Maybe you don&#39;t have a recent cups-filters (&gt;=3D 1.0.34)?<br>
    Maybe you&#39;re hitting some edge-cases that are not handled correctly
    in the current code?<br>
    <br>
    AFAIK no-one else has reported a problem with PJL in a pure pdf workflo=
w,
    and I can&#39;t find an obvious flaw in the code which deals with PJL i=
n
    pdftopdf. The code is also basically copied over from the old
    pdftopdf implementation (cups-filters &lt;=3D1.0.20); if your PPD does
    hw copy with the old implementation, but not with &gt;=3D1.0.34, I
    will probably be able to fix that.<span class=3D""><font color=3D"#8888=
88"><br>
    <br></font></span></div></blockquote><div><br></div><div>I&#39;m using =
cups-filters 1.0.58 with CUPS 1.7.5, and currently just testing this PDF wo=
rkflow. My normal setup is PDF to PostScript workflow.=C2=A0<br></div><div>=
<br></div><div>From what Till said I understood that if cupsManualCopies is=
 True in the PPD, pdftopdf will create software copies. If it is set to Fal=
se or is omitted, hardware copies will be made (how exactly?).=C2=A0<br></d=
iv><div><br></div><div>So I took a sample PPD [1] from cups-filters package=
 and tested job printing with and without cupsManualCopies. No difference, =
it always makes software copies. What needs to be done to make it add code =
for hardware copies to be made?</div><div><p dir=3D"ltr">[1]=C2=A0<a href=
=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/ann=
otate/head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd" target=3D"_blank">ht=
tp://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/=
head:/ppd/Fuji_Xerox-DocuPrint_CM305_df-PDF.ppd</a></p></div><div><br></div=
><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#000000">=
<span class=3D""><font color=3D"#888888">
    =C2=A0 Tobias<br>
    <br>
  </font></span></div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">-Alex</div>
</div></div>

--20cf300e55791196ba0504e06d97--
