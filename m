Message-ID: <1be90c0a050316205516b5a953@mail.gmail.com>
Date: Thu, 17 Mar 2005 10:25:30 +0530
From: Prince P <prince1a@gmail.com>
In-Reply-To: <CFEE79A465B35C4385389BA5866BEDF00C7AB6@mailsrvnt02.enet.sharplabs.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
References: <CFEE79A465B35C4385389BA5866BEDF00C7AB6@mailsrvnt02.enet.sharplabs.com>
Subject: [Printing-architecture] Re: How to convert xhtml-print to pri nter
	specific data
Reply-To: Prince P <prince1a@gmail.com>
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@base3.freestandards.org

Thank you Ira, for your valuable help. I will try to contact Jim.

Regards

Prince


On Wed, 16 Mar 2005 08:26:17 -0800, "McDonald, Ira"
<imcdonald@sharplabs.com> wrote:
> Hi,
> 
> I'd suggest you write directly to the W3C XHTML-Print editor
> Jim Bigelow (jim.bigelow@hp.com).
> 
> I wasn't personally active in either the IEEE/ISTO PWG or
> later W3C working groups for this standard.
> 
> Cheers,
> - Ira
> 
> Ira McDonald (Musician / Software Architect)
> Blue Roof Music / High North Inc
> PO Box 221  Grand Marais, MI  49839
> phone: +1-906-494-2434
> email: imcdonald@sharplabs.com
> 
> -----Original Message-----
> From: Prince P [mailto:prince1a@gmail.com]
> Sent: Wednesday, March 16, 2005 4:08 AM
> To: McDonald, Ira
> Cc: printing-architecture@base3.freestandards.org
> Subject: Re: How to convert xhtml-print to pri nter specific data
> 
> 
> Hi Ira,
>         Thank you very much for the information and the help extended
> to me.If you can give some insight or links  about the design effort
> in  XHTML-Print group to interpret the XHMTL pages one at a time,
> without caching, it will be a great help.
> 
> Thanks and Regards
> 
> Prince
> 
> 
> 
> 
> 
> On Mon, 14 Mar 2005 13:21:58 -0800, "McDonald, Ira"
> <imcdonald@sharplabs.com> wrote:
> > Hi,
> > 
> > Ah - you're building an interpreter - I'm sure there are some
> > free XHTML to PCL raster libraries somewhere, but some Google
> > searching for an hour didn't find them.
> > 
> > There was a design effort in XHTML-Print to ensure that a
> > receiver (a spooler or a printer) could interpret the XHMTL
> > pages one at a time, without caching.
> > 
> > Good luck with your project,
> > - Ira
> > 
> > Ira McDonald (Musician / Software Architect)
> > Blue Roof Music / High North Inc
> > PO Box 221  Grand Marais, MI  49839
> > phone: +1-906-494-2434
> > email: imcdonald@sharplabs.com
> > 
> > -----Original Message-----
> > From: printing-architecture-bounces@base3.freestandards.org
> > [mailto:printing-architecture-bounces@base3.freestandards.org]On Behalf
> > Of Prince P
> > Sent: Sunday, March 13, 2005 11:40 PM
> > To: McDonald, Ira
> > Cc: printing-architecture@base3.freestandards.org; pwg@pwg.org
> > Subject: [Printing-architecture] Re: How to convert xhtml-print to
> > printer specific data
> > 
> > 
> > Dear Ira,
> >           By acutal print data, what i meant was how to convert the
> > XHTML-Print format data to a raster format. In the specification, it
> > was pointed out that XHTML-Print is designed for low cost printers.  I
> > am trying to implement such an interpreter which can convert the
> > "XHTML-Print data to PCL format". It would be a great help, if you can
> > give me some links or guidelines on this. Again,the low cost printer
> > may not have enough memory  to store the XHTML-Print format data
> > fully. In that case,how we we can covert the partial data to actual. ?
> > 
> >  Thanks again Ira, for your helping hand. 
> > 
> > 
> > On Thu, 10 Mar 2005 06:23:19 -0800, "McDonald, Ira"
> > <imcdonald@sharplabs.com> wrote:
> > > Hi Prince,
> > > 
> > > By "actual print data" do you mean a raster format like
> > > PCL or a vector format like PDF or something else?
> > > 
> > > The XHTML-Print to actual print data conversion is done
> > > by an "interpreter" (either on the spooler or the target
> > > printer).  Support for printing of HTML documents is
> > > becoming more common on printers.  Typically, a modern
> > > HTML interpreter can also parse XHTML correctly.
> > > 
> > > Cheers,
> > > - Ira
> > > 
> > > Ira McDonald (Musician / Software Architect)
> > > Blue Roof Music / High North Inc
> > > PO Box 221  Grand Marais, MI  49839
> > > phone: +1-906-494-2434
> > > email: imcdonald@sharplabs.com
> > > 
> > > -----Original Message-----
> > > From: Prince P [mailto:prince1a@gmail.com]
> > > Sent: Thursday, March 10, 2005 3:59 AM
> > > To: McDonald, Ira
> > > Cc: printing-architecture@base3.freestandards.org; pwg@pwg.org
> > > Subject: Re: How to convert xhtml-print to printer specific data
> > > 
> > > 
> > > Hi Ira,
> > >          Thank you very much for replying.  I had gone through the
> > > spec http://www.w3.org/TR/xhtml-print/ . But it speaks about the xhtml
> > > standard only. It doesn't says how printers interprets this. Is the
> > > xhtml-print to actual print data conversion is done through some
> > > proprietary methods ?
> > > 
> > > Anyway thanks for the help Ira 
> > > 
> > > 
> > > 
> > > On Wed, 9 Mar 2005 08:12:48 -0800, "McDonald, Ira"
> > > <imcdonald@sharplabs.com> wrote:
> > > > Hi,
> > > > 
> > > > I'm forwarding your question to the general discussion list
> > > > of the IEEE/ISTO Printer Working Group (PWG), who developed
> > > > the XHTML-Print standard and then passed it over to the W3C,
> > > > who adopted it as a W3C Candidate Standard in January 2004:
> > > > 
> > > > 	http://www.w3.org/TR/xhtml-print/
> > > > 
> > > > You might want to take a look at that standard itself.
> > > > 
> > > > Cheers,
> > > > - Ira
> > > > 
> > > > Ira McDonald (Musician / Software Architect)
> > > > Blue Roof Music / High North Inc
> > > > PO Box 221  Grand Marais, MI  49839
> > > > phone: +1-906-494-2434
> > > > email: imcdonald@sharplabs.com
> > > > 
> > > > -----Original Message-----
> > > > From: printing-architecture-bounces@base3.freestandards.org
> > > > [mailto:printing-architecture-bounces@base3.freestandards.org]On
> Behalf
> > > > Of Prince P
> > > > Sent: Wednesday, March 09, 2005 12:05 AM
> > > > To: printing-architecture@base3.freestandards.org
> > > > Subject: [Printing-architecture] How to convert xhtml-print to
> printer
> > > > specific data
> > > > 
> > > > 
> > > > Can anyone tell how we can convert xhtml-print data to printer
> > > > specific data ? I had searched the whole web, but couldn't get any
> > > > useful info.
> > > > 
> > > > Please help me
> > > > 
> > > > 
> > > > Regards
> > > > 
> > > > Prince
> > > > 
> > > > _______________________________________________
> > > > Printing-architecture mailing list
> > > > Printing-architecture@mail.freestandards.org
> > > > http://mail.freestandards.org/mailman/listinfo/printing-architecture
> > > >
> > >
> > 
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@mail.freestandards.org
> > http://mail.freestandards.org/mailman/listinfo/printing-architecture
> >
>

