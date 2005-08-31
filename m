MIME-Version: 1.0
Message-ID: <OFD2257733.32D525CB-ON8725706E.0068A1EA-8725706E.006F161D@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Wed, 31 Aug 2005 14:13:45 -0600
Content-Type: multipart/alternative;
	boundary="=_alternative 006F16188725706E_="
Subject: [Printing-architecture] Minutes from OpenPrintings call - Wed Aug
	31st
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This is a multipart message in MIME format.
--=_alternative 006F16188725706E_=
Content-Type: text/plain; charset="US-ASCII"

Participants:
Claudia Alimpich (IBM)
Harry Lewis (IBM)
Ira McDonald (High North Inc.)
Norm Jacobs (Sun)
Till Kamppeter (Till Kamppeter)

Minutes:
We looked at Reference Diagram that Glen posted. We didn't like referring 
to spooler as just a storage system. Spooler has a specific definition in 
most print systems. The old diagram (Sept 01 2004) properly shows the 
Spooler below (and attached to) the Print Manager.

The box around everything (where Spooler currently is in new Reference 
Model) should be called Print Subsytem.

A file server could be available to any of the boxes where it is used 
internal to a specific box, so it should not be shown in the diagram. 
There are not any cases where something is saved to a file system by one 
box and retrieved by another. If this were the case then the file server 
would need to appear in the Reference Model.

We liked the fact that the colored lines shown in the old Reference Model 
have been removed in the new Reference Model and instead there are 
sequence diagrams to show the flow.

In the  NewPrintJob sequence diagram there is a box called Accounting 
which isn't called from anything and doesn't call anything. Accounting 
should appear as do the Rendering and Drawing Subsystem boxes so in the 
Reference Diagram that are not part of the Print Subsystem. Accounting 
includes audit logging and a usage data base. Accounting needs to be 
defined if it is to be included in the sequence diagrams. What about 
authentication and authorization? Should this appear in the Reference 
Model outside of the Print System? It was suggested to add one box for all 
three (Authentication, Authorization, and Accounting -- AAA). Add an arrow 
from AAA box to/from Print Manager. Add a dotted arrow to/from Printer to 
AAA box because a printer may provide it own authentication, 
authorization, and accounting.

In the NewPrintJob sequence diagram, the calls to AAA need to be 
specified. At a minimum authorization and authentication needs to occur at 
the receipt of a job submission request to the Print Manager and 
accounting needs to occur after job completion.

It appears that the NewPrintJob sequence is not complete. We remembered 
that in his note Glen said that he just wanted to use the new UML tool and 
get a start. We all agreed that it would be best if we created a high 
level sequence diagram that just showed the basic flow (and order) between 
the boxes, otherwise if the sequence diagram is too long you can get lost 
in the detail. Then we can create lower level sequence diagrams that show 
more detail about the various back and forth calls between two specific 
boxes. We will start this activity during the next meeting in 2 weeks.

Claudia
--=_alternative 006F16188725706E_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="sans-serif">Participants:</font>
<br><font size=2 face="sans-serif">Claudia Alimpich (IBM)</font>
<br><font size=2 face="sans-serif">Harry Lewis (IBM)</font>
<br><font size=2 face="sans-serif">Ira McDonald (High North Inc.)</font>
<br><font size=2 face="sans-serif">Norm Jacobs (Sun)</font>
<br><font size=2 face="sans-serif">Till Kamppeter (Till Kamppeter)</font>
<br>
<br><font size=2 face="sans-serif">Minutes:</font>
<br><font size=2 face="sans-serif">We looked at Reference Diagram that
Glen posted. We didn't like referring to spooler as just a storage system.
Spooler has a specific definition in most print systems. The old diagram
(Sept 01 2004) properly shows the Spooler below (and attached to) the Print
Manager.</font>
<br>
<br><font size=2 face="sans-serif">The box around everything (where Spooler
currently is in new Reference Model) should be called Print Subsytem.</font>
<br>
<br><font size=2 face="sans-serif">A file server could be available to
any of the boxes where it is used internal to a specific box, so it should
not be shown in the diagram. There are not any cases where something is
saved to a file system by one box and retrieved by another. If this were
the case then the file server would need to appear in the Reference Model.</font>
<br>
<br><font size=2 face="sans-serif">We liked the fact that the colored lines
shown in the old Reference Model have been removed in the new Reference
Model and instead there are sequence diagrams to show the flow.</font>
<br>
<br><font size=2 face="sans-serif">In the &nbsp;NewPrintJob sequence diagram
there is a box called Accounting which isn't called from anything and doesn't
call anything. Accounting should appear as do the Rendering and Drawing
Subsystem boxes so in the Reference Diagram that are not part of the Print
Subsystem. Accounting includes audit logging and a usage data base. Accounting
needs to be defined if it is to be included in the sequence diagrams. What
about authentication and authorization? Should this appear in the Reference
Model outside of the Print System? It was suggested to add one box for
all three (Authentication, Authorization, and Accounting -- AAA). Add an
arrow from AAA box to/from Print Manager. Add a dotted arrow to/from Printer
to AAA box because a printer may provide it own authentication, authorization,
and accounting.</font>
<br>
<br><font size=2 face="sans-serif">In the NewPrintJob sequence diagram,
the calls to AAA need to be specified. At a minimum authorization and authentication
needs to occur at the receipt of a job submission request to the Print
Manager and accounting needs to occur after job completion.</font>
<br>
<br><font size=2 face="sans-serif">It appears that the NewPrintJob sequence
is not complete. We remembered that in his note Glen said that he just
wanted to use the new UML tool and get a start. We all agreed that it would
be best if we created a high level sequence diagram that just showed the
basic flow (and order) between the boxes, otherwise if the sequence diagram
is too long you can get lost in the detail. Then we can create lower level
sequence diagrams that show more detail about the various back and forth
calls between two specific boxes. We will start this activity during the
next meeting in 2 weeks.</font>
<br>
<br><font size=2 face="sans-serif">Claudia</font>
--=_alternative 006F16188725706E_=--

