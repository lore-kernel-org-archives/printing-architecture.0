DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	b=oPGRs9D/07/3WGBXF8X4xDE+CIqZmsDD+IDoYk8D5qD4Fw2QaeWDOCfMoFKEi6KWWJcFrXrHAR7+Hpl8VB4BNV351YCTl/MBqPPUZzDjOCKB8Oi6AfJk8U8ogkdUZfNUjJAjP5cwzP+N7d7OYmt3CwweQlvcFcxHCjszQUOldeM=
Message-ID: <e395be80707170845h3b761859maf2c19ad28e54dbb@mail.gmail.com>
Date: Tue, 17 Jul 2007 10:45:54 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
Subject: Re: [Printing-architecture] Self-certification of Printers and Print
	Drivers for POSIX/Linux
In-Reply-To: <20070717122637.255D.SHIDA.KEISHO@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070713093935.C4D6.SHIDA.KEISHO@canon.co.jp>
	<e395be80707130829n1c64f702i9c817b7a54b0064e@mail.gmail.com>
	<20070717122637.255D.SHIDA.KEISHO@canon.co.jp>
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "SHIDA, Keisho" <shida.keisho@canon.co.jp>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.freestandards.org

Hi Shida-san,

"They" are Linux Foundation people who are interested in creating
various "certification" programs.  For example, a hypothetical "LSB
Print Certificate".

Chris Story (Ricoh) first pushed back hard on this idea.  Thus, we
(Open Printing) are talking about "validation" of print drivers and
printers for Linux/POSIX platforms.

As I said at our OP SC, target users for OP Validation tools are:

- Manufacturers - validate their PPDs and drivers and scripts
- Distributions - regression test/validate their build CDs
- ISVs - validate their applications (e.g., Scribus) for printing
- End Users - validate/debug installed print drivers/environment

Not all target users will use the same tool or script and for
End Users I agree that we will need to identify test apps and
test documents.

Cheers,
- Ira


On 7/16/07, SHIDA, Keisho <shida.keisho@canon.co.jp> wrote:
> Ira:
>
> I did not check the email before the meeting took place in
> this morning/ Here is answer to you're your point
>
> NO, I am not saying that not discussing as OP topics.
> My point is as follow:
>
> 1.We have to identify and check the environment and
> configuration that have to be done before or clearly identified
> prior to the discussion of printing related topics.
>
> 2.We have to ask PC manufacturers, Linux OS distributors
> and application developers to join the discussion.
>
> 3.I am still in the foggy bottom to understand the effort of
> "validation". Is this for a user? distributor? app vendor? or
> printer manufacturer? If it is for the user, I believe that we
>  have to study this topic as user point of view or use-case.
>
> 4.Why they are talking about printer "validation" in front?
> And who are they? And what their purpose?
>
> Well, I believe that we, as SC members, agreed to discuss and
> study this topic in further but we need more manufacturers in
> present or ask them to join some special telecon meeting.
>
>
> Regards,
>
>
> Shida
> ===
>
> On Fri, 13 Jul 2007 10:29:16 -0500
> "Ira McDonald" <blueroofmusic@gmail.com> wrote:
>
> > Hi Shida-san,
> >
> > Are you saying that we (Open Printing) should NOT discuss the
> > topic of self-certification of printers and printer drivers on Linux
> > until AFTER all of those other certification topics you list below
> > are finished?
> >
> > Glen Petrie (Epson) and Chris Story (Ricoh) both feel strongly
> > that we should address printer/driver self-certification and soon,
> > so that we are not trapped into a plan that arises from Linux
> > Foundation or elsewhere for external formal certification.
> >
> > Comments?
> >
> > Cheers,
> > - Ira
> >
> > On 7/12/07, SHIDA, Keisho <shida.keisho@canon.co.jp> wrote:
> > > Ira:
> > >
> > > I believe that we need the time out for the discussion of certifying
> > > the printer and printer drivers. The certification is
> > >
> > > We have to realize that the environment of Linux based desktop for
> > > office or home use system need the certification for its host PC,
> > > Linux OS, applications and I/O peripherals in prior to discussion
> > > of the certifying the printer and its driver.
> > >
> > > As you know already, the environment and conditions that surround
> > > the printer is NOT ready to certify before we discuss the certifying
> > > the printer.
> > >
> > > If these items such described in the above are fruitful enough in the
> > > street, we may be ready to discuss the printer related certification.
> > > The printer related items are not stand at the front row of stage,
> > > we stand at the third or may be fourth row. Please let me know if any
> > > of these items/products are certified already and available now to
> > > certifying the printer and its driver.
> > >
> > > For your information, once they are certified or issue the certification
> > > (logo), all incurred necessary support and the responsibility have to
> > > taken by an individual manufacturer not community or us.
> > >
> > > The certification is one of the priority of LF business or activity plan?
> > > If so, let's identify the background and discuss them.
> > >
> > > regards
> > >
> > >
> > > Shida/
> > > ===
> > >
> > >
> > > On Wed, 11 Jul 2007 17:41:31 -0500
> > > "Ira McDonald" <blueroofmusic@gmail.com> wrote:
> > >
> > > > Hi,
> > > >
> > > > The purpose of this note is to kick off discussion on this topic and to
> > > > collect issues and details from all interested parties.
> > > >
> > > > Background - there was a "lively" discussion during the Open Printing
> > > > sessions of the recent Linux Foundation Summit about certification
> > > > of printers and print drivers for Linux.
> > > >
> > > > More than ten hardware and software vendors agreed unanimously
> > > > that the "traditional" model followed by Microsoft and Apple (external
> > > > formal testing and certification with a per-printer fee) is definitely NOT
> > > > acceptable in the much smaller and more fragmented Linux market.
> > > >
> > > > I took the action item from today's Open Printing Architecture WG
> > > > teleconference to spearhead this topic and to be the principal editor
> > > > as we move forward to specifications.
> > > >
> > > > The approach we discussed was to gather comments on the
> > > > issues and details, write up a proposed approach, write design
> > > > requirements and specifications for test suites and test tools,
> > > > develop the actual tools, and verify the tools by independent
> > > > testing by several printer vendors and/or ISVs.
> > > >
> > > > One of the tools should be suitable for use by an end-user (NOT
> > > > a "just recompile everything" geek - but a real typical end-user) to
> > > > verify that a print driver (for example) is correctly installed and that
> > > > all of the dependencies in the complex print system software chain
> > > > are indeed satisfied.
> > > >
> > > > Cheers,
> > > > - Ira
> > > >
> > > > --
> > > > Ira McDonald (Musician / Software Architect)
> > > > Chair - Linux Foundation Open Printing WG
> > > > Blue Roof Music / High North Inc
> > > > PO Box 221  Grand Marais, MI  49839
> > > > phone: +1-906-494-2434
> > > > email: blueroofmusic@gmail.com
> > > >
> > > > _______________________________________________
> > > > Printing-architecture mailing list
> > > > Printing-architecture@lists.freestandards.org
> > > > http://lists.freestandards.org/mailman/listinfo/printing-architecture
> > >
> > >
> > >
> > >
> >
> >
> > --
> > Ira McDonald (Musician / Software Architect)
> > Chair - Linux Foundation Open Printing WG
> > Blue Roof Music / High North Inc
> > PO Box 221  Grand Marais, MI  49839
> > phone: +1-906-494-2434
> > email: blueroofmusic@gmail.com
>
>
>
>


-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: blueroofmusic@gmail.com
