Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <54383C34.6020108@thax.hardliners.org>
Date: Fri, 10 Oct 2014 22:06:12 +0200
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
In-Reply-To: <CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
Content-Type: multipart/alternative;
	boundary="------------010409010305000806070904"
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
--------------010409010305000806070904
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/14 20:38, Alex Korobkin wrote:
>
>     *pdftopdfJCLCopies 1: "@PJL SET COPIES=1"
>     *pdftopdfJCLCopies 2: "@PJL SET COPIES=2"
>     *pdftopdfJCLCopies 3: "@PJL SET COPIES=3"
>
>
> Does it mean that I need to have 300 lines of this if a customer wants 
> to be able to print up to 300 copies? Is there a better way to specify 
> a keyword for arbitrary number of copies?

I don't know. How do PPDs for real PostScript printers (i.e. not 
Foomatic) with hardware copying look like?

> Also, it doesn't really work as expected. If I add these lines to the 
> PPD, "@PJL SET COPIES=3" is added after @PJL ENTER LANGUAGE = PDF 
> statement and becomes a part of PDF (and ignored). Why is it added there?

Ok, I see. This truly doesn't seem to make much sense, even with my 
limited understanding of PJL...
I'm not sure why Koji Otani wrote it like that, or whether this order 
was purposely chosen.
Are there PPDs which depend on this (strange) ordering?

> if it were a UI element, I'd add OrderDependency keyword, but it is 
> not and the keyword doesn't work.
>
>>     If pdftopdf is capable of inserting a comment about the number of
>>     copies requested, it should be able to insert this command as
>>     well, what do you think?
>
>     It obviously is able. And *Copies seems to be usual way to handle
>     Hardware-Copies for PS based printers. pdftopdf (and imagetopdf !)
>     allows you to use this mechanism even for PDF based printers, too.
>     I'm not sure about the "Number of Copies" dialog you were talking
>     about ... I have not tried it myself ... but if you are correct,
>     it will either also appear for PS based PPDs which allow hardware
>     copies, or they are somehow able to reuse the existing GUI field
>     for that (you might have to ask someone more familiar with PPDs
>     about that) ... or your printing dialog fails to handle the
>     *Copies attribute in a sensible way?
>
>     Either way, pdftopdf has little to do with your issue.
>
>
> I would disagree here. in a PDF to PS workflow hardware copies code is 
> added by the last filter, pstops.

Yes, that's what I would expect.
I took a look into what pstops.c does beside of generic PPD handling, 
and I found this:

>    /*
>     * Tell the document processor the copy and duplex options
>     * that are required...
>     */
>
>     doc_printf(doc, "%%%%Requirements: numcopies(%d)%s%s\n", doc->copies,
>                doc->collate ? " collate" : "",
>                Duplex ? " duplex" : "");
>
>    /*
>     * Apple uses RBI comments for various non-PPD options...
>     */
>
>     doc_printf(doc, "%%RBINumCopies: %d\n", doc->copies);
>   }
and
>     doc_printf(doc, "%%RBIBeginNonPPDFeature: *NumCopies %d\n", 
> doc->copies);
>     doc_printf(doc,
>                "%d/languagelevel where{pop languagelevel 2 
> ge}{false}ifelse\n"
>                "{1 dict begin/NumCopies exch def currentdict end "
>                "setpagedevice}\n"
>                "{userdict/#copies 3 -1 roll put}ifelse\n", doc->copies);
>     doc_puts(doc, "%RBIEndNonPPDFeature\n");

But foomatic based filters use *Copies in their PPD instead.... with the 
rather dumb "let's repeat the line for 1...100 copies". I've seen a 
similar approach in one other PPD (for a real postscript printer, IIRC) 
on the web; the only difference was, that it used *JCLOpenUI instead of 
*OpenUI, etc.

You wrote in one of your earlier mails:
> Making a "Number of Copies" dialog doesn't seem to be a great idea, 
> because users will never notice that. They will keep setting the 
> number of copies in the usual place in GUI.

Are you basically saying that Foomatic-PPDs "breaks" the GUI in the same 
way as using *Copies for pdftopdf?
Does using *Copies with pdftopdf actually work -- or isn't it actually 
suffering from the same ordering problem you described for 
*pdftopdfJCLCopies?

> Now that pdftopdf is the only filter in the chain, it needs to insert 
> hardware copies code into the chain, otherwise this whole idea of the 
> pure PDF workflow is futile: everyone would be forced to use 
> cupsManualCopies and won't be able to use stapling or punching 
> correctly, for example.

I do agree that pdftopdf has to add the hardware copies code.
And, as you have see, Koji Otani has implement PPD-based JCL-insertion 
in pdftopdf and imagetopdf.
But now you are suggesting that this implementation is basically 
broken-by-design (?).
What is your proposed change wrt. to the already existing 
implementation/design?

   Tobias


--------------010409010305000806070904
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 10/10/14 20:38, Alex Korobkin wrote:
    <blockquote
