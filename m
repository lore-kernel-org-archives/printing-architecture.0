MIME-Version: 1.0
Message-ID: <OF4D45FCC3.BE72D4C5-ON87256EF5.006C94C6-87256EF5.006D310E@us.ibm.com>
From: Claudia Alimpich <alimpich@us.ibm.com>
Date: Thu, 19 Aug 2004 13:52:38 -0600
Content-Type: multipart/alternative;
	boundary="=_alternative 006D310687256EF5_="
Subject: [Printing-architecture] JTAPI description for Reference Model
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
--=_alternative 006D310687256EF5_=
Content-Type: text/plain; charset="US-ASCII"

Following is a description of the JTAPI box in the Reference Model. I was 
able to lift quite a bit of the description from the JTAPI Spec.

---------------------------------------------------------------------------------
The Job Ticket Application Programming Interface (JTAPI) provides an 
abstract interface for applications to read, edit, and write industry 
standard or vendor specific document processing job tickets. The syntax of 
a specific industry standard job ticket is defined by the organization 
that owns the job ticket syntax and is not addressed by the JTAPI. The 
JTAPI defines an abstract model of objects (jobs, documents, etc.) and 
their operations and attributes for document processing (e.g. scanning, 
printing, copying, etc.). An implementation of the JTAPI produces and/or 
consumes one or more standard or vendor specific job tickets formats. 

The JTAPI defines an open standard for open printing on Linux, Unix, 
Posix, Windows, Macintosh, and embedded platforms. The JTAPI isolates an 
application from the syntax of a job ticket to hide details and the 
structural complexity of a specific job ticket along with interoperability 
between different job ticket file formats. The JTAPI abstract model is 
programming language neutral. 

The JTAPI is an object oriented extensible API that contains objects that 
are well known in the print industry. A job ticket information object 
(JobTicketInfo) contains one job object (Job) where the job contains zero 
or more document objects (Document). The JobDocumentPage object is 
abstract and contains functionality that is common to jobs, documents, and 
specific pages (PageOverrides) in a job or document. Each of the other 
objects in the JTAPI represents functionality that can be specified for 
the Job, Document, and PageOverrides objects. For example, the Media 
object represents the media that the job, document, or specific pages in 
the job or document is to be imaged/printed on. 

Some examples of industry standard job tickets are as follows:

The International Cooperation for the Integration of Process in Prepress, 
Press and Postpress (CIP4) is a joint initiative of vendors for the 
graphical arts industry. CIP4 has published a Job Definition Format (JDF) 
specification. JDF is a comprehensive XML-based file format proposed 
industry standard for end-to-end job ticket specifications combined with a 
message description standard and message interchange protocol to cover all 
aspects of the commercial printing workflows.

The Printer Working Group (PWG) is a joint initiative of printer vendors 
and print system providers to develop printing protocol standards for use 
on the Internet and within enterprises on their intra nets [pwg]. The PWG 
has published the Internet Printing Protocol (IPP) in September 2000 
[rfc2910, rfc2911]. The PWG is in the process of publishing the PWG 
Semantic Model which summarizes the printing semantics common to a number 
of printing protocols, centered on the IPP semantics. The PWG Semantic 
Model includes an XML Schema definition. Therefore, an XML Job Ticket 
using the semantics of the PWG Semantic Model is possible.
--=_alternative 006D310687256EF5_=
Content-Type: text/html; charset="US-ASCII"


<br><font size=2 face="Arial">Following is a description of the JTAPI box
in the Reference Model. I was able to lift quite a bit of the description
from the JTAPI Spec.</font>
<br>
<br><font size=2 face="Arial">---------------------------------------------------------------------------------</font>
<br><font size=2 face="Arial">The Job Ticket Application Programming Interface
(JTAPI) provides an abstract interface for applications to read, edit,
and write industry standard or vendor specific document processing job
tickets. The syntax of a specific industry standard job ticket is defined
by the organization that owns the job ticket syntax and is not addressed
by the JTAPI. The JTAPI defines an abstract model of objects (jobs, documents,
etc.) and their operations and attributes for document processing (e.g.
scanning, printing, copying, etc.). An implementation of the JTAPI produces
and/or consumes one or more standard or vendor specific job tickets formats.
</font>
<br>
<br><font size=2 face="Arial">The JTAPI defines an open standard for open
printing on Linux, Unix, Posix, Windows, Macintosh, and embedded platforms.
The JTAPI isolates an application from the syntax of a job ticket to hide
details and the structural complexity of a specific job ticket along with
interoperability between different job ticket file formats. The JTAPI abstract
model is programming language neutral. </font>
<br>
<br><font size=2 face="Arial">The JTAPI is an object oriented extensible
API that contains objects that are well known in the print industry. A
job ticket information object (JobTicketInfo) contains one job object (Job)
where the job contains zero or more document objects (Document). The JobDocumentPage
object is abstract and contains functionality that is common to jobs, documents,
and specific pages (PageOverrides) in a job or document. Each of the other
objects in the JTAPI represents functionality that can be specified for
the Job, Document, and PageOverrides objects. For example, the Media object
represents the media that the job, document, or specific pages in the job
or document is to be imaged/printed on. </font>
<br>
<br><font size=2 face="Arial">Some examples of industry standard job tickets
are as follows:</font>
<br>
<br><font size=2 face="Arial">The International Cooperation for the Integration
of Process in Prepress, Press and Postpress (CIP4) is a joint initiative
of vendors for the graphical arts industry. CIP4 has published a Job Definition
Format (JDF) specification. JDF is a comprehensive XML-based file format
proposed industry standard for end-to-end job ticket specifications combined
with a message description standard and message interchange protocol to
cover all aspects of the commercial printing workflows.</font>
<br>
<br><font size=2 face="Arial">The Printer Working Group (PWG) is a joint
initiative of printer vendors and print system providers to develop printing
protocol standards for use on the Internet and within enterprises on their
intra nets [pwg]. The PWG has published the Internet Printing Protocol
(IPP) in September 2000 [rfc2910, rfc2911]. The PWG is in the process of
publishing the PWG Semantic Model which summarizes the printing semantics
common to a number of printing protocols, centered on the IPP semantics.
The PWG Semantic Model includes an XML Schema definition. Therefore, an
XML Job Ticket using the semantics of the PWG Semantic Model is possible.</font>
--=_alternative 006D310687256EF5_=--

