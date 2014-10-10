Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=75zZ9RT7M9DKOZQ+YPWkNiO1faen5U9MRDAOMVqETEM=;
	b=rjq4gN7YHZ213J7E1R/sn9lg4MMZtA6CQQJnM7KmqmXAZ3NwDkUe5gzWWy+Wczl6Vw
	fPbr3bVrIVdIcQHhViaaU3jQ/+WsADO1JEdB8YqAsCvvYjlbjnqPxQWxtNBbZbA+lzte
	Klp8hMGJOTuoGZBCikwIDBGoDF34pLz1rQOWVP3YDyGx0QqKJoQzymd1NG+3ev9Zso+1
	VxnekuaKrOHKzuft4QBOMcVblhmoRj2s0PPF9CRR5hfLXL4yt4Uh/3WzdmMTBUPpmhdf
	78lL9iK62IN/Q0eun16QGf/dQ3KVHYh1v7Kdu6oERTsrjIbB7I3i2ruAsP0/fxF++3e5
	RSBg==
Message-ID: <5438486E.9050201@gmail.com>
Date: Fri, 10 Oct 2014 22:58:22 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
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
	<54383C34.6020108@thax.hardliners.org>
In-Reply-To: <54383C34.6020108@thax.hardliners.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>, Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 10/10/2014 10:06 PM, Tobias Hoffmann wrote:
> On 10/10/14 20:38, Alex Korobkin wrote:
>>
>>     *pdftopdfJCLCopies 1: "@PJL SET COPIES=1"
>>     *pdftopdfJCLCopies 2: "@PJL SET COPIES=2"
>>     *pdftopdfJCLCopies 3: "@PJL SET COPIES=3"
>>
>>
>> Does it mean that I need to have 300 lines of this if a customer wants
>> to be able to print up to 300 copies? Is there a better way to specify
>> a keyword for arbitrary number of copies?
> 
> I don't know. How do PPDs for real PostScript printers (i.e. not
> Foomatic) with hardware copying look like?
> 

Problem of Adobe's PPD format is that it only supports enumerated choice
options and boolean options, no numerical options. Foomatic and CUPS
have PPD extensions for numerical options, but for backward
compatibility with non-CUPS/Foomatic clients there is always a number of
explicitly enumerated choices in a numerical option in the PPD, in case
of "Copies" a list for each possible number of copies, usually from 1 to
99. One must check whether modern GNOME/GTK/KDE/Qt/LibreOffice dialogs
support the PPD extensions for numerical options,if so and if it is
guaranteed that the print queue is not accessed from other platforms,
one could leave out the explicitly listed choices, or simply raise the
maximum without adding the appropriate choices. One could also think
that if someone wants to print more than 100 copies that it is good
enough to only be able to choose multiples of 10 (like 240 copies, not
243 copies) if the print dialog cannot cope with the PPD extensions and
needs the fallback choices.

>> Also, it doesn't really work as expected. If I add these lines to the
>> PPD, "@PJL SET COPIES=3" is added after @PJL ENTER LANGUAGE = PDF
>> statement and becomes a part of PDF (and ignored). Why is it added there?
> 
> Ok, I see. This truly doesn't seem to make much sense, even with my
> limited understanding of PJL...
> I'm not sure why Koji Otani wrote it like that, or whether this order
> was purposely chosen.
> Are there PPDs which depend on this (strange) ordering?
>

No, this ordering is wrong, the @PJL ENTER LANGUAGE = PDF should always
come last. If this is not the case, the filter has a bug, probably
already introduced by Koji Otani (CCing him).

>> if it were a UI element, I'd add OrderDependency keyword, but it is
>> not and the keyword doesn't work. 
>>
>>>     If pdftopdf is capable of inserting a comment about the number of
>>>     copies requested, it should be able to insert this command as
>>>     well, what do you think?
>>
>>     It obviously is able. And *Copies seems to be usual way to handle
>>     Hardware-Copies for PS based printers. pdftopdf (and imagetopdf !)
>>     allows you to use this mechanism even for PDF based printers, too.
>>     I'm not sure about the "Number of Copies" dialog you were talking
>>     about ... I have not tried it myself ... but if you are correct,
>>     it will either also appear for PS based PPDs which allow hardware
>>     copies, or they are somehow able to reuse the existing GUI field
>>     for that (you might have to ask someone more familiar with PPDs
>>     about that) ... or your printing dialog fails to handle the
>>     *Copies attribute in a sensible way?
>>
>>     Either way, pdftopdf has little to do with your issue.
>>
>>
>> I would disagree here. in a PDF to PS workflow hardware copies code is
>> added by the last filter, pstops.
> 
> Yes, that's what I would expect.
> I took a look into what pstops.c does beside of generic PPD handling,
> and I found this:
> 
>>    /*
>>     * Tell the document processor the copy and duplex options
>>     * that are required...
>>     */
>>
>>     doc_printf(doc, "%%%%Requirements: numcopies(%d)%s%s\n", doc->copies,
>>                doc->collate ? " collate" : "",
>>                Duplex ? " duplex" : "");
>>
>>    /*
>>     * Apple uses RBI comments for various non-PPD options...
>>     */
>>
>>     doc_printf(doc, "%%RBINumCopies: %d\n", doc->copies);
>>   }
> and
>>     doc_printf(doc, "%%RBIBeginNonPPDFeature: *NumCopies %d\n",
>> doc->copies);
>>     doc_printf(doc,
>>                "%d/languagelevel where{pop languagelevel 2
>> ge}{false}ifelse\n"
>>                "{1 dict begin/NumCopies exch def currentdict end "
>>                "setpagedevice}\n"
>>                "{userdict/#copies 3 -1 roll put}ifelse\n", doc->copies);
>>     doc_puts(doc, "%RBIEndNonPPDFeature\n");
> 
> But foomatic based filters use *Copies in their PPD instead.... with the
> rather dumb "let's repeat the line for 1...100 copies".

See my remarks about this above.

> I've seen a
> similar approach in one other PPD (for a real postscript printer, IIRC)
> on the web; the only difference was, that it used *JCLOpenUI instead of
> *OpenUI, etc.
>

AFAIK *JCLOpenUI only tells that the code to insert is PJL and not
PostScript, otherwise it behaves as a normal *OpenUI optionm: Widget for
it in the print dialog, default value, user's choice, ...

> You wrote in one of your earlier mails:
>> Making a "Number of Copies" dialog doesn't seem to be a great idea,
>> because users will never notice that. They will keep setting the
>> number of copies in the usual place in GUI.
> 
> Are you basically saying that Foomatic-PPDs "breaks" the GUI in the same
> way as using *Copies for pdftopdf?
> Does using *Copies with pdftopdf actually work -- or isn't it actually
> suffering from the same ordering problem you described for
> *pdftopdfJCLCopies?
> 

We should tell print dialog designers that if the PPD has an option
named "Copies" to not show it but to send the selection of the normal
copiews facility of the dialog as the choice for this option.

>> Now that pdftopdf is the only filter in the chain, it needs to insert
>> hardware copies code into the chain, otherwise this whole idea of the
>> pure PDF workflow is futile: everyone would be forced to use
>> cupsManualCopies and won't be able to use stapling or punching
>> correctly, for example.
> 
> I do agree that pdftopdf has to add the hardware copies code.
> And, as you have see, Koji Otani has implement PPD-based JCL-insertion
> in pdftopdf and imagetopdf.
> But now you are suggesting that this implementation is basically
> broken-by-design (?).
> What is your proposed change wrt. to the already existing
> implementation/design?
> 
>   Tobias
> 


   Till