cite="mid:CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000"> *pdftopdfJCLCopies
                1: "@PJL SET COPIES=1"<br>
                *pdftopdfJCLCopies 2: "@PJL SET COPIES=2"<br>
                *pdftopdfJCLCopies 3: "@PJL SET COPIES=3"<span class=""><br>
                  <br>
                </span></div>
            </blockquote>
            <div><br>
            </div>
            <div>Does it mean that I need to have 300 lines of this if a
              customer wants to be able to print up to 300 copies? Is
              there a better way to specify a keyword for arbitrary
              number of copies?</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I don't know. How do PPDs for real PostScript printers (i.e. not
    Foomatic) with hardware copying look like?<br>
    <br>
    <blockquote
cite="mid:CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div>Also, it doesn't really work as expected. If I add
              these lines to the PPD, "@PJL SET COPIES=3" is added after
              @PJL ENTER LANGUAGE = PDF statement and becomes a part of
              PDF (and ignored). Why is it added there?</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Ok, I see. This truly doesn't seem to make much sense, even with my
    limited understanding of PJL...<br>
    I'm not sure why Koji Otani wrote it like that, or whether this
    order was purposely chosen. <br>
    Are there PPDs which depend on this (strange) ordering?<br>
    <br>
    <blockquote
cite="mid:CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div>if it were a UI element, I'd add OrderDependency
              keyword, but it is not and the keyword doesn't work. </div>
            <div><br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000"><span class="">
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div>If pdftopdf is capable of inserting a comment
                        about the number of copies requested, it should
                        be able to insert this command as well, what do
                        you think?</div>
                    </div>
                  </blockquote>
                  <br>
                </span> It obviously is able. And *Copies seems to be
                usual way to handle Hardware-Copies for PS based
                printers. pdftopdf (and imagetopdf !) allows you to use
                this mechanism even for PDF based printers, too.<br>
                I'm not sure about the "Number of Copies" dialog you
                were talking about ... I have not tried it myself ...
                but if you are correct, it will either also appear for
                PS based PPDs which allow hardware copies, or they are
                somehow able to reuse the existing GUI field for that
                (you might have to ask someone more familiar with PPDs
                about that) ... or your printing dialog fails to handle
                the *Copies attribute in a sensible way?<br>
                <br>
                Either way, pdftopdf has little to do with your issue.</div>
            </blockquote>
            <div><br>
            </div>
            <div>I would disagree here. in a PDF to PS workflow hardware
              copies code is added by the last filter, pstops.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Yes, that's what I would expect.<br>
    I took a look into what pstops.c does beside of generic PPD
    handling, and I found this:<br>
    <br>
    <blockquote type="cite">   /*<br>
          * Tell the document processor the copy and duplex options<br>
          * that are required...<br>
          */<br>
      <br>
          doc_printf(doc, "%%%%Requirements: numcopies(%d)%s%s\n",
      doc-&gt;copies,<br>
                     doc-&gt;collate ? " collate" : "",<br>
                     Duplex ? " duplex" : "");<br>
      <br>
         /*<br>
          * Apple uses RBI comments for various non-PPD options...<br>
          */<br>
      <br>
          doc_printf(doc, "%%RBINumCopies: %d\n", doc-&gt;copies);<br>
        }<br>
    </blockquote>
    and<br>
    <blockquote type="cite">    doc_printf(doc,
      "%%RBIBeginNonPPDFeature: *NumCopies %d\n", doc-&gt;copies);<br>
          doc_printf(doc,<br>
                     "%d/languagelevel where{pop languagelevel 2
      ge}{false}ifelse\n"<br>
                     "{1 dict begin/NumCopies exch def currentdict end "<br>
                     "setpagedevice}\n"<br>
                     "{userdict/#copies 3 -1 roll put}ifelse\n",
      doc-&gt;copies);<br>
          doc_puts(doc, "%RBIEndNonPPDFeature\n");<br>
    </blockquote>
    <br>
    But foomatic based filters use *Copies in their PPD instead.... with
    the rather dumb "let's repeat the line for 1...100 copies". I've
    seen a similar approach in one other PPD (for a real postscript
    printer, IIRC) on the web; the only difference was, that it used
    *JCLOpenUI instead of *OpenUI, etc.<br>
    <br>
    You wrote in one of your earlier mails:<br>
    <blockquote type="cite">Making a "Number of Copies" dialog doesn't
      seem to be a great idea, because users will never notice that.
      They will keep setting the number of copies in the usual place in
      GUI. <br>
    </blockquote>
    <br>
    Are you basically saying that Foomatic-PPDs "breaks" the GUI in the
    same way as using *Copies for pdftopdf?<br>
    Does using *Copies with pdftopdf actually work -- or isn't it
    actually suffering from the same ordering problem you described for
    *pdftopdfJCLCopies? <br>
    <br>
    <blockquote
cite="mid:CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div> Now that pdftopdf is the only filter in the chain, it
              needs to insert hardware copies code into the chain,
              otherwise this whole idea of the pure PDF workflow is
              futile: everyone would be forced to use cupsManualCopies
              and won't be able to use stapling or punching correctly,
              for example. <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I do agree that pdftopdf has to add the hardware copies code.<br>
    And, as you have see, Koji Otani has implement PPD-based
    JCL-insertion in pdftopdf and imagetopdf.<br>
    But now you are suggesting that this implementation is basically
    broken-by-design (?).<br>
    What is your proposed change wrt. to the already existing
    implementation/design?<br>
    <br>
      Tobias<br>
    <br>
  </body>
</html>

--------------010409010305000806070904--
