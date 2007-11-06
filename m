DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
	bh=IpQ0xSCpWtIhPSNT/V7Xe99v3OIXk9vedRMj7hLHqJo=;
	b=gYlveL2Z8OyqRLmPpyH+dMXIDp/3VGH2bV1VxhDHiq4Zxzyewcl4R5+ASqx+Gu31FqYTNJuFBf0DgcUgt89v4AFyf38sUI8SsHpYYOJ3YxU199IxHGLnebX5KRbRMIoe1TzPPxVLLDazJ8OPj2UNLI9nocCnTaDW7VHr+Bosx60=
Message-ID: <e395be80711060900l62c73e08j5078207874ab77a5@mail.gmail.com>
Date: Tue, 6 Nov 2007 12:00:04 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
Subject: Re: [Printing-architecture] OP SC Minutes - 5 Nov 2007
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1C20@eitc220.eitc.epson.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1C20@eitc220.eitc.epson.com>
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.freestandards.org

Hi Glen,

Glen - my sincerest apologies.

I was speaking ALWAYS in the plural about our Steering Committee's
decisions and credibility.

Notwithstanding your statements about PDF, the PWG registered it as a
*print description language* ten years ago in the Printer MIB v2 drafts and
now RFC 3805.

We have had broad-based concensus since early 2006 in every recent
Open Printing Summit that PDF is our preferred replacement for PS as
the document workflow intermediate print data format -  NOT just for
printing, but for scan, email, and fax as well.

The PWG developed PDF/is (PWG 5102.3) in collaboration with Adobe
specifically for low-cost, low-memory office products.

The SC continued discussion last night about IJS in LSB 3.2 - we agreed
to keep it in for compatibility for the many existing IJS printers that will be
in use for some years to come.  The LSB WG does not have a method to
submit an LSB requirement that is simultaneously deprecated.

Again, my sincerest apologies,
- Ira

On Nov 6, 2007 10:04 AM, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
> Correction to Ira McDonald's interpretation with Steering Committee meeting
>
>       - Till - PDF as standard intermediate print job format
>         - pdftoijs and pdftoraster
>         - Glen - misunderstandings about usage?
>
> [gwp]  There is no misunderstanding.  The concept of pdf to ijs is not a
> transform as was being discussed.  PDF is document format (remember that's
> what is stands for) while IJS is client-service raster printing protocol.
> Therefore, "pdftoijs" is not a transform but an application (due to nature
> of IJS) that accepts pdf formatted documents, renders them pdf (by
> pdftoraster) and then supports the IJS protocol to a printer driver.
>
> [gwp]  There is no misunderstanding that PDF is not and should be a standard
> for "intermediate print job format".   PDF if a "portable document
> format",(remember that's what is stands for), and has never, to my
> knowledge, been targeted specifically to printing.  It can be printed, just
> like any other document format providing you have a renderer.  A PDF
> document, within itself, has no traditional print attributes or is likely
> to.  So it will never be a "print job format"; at the most it could be a
> "print document format". (Do one set the number of copies or the print
> quality; store that in the PDF, so that whoever prints the document gets the
> same number of copies and print quality .... I don't think so.)   PDF is
> just another of the many, many, ..., many, many document formats in the
> world today.  So lets stop trying to turn PDF into a new print description
> language or a print job format (whatever that means).
>
> [gwp] If the question is what do you replace PS with?  That may be PDF!  So
> we don't have PS printers any more and we have PDF printer; this does not
> make PDF the new print document format nor does is make PDF a PDL. Instead
> it make PDF the new "portable document format" - but again that's what is
> stands for.
>
>       - Till - HP considering moving from IJS to CUPS Raster
>         - Ira - So IJS goes away in LSB 4.0?
>         - Glen - frustration with discussion about IJS in LSB 3.2
>
> [gwp]  I was not frustrated with the discussion, I was appalled by the
> profanity and insults directed at me by meeting's chair person.  I expect
> that with any group of diverse personalities for things to get heated but I
> expect people to maintain some level of professionalism.  The line was most
> definitely crossed yesterday.
>
> [gwp]  As to the IJS discussion; 1. HP may be deciding to move from "HP-IJS"
> (not the open-standand IJS) to CUPS Raster; that is a decision for HP to
> make.   However, IJS (the open standard one and the one under discussion)
> has been, is being and may be used in the future (but who know for sure
> about the future of anything).  IJS (the open-standard one) is a very simple
> protocol that gets around several issues (GPL licensing, proprietary driver,
> upgrade-ability, etc.); it was very rapidly adopted and used by the industry
> and is in real use today; it is part of CUPS and GhostScript today, so why
> try to remove r even discussing removing something that has a use and is
> already slated to be in LSB 3.2.
>
>
>         - Norm - existing HP printers will need IJS in the future
>         - Concensus - leave IJS in LSB 3.2 Printing for end users
>
>
> > -----Original Message-----
> > From: printing-architecture-bounces@lists.linux-foundation.org
> > [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> > Behalf Of Ira McDonald
> > Sent: Monday, November 05, 2007 5:01 PM
> > To: printing-architecture@lists.freestandards.org; Ira McDonald
> > Subject: [Printing-architecture] OP SC Minutes - 5 Nov 2007
> >
> > Hi,
> >
> > I just posted the minutes from today's OP Steering Committee at:
> >
> >   ftp://ftp.pwg.org/pub/pwg/fsg/steering_committee/OP-SC-Minutes-
> > 20071105.htm
> >   ftp://ftp.pwg.org/pub/pwg/fsg/steering_committee/OP-SC-Minutes-
> > 20071105.pdf
> >
> > Cheers,
> > - Ira
> >
> > --
> > Ira McDonald (Musician / Software Architect)
> > Chair - Linux Foundation Open Printing WG
> > Blue Roof Music / High North Inc
> > PO Box 221  Grand Marais, MI  49839
> > work: +1-906-494-2434
> > home: +1-906-494-2697
> > email: blueroofmusic@gmail.com
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>



-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
work: +1-906-494-2434
home: +1-906-494-2697
email: blueroofmusic@gmail.com
