Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7A9B@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Thu, 10 Mar 2005 06:23:19 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: [Printing-architecture] RE: How to convert xhtml-print to printer
	specific data
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: 'Prince P' <prince1a@gmail.com>, "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@base3.freestandards.org, pwg@pwg.org

Hi Prince,

By "actual print data" do you mean a raster format like
PCL or a vector format like PDF or something else?

The XHTML-Print to actual print data conversion is done
by an "interpreter" (either on the spooler or the target
printer).  Support for printing of HTML documents is
becoming more common on printers.  Typically, a modern
HTML interpreter can also parse XHTML correctly.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: Prince P [mailto:prince1a@gmail.com]
Sent: Thursday, March 10, 2005 3:59 AM
To: McDonald, Ira
Cc: printing-architecture@base3.freestandards.org; pwg@pwg.org
Subject: Re: How to convert xhtml-print to printer specific data


Hi Ira,
         Thank you very much for replying.  I had gone through the
spec http://www.w3.org/TR/xhtml-print/ . But it speaks about the xhtml
standard only. It doesn't says how printers interprets this. Is the
xhtml-print to actual print data conversion is done through some
proprietary methods ?

Anyway thanks for the help Ira 



On Wed, 9 Mar 2005 08:12:48 -0800, "McDonald, Ira"
<imcdonald@sharplabs.com> wrote:
> Hi,
> 
> I'm forwarding your question to the general discussion list
> of the IEEE/ISTO Printer Working Group (PWG), who developed
> the XHTML-Print standard and then passed it over to the W3C,
> who adopted it as a W3C Candidate Standard in January 2004:
> 
> 	http://www.w3.org/TR/xhtml-print/
> 
> You might want to take a look at that standard itself.
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
> From: printing-architecture-bounces@base3.freestandards.org
> [mailto:printing-architecture-bounces@base3.freestandards.org]On Behalf
> Of Prince P
> Sent: Wednesday, March 09, 2005 12:05 AM
> To: printing-architecture@base3.freestandards.org
> Subject: [Printing-architecture] How to convert xhtml-print to printer
> specific data
> 
> 
> Can anyone tell how we can convert xhtml-print data to printer
> specific data ? I had searched the whole web, but couldn't get any
> useful info.
> 
> Please help me
> 
> 
> Regards
> 
> Prince
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@mail.freestandards.org
> http://mail.freestandards.org/mailman/listinfo/printing-architecture
>

