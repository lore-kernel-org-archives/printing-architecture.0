Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <543D9108.6050307@thax.hardliners.org>
Date: Tue, 14 Oct 2014 23:09:28 +0200
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
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
In-Reply-To: <CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
Content-Type: multipart/alternative;
	boundary="------------060203010600010801030603"
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
--------------060203010600010801030603
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/10/14 21:17, Alex Korobkin wrote:
> Till,
>
> 2014-10-10 16:58 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com 
> <mailto:till.kamppeter@gmail.com>>:
>
>     One must check whether modern GNOME/GTK/KDE/Qt/LibreOffice dialogs
>     support the PPD extensions for numerical options,if so and if it is
>     guaranteed that the print queue is not accessed from other platforms,
>
>
> This PPD will be used by Cloud Print, command line, and other 
> non-Gnome/non-KDE apps, so having a custom Copies dialog is not the 
> best idea.
>
> Shouldn't pdftopdf just insert PJL SET COPIES=X without any related 
> code in PPD? PJL SET COPIES seems to be a standard PJL command.

First, the current "solution" does not require knowledge knowledge of 
the particular JCL used. Everything comes from the PPD.
Now, pstops does contain PJL-specific workarouds for certain printers, 
but looks at ppd->jcl_begin to determine if the JCL is the known PJL.

But, as far as I understand the current jcl-insertion code in pdftopdf, 
it will actually *replace* the "Copies" widget under "Advanced" with the 
copies-value from the usual UI location. But the replacement only 
happens after "ENTER LANGUAGE"... so when you use OrderDependency to 
move it before, the
replacement has not happened...

This means:
1) Current design of JCL in pdftopdf is flawed. It's not clear (to me) 
how it should be changed.
2) If the PPD specifies the JCL to be used, I'm not sure how the PPD 
should specify "@PJL SET COPIES=X" for unlimited X. Till did mention 
some PPD-extensions that could allow this, but I don't understand yet, 
where the chosen value should be inserted into the JCL-command template 
(You certainly would not want "...=%d" in the PPD and then use printf on 
that...).
3) Or we hard-code a PJL exception into pdftopdf.

And I do prefer a solution that works the same for both Foomatic and 
native PDF printers / PPDs.

   Tobias

--------------060203010600010801030603
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 14/10/14 21:17, Alex Korobkin wrote:
    <blockquote
cite="mid:CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">Till,</div>
          <div class="gmail_quote"><br>
          </div>
          <div class="gmail_quote">2014-10-10 16:58 GMT-04:00 Till
            Kamppeter <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:till.kamppeter@gmail.com" target="_blank">till.kamppeter@gmail.com</a>&gt;</span>:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">One
              must check whether modern GNOME/GTK/KDE/Qt/LibreOffice
              dialogs<br>
              support the PPD extensions for numerical options,if so and
              if it is<br>
              guaranteed that the print queue is not accessed from other
              platforms,<br>
            </blockquote>
            <div><br>
            </div>
            <div>This PPD will be used by Cloud Print, command line, and
              other non-Gnome/non-KDE apps, so having a custom Copies
              dialog is not the best idea. </div>
            <div><br>
            </div>
            <div>Shouldn't pdftopdf just insert PJL SET COPIES=X without
              any related code in PPD? PJL SET COPIES seems to be a
              standard PJL command. <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    First, the current "solution" does not require knowledge knowledge
    of the particular JCL used. Everything comes from the PPD.<br>
    Now, pstops does contain PJL-specific workarouds for certain
    printers, but looks at ppd-&gt;jcl_begin to determine if the JCL is
    the known PJL.<br>
    <br>
    But, as far as I understand the current jcl-insertion code in
    pdftopdf, it will actually *replace* the "Copies" widget under
    "Advanced" with the copies-value from the usual UI location. But the
    replacement only happens after "ENTER LANGUAGE"... so when you use
    OrderDependency to move it before, the <br>
    replacement has not happened...<br>
    <br>
    This means:<br>
    1) Current design of JCL in pdftopdf is flawed. It's not clear (to
    me) how it should be changed.<br>
    2) If the PPD specifies the JCL to be used, I'm not sure how the PPD
    should specify "@PJL SET COPIES=X" for unlimited X. Till did mention
    some PPD-extensions that could allow this, but I don't understand
    yet, where the chosen value should be inserted into the JCL-command
    template (You certainly would not want "...=%d" in the PPD and then
    use printf on that...).<br>
    3) Or we hard-code a PJL exception into pdftopdf.<br>
    <br>
    And I do prefer a solution that works the same for both Foomatic and
    native PDF printers / PPDs.<br>
    <br>
      Tobias<br>
  </body>
</html>

--------------060203010600010801030603--
