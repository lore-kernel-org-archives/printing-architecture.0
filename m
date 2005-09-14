MIME-Version: 1.0
Message-ID: <OFA4EAA54D.A874EB4F-ON8725707C.0068B4B5-8725707C.006E5B52@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Wed, 14 Sep 2005 14:06:04 -0600
Content-Type: multipart/alternative;
	boundary="=_alternative 006E5B518725707C_="
Subject: [Printing-architecture] Meeting minutes Wed September 14th
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://base4.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This is a multipart message in MIME format.
--=_alternative 006E5B518725707C_=
Content-Type: text/plain; charset="US-ASCII"

Participants:
Claudia Alimpich (IBM)
Glen Petrie (Seiko-Epson, Inc.)
Harry Lewis (IBM)
Ira McDonald (High North Inc.)
Norm Jacobs (Sun)
Till Kamppeter (Till Kamppeter)

Minutes:

Talked about the use of ther term spooler versus file system. Decided to 
use the term Print Spooler to mean more than just the file system (which 
includes scheduling) and ensure that the definition of the Print Spooler 
is clear in the reference model.

Clarify that Printer mean Physical Printer.

Entire "thing" that we are defining is called the Print Subsystem.

Print Subsystem contains multiple components. So the Print Spooler is a 
component.

Talked about placing job ticket information in a structure(s) and passing 
between components. Decided that we would not define interfaces between 
components in Print Subsystem other than the APIs between components.
 
Should be a box outside of the diagram for Data Store (local or network 
file system that is accessible to all components in the Print Subsystem).

Next we need to finish going through Print Job sequence diagram. Also need 
to include sequence diagrams that show printer registry and administrative 
tasks.

Claudia
--=_alternative 006E5B518725707C_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="sans-serif">Participants:</font>
<br><font size=2 face="sans-serif">Claudia Alimpich (IBM)</font>
<br><font size=2 face="sans-serif">Glen Petrie (Seiko-Epson, Inc.)</font>
<br><font size=2 face="sans-serif">Harry Lewis (IBM)</font>
<br><font size=2 face="sans-serif">Ira McDonald (High North Inc.)</font>
<br><font size=2 face="sans-serif">Norm Jacobs (Sun)</font>
<br><font size=2 face="sans-serif">Till Kamppeter (Till Kamppeter)</font>
<br>
<br><font size=2 face="sans-serif">Minutes:</font>
<br>
<br><font size=2 face="sans-serif">Talked about the use of ther term spooler
versus file system. Decided to use the term Print Spooler to mean more
than just the file system (which includes scheduling) and ensure that the
definition of the Print Spooler is clear in the reference model.</font>
<br>
<br><font size=2 face="sans-serif">Clarify that Printer mean Physical Printer.</font>
<br>
<br><font size=2 face="sans-serif">Entire &quot;thing&quot; that we are
defining is called the Print Subsystem.</font>
<br>
<br><font size=2 face="sans-serif">Print Subsystem contains multiple components.
So the Print Spooler is a component.</font>
<br>
<br><font size=2 face="sans-serif">Talked about placing job ticket information
in a structure(s) and passing between components. Decided that we would
not define interfaces between components in Print Subsystem other than
the APIs between components.</font>
<br><font size=2 face="sans-serif">&nbsp;</font>
<br><font size=2 face="sans-serif">Should be a box outside of the diagram
for Data Store (local or network file system that is accessible to all
components in the Print Subsystem).</font>
<br>
<br><font size=2 face="sans-serif">Next we need to finish going through
Print Job sequence diagram. Also need to include sequence diagrams that
show printer registry and administrative tasks.</font>
<br>
<br><font size=2 face="sans-serif">Claudia</font>
--=_alternative 006E5B518725707C_=--
