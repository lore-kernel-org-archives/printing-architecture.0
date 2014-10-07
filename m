Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <54345EF9.5010405@thax.hardliners.org>
Date: Tue, 07 Oct 2014 23:45:29 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
In-Reply-To: <CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
Content-Type: multipart/alternative;
	boundary="------------050202060902010400040302"
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
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

This is a multi-part message in MIME format.
--------------050202060902010400040302
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/14 23:18, Alex Korobkin wrote:
> 2014-10-07 16:03 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com 
> <mailto:till.kamppeter@gmail.com>>:
>
>     pdftopdf uses cupsManualCopies. If cupsManualCopies is set in the PPD
>     software copies are done, otherwise hardware copies. If the printer
>     supports PJL, an appropriate command to generate the copies is
>     added to
>     the PJL header.
>
>
> Till, I've just tested it again on my PDF printer and PJL-based PPD, 
> and pdftopdf creates software copies regardless of the value of 
> cupsManualCopies. Shouldn't it insert PJL SET COPIES=X when 
> cupsManualCopies is False or not present?
>

I'm not sure what exactly is happening in your setup.
Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
Maybe you don't have a recent cups-filters (>= 1.0.34)?
Maybe you're hitting some edge-cases that are not handled correctly in 
the current code?

AFAIK no-one else has reported a problem with PJL in a pure pdf 
workflow, and I can't find an obvious flaw in the code which deals with 
PJL in pdftopdf. The code is also basically copied over from the old 
pdftopdf implementation (cups-filters <=1.0.20); if your PPD does hw 
copy with the old implementation, but not with >=1.0.34, I will probably 
be able to fix that.

   Tobias


--------------050202060902010400040302
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 07/10/14 23:18, Alex Korobkin wrote:
    <blockquote
cite="mid:CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com"
      type="cite">
      <div dir="ltr">2014-10-07 16:03 GMT-04:00 Till Kamppeter <span
          dir="ltr">&lt;<a moz-do-not-send="true"
            href="mailto:till.kamppeter@gmail.com" target="_blank">till.kamppeter@gmail.com</a>&gt;</span>:<br>
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
                class=""></span>pdftopdf uses cupsManualCopies. If
              cupsManualCopies is set in the PPD<br>
              software copies are done, otherwise hardware copies. If
              the printer<br>
              supports PJL, an appropriate command to generate the
              copies is added to<br>
              the PJL header.<br>
            </blockquote>
            <div><br>
            </div>
            <div>Till, I've just tested it again on my PDF printer and
              PJL-based PPD, and pdftopdf creates software copies
              regardless of the value of cupsManualCopies. Shouldn't it
              insert PJL SET COPIES=X when cupsManualCopies is False or
              not present?</div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I'm not sure what exactly is happening in your setup. <br>
    Maybe your PPD is missing something (- and I'm not an expert for
    PPD/PJL)?<br>
    Maybe you don't have a recent cups-filters (&gt;= 1.0.34)?<br>
    Maybe you're hitting some edge-cases that are not handled correctly
    in the current code?<br>
    <br>
    AFAIK no-one else has reported a problem with PJL in a pure pdf workflow,
    and I can't find an obvious flaw in the code which deals with PJL in
    pdftopdf. The code is also basically copied over from the old
    pdftopdf implementation (cups-filters &lt;=1.0.20); if your PPD does
    hw copy with the old implementation, but not with &gt;=1.0.34, I
    will probably be able to fix that.<br>
    <br>
    &nbsp; Tobias<br>
    <br>
  </body>
</html>

--------------050202060902010400040302--
