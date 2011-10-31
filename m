Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 31 Oct 2011 09:56:11 -0700
Message-ID: <E8C3B9E653C80C48B0951F8494C049A9026786@EEAEX02.us.epson.net>
References: <201106222349.13063.johnlayt@googlemail.com>
	<1923986.CutFMD6I4E@argo.layt.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Printing in Qt/KDE
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: John Layt <jlayt@kde.org>, printing-architecture@lists.linux-foundation.org

Hi John,

I reviewed the QPrinter Class Reference information.  While it appears
that most of the objects, attributes and values needed for printing are
present; I don't see that they align with existing and emerging
standards today; specifically, the PWG. =20

The PWG has had IPP and is now creating the PWG: Job Ticket (which
contains the objects, attributes and values) for printing.  Companies
like Google, Apple, etc have stated or hinted they will be supporting
the PWG standards and the Job Ticket.  Therefore, an area for
consideration is for QPrinter to align and extend the current printing
specific enum's to be more inline with the PWG Standards/Specifications.
I have not check if any new QPrinter enum's or functions are needed to
support the above standards; but it is another area for consideration.=20

Next, the print paradigm is shifting from print/printer drivers to print
services.   This further implies that a print service now receives a
"print job" which consist of a print job ticket and print content (print
document, if you like).   Like Adobe's Acrobat application which can
generate a JDF Job Ticket, another area of consideration is for QPrinter
to generate a "print job"; consisting of a print job ticket and print
content.   This also helps to support Cloud Printing.   I do understand
that the QPrinter::paintEngine could provide this functionality but
having the functionality built directly in to QPrinter, eliminates
developer having to recreate it.=20

Glen


-----Original Message-----
From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of John Layt
Sent: Thursday, October 27, 2011 10:20 AM
To: printing-architecture@lists.linux-foundation.org
Subject: Re: [Printing-architecture] Printing in Qt/KDE

On Wednesday 22 Jun 2011 23:49:12 John Layt wrote:
> You may have heard that Qt have decided the forthcoming Qt 4.8 release
will
> be the last in the Qt4 series and will be followed by Qt5, the first
> release under the new OpenGovernance development model.

Hi,

Just as a follow up to this, you may have seen that Nokia has now
launched the=20
Qt Open Governance project at qt-project.org and if you look closely
enough=20
you will see I have been appointed maintainer of the QPrinter module. =20
Basically it means I am now responsible for the ongoing maintenance of=20
QPrinter in Qt 4.8, and have the final say on any new code going into
QPrinter=20
from Qt 5 onwards.  So if you have any issues with Qt printing, you know
who=20
to kick :-)

With regards to future plans not much has changed, my time is tied up
with=20
other stuff for Qt 5.0 so I'm starting with a bug triage for now, with
new=20
code to come in 5.1 or 5.2.

Cheers!

John.
_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.linux-foundation.org
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
