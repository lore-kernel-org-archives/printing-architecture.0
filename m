Return-Path: <glen.petrie@eitc.epson.com>
Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CA9F@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 9 Apr 2007 10:57:37 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C77AD0.8EF0F708"
Subject: [Printing-architecture] OP Thin Thread Developement for Linux
	Embedded Solutions
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C77AD0.8EF0F708
Content-Type: text/plain

All,

As discussed at the last SC and Arch meeting one of the possibilities for
continued activities within the Open Printing in the US/Europe is to develop
a thin-thread implementation of the Open Printing Architecture for a Linux
Embedded Solutions.  I have been asked to pull together my thoughts and
ideas for such a development to get things started.

For embedded solutions, the implementation limitations are typically, 
1.	Limited memory
2.	Slower processor speeds
3.	May or may not have a file system
4.	May or may not have persistent memory (recoverable after power
off/on)
5.	The solution my use a reduced operating system configuration
a.	May imply no system level memory management
b.	Again, no file system
c.	Unidirectional communication (I/O) configuration

The following are my suggestions the thin thread implementation of the
current open-printing architecture.

Printer I/O will only be USB - Bidirectional capable.
"op" meaning Open-Printing will be used as the prefix in my comments below

1.	There will need to be some common components; namely,
a.	Pointer-to-functions for 
i.	Memory Functions
1.	opMalloc, opReAlloc, opFree
ii.	File Functions
1.	opOpenFile, opReadFile, opWriteFile, opCloseFile
iii.	I/O Function - Low level USB I/O for use within the Print Channel
Manager
1.	opOpenUSB, opReadUSB, opWriteUSB, opCloseUSB
b.	Generic Error Messages
i.	"Out of Memory", "Invalid Value", "Internal Error", ....etc
c.	Generic Type Definitions
i.	Basic types: opBIT8, opINT8, opBIT16,.....etc
d.	Generic structures
i.	Image-struct, job-struct, .... etc.
2.	Application:
a.	Since the application is not important and, actually, the content is
not important.  We need an application that prints something; there the
application suggested is a simple image application that will print 4x6
photos. Thus, the application needs to,
i.	Open an image file
ii.	Read image data into memory.
iii.	Display the image on the screen.
iv.	Obtain the current printers capabilities
v.	Display printer capabilities and settable options
vi.	Input / Change settable options
vii.	Scale/Clip/Rotate image as necessary to fit on a 4x6 page.
viii.	Initiate a Print Job
1.	By direct interface with the Print Manager
2.	By interface with Job Ticketing
ix.	Print the image in bands
x.	Close the Print Job
3.	Print Manager
a.	The current plan is to utilize the existing PAPI interface.  Due to
the implementation constraints of embedded solution, it may be necessary to
reduce the set of or functionality of API within PAPI.   If this is
necessary, then caution must be taken to ensure that scalability of PAPI is
not lost.
i.	Implementation details will have to be discussed.
4.	Job Ticketing
a.	The job ticketing will not be able to use a known job ticket like
JDF; I believe it will be too complex.   Therefore, I suggest the job ticket
directly support the OP/JTAPI defined elements.  Further, I suggest that the
internal structures be defined that directly support the OP/JTAPI defined
elements and that these structures are used through out the entire
architecture.
5.	Spooler
a.	For an embedded solution, the spooler is basically a very limited
data spooler or temporary memory buffer for printing data.
i.	It is important, even at this limited capability, to instantiate a
scalable set of API's
6.	Transform
a.	Transform can not include GhostScript or the equivalent post-script
interpreter; it is simply too big for any real embedded solution.
Therefore, I suggest that the thin thread implementation have a few simple
transform functions
i.	Convert Color to Grey
ii.	Rotate Image 180 degrees
iii.	Scale (up and crop) image
7.	Device Discovery
a.	A simple polling of the USB interface could be implemented; where
the printer USB identifier string is retrieve. [The identifier is then used
to retrieve a PPD file or equivalent printer description file by the
Capability Module.]
i.	[optional] Poll the USB interface to retrieve the Printer's USB
Identifier
ii.	[optional] Store the Printer's Identifier
iii.	Notify the Print Manager of the printer
iv.	Notify the Capability Module of the new printer
8.	Capability Module
a.	The PCAPI will retrieve the printer's specific information and put
the information in term the current solution can utilize.
i.	Retrieve the Printer's description file based on the Printer's
Identifier.
1.	[Retrieve info directly from the printer will be considered out of
scope for the thin thread activity.]
ii.	[??? Interpret data for the current solution.
1.	What capabilities are supported by the application
2.	How are the capabilities supported by the application
iii.	Notify the Printer Manager of the Printer's Capabilities]
9.	Status Monitoring 
a.	Although the API for this module is open source, the actual
implementation, in general, will be printer vendor specific and, as such,
may or may not be public.  Therefore, the recommendation here is to request
one of the printer vendors to provide a compiled implementation.   The OP
architecture team should investigate at what level it is necessary to
support proprietary software and how.  Example, can an IJS-like status
monitoring interface be defined.
i.	Details to be worked out.
10.	Driver
a.	This is same situation as Status Monitoring I would make the same
recommendation.  In this case the Vector-Driver will be used, in part or
whole, as the basis for a solution.
i.	Details to be worked out.
11.	Print Channel Manager
a.	The PCM must be implemented as originally conceived; that is, a
vendor independent I/O manager.  The recommendation of the SC and Arch teams
is that the initial version only supports USB.  To support status monitoring
and the capabilities function the USB I/O must be bidirectional. 


Next Steps
1.	We must determine "How this work will be done/" before proceeding. 
Assuming we can defined a realistic "how to do this work", then I believe
the next couple of steps are

2.	Refine the above outline to get consensus from the contributors
3.	Assigns each modules discussed above to a specific individual
4.	Agree on the development environment
a.	As silly as it might seem, I actually do this in Window (using
Visual C++ 6.0).   The final code is moved to Linux and confirmed to compile
in run.  Using this approach general makes the code platform/solution
independent.
5.	Begin development of individual modules. 



Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
2580 Orchard Parkway, Suite 200 
San Jose, CA, 95131 
Voice: 408.576.4131  Fax: 408.474.0511 



------_=_NextPart_001_01C77AD0.8EF0F708
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
5.5.2658.24">
<TITLE>OP Thin Thread Developement for Linux Embedded Solutions</TITLE>
</HEAD>
<BODY>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">A</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">l,</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">As discussed at =
the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">last</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">S</FONT><FONT SIZE=3D2 FACE=3D"Arial">C</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> and Arc</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">h</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">meeting</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">ne of the possibilities for</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">continue</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">d</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">activities</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">within</FONT> <FONT SIZE=3D2 FACE=3D"Arial">the Open =
Printing in the US/Europe</FONT> <FONT SIZE=3D2 FACE=3D"Arial">is to =
devel</FONT><FONT SIZE=3D2 FACE=3D"Arial">op a thin-thread =
implementation of the Open Printing Architecture for</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">a</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Linux</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Em</FONT><FONT SIZE=3D2 FACE=3D"Arial">bedded =
Solutions.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> I</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> have been asked to pull together my thoughts =
and ideas for</FONT> <FONT SIZE=3D2 FACE=3D"Arial">such a =
development</FONT><FONT SIZE=3D2 FACE=3D"Arial"> to get things =
started</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">For embedded =
solutions</FONT><FONT SIZE=3D2 FACE=3D"Arial">, the implementation =
limitations are</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">typically</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT><FONT SIZE=3D2 FACE=3D"Arial"> </FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">L</FONT><FONT SIZE=3D2 FACE=3D"Arial">i</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">mited</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">memory</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Slower processor speeds</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">May or may not have a file system</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">May or may not have persistent memory (</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">recoverable after power off/on)</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">The solution my use</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">a</FONT> <FONT SIZE=3D2 FACE=3D"Arial">reduced operating =
system configuration</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">May imply no system level memory management</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Again, no file system</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Uni</FONT><FONT SIZE=3D2 FACE=3D"Arial">directional =
communication</FONT> <FONT SIZE=3D2 FACE=3D"Arial">(I/O) =
configuration</FONT>
</P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">The following are</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">my suggestions</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">the thin thread implementation of the current =
open-printing architecture.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Printer I/O will only be =
USB</FONT> <FONT SIZE=3D2 FACE=3D"Arial">-</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> Bidirectional</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">capab</FONT><FONT SIZE=3D2 FACE=3D"Arial">le.</FONT></P>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">op</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">meaning =
Open-Printing</FONT> <FONT SIZE=3D2 FACE=3D"Arial">will be used</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">as the prefix in my comments =
below</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">There will</FONT><FONT SIZE=3D2 FACE=3D"Arial"> need to =
be</FONT><FONT SIZE=3D2 FACE=3D"Arial"> some common =
components</FONT><FONT SIZE=3D2 FACE=3D"Arial">; namely,</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Pointer-to-functions for </FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Memory Functions</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">op</FONT><FONT SIZE=3D2 FACE=3D"Arial">M</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">alloc</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">opReAlloc</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">op</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">Free</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">ii.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">File Functions</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">opOpenFile</FONT><FONT SIZE=3D2 FACE=3D"Arial">,</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">opReadFile</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">o</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">pWriteFile</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">opCloseFile</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iii.&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">I/O Function</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">-</FONT><FONT SIZE=3D2 FACE=3D"Arial"> Low</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">level</FONT> <FONT SIZE=3D2 FACE=3D"Arial">USB =
I/O</FONT> <FONT SIZE=3D2 FACE=3D"Arial">for use</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">with</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">in</FONT><FONT SIZE=3D2 FACE=3D"Arial"> the =
Print Channel Manager</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">op</FONT><FONT SIZE=3D2 FACE=3D"Arial">Open</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">USB</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">opReadUSB</FONT><FONT SIZE=3D2 FACE=3D"Arial">,</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">opWriteUSB</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">opCloseUSB</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Generic</FONT> <FONT SIZE=3D2 FACE=3D"Arial">Error =
Message</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">Out of =
Memory</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">Invalid Value</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">,</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">Internal =
Error</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">...</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">.etc</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Generic Type</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">D</FONT><FONT SIZE=3D2 FACE=3D"Arial">efinitions</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Ba</FONT><FONT SIZE=3D2 FACE=3D"Arial">sic =
types</FONT><FONT SIZE=3D2 FACE=3D"Arial">: op</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">BIT8,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">op</FONT><FONT SIZE=3D2 FACE=3D"Arial">INT8,</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">op</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">BIT16,</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">...</FONT><FONT SIZE=3D2 FACE=3D"Arial">..etc</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Generic structures</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Image-struct,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">job-struct,</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">...</FONT><FONT SIZE=3D2 FACE=3D"Arial">. etc.</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Application:</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Since the application is not important and</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">,</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
actually</FONT><FONT SIZE=3D2 FACE=3D"Arial">, the content is not =
important.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> W</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e need an appli</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">cation that prints</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">something</FONT><FONT SIZE=3D2 FACE=3D"Arial">; there =
the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">application</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">suggested =
is a simple image application that will print</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">4x6 photos.</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
T</FONT><FONT SIZE=3D2 FACE=3D"Arial">hus, the application needs =
to,</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Open an image file</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">ii.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Read image data into memory.</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iii.&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">D</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">isplay</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">the image on the screen.</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iv.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Obtain the current printers =
capabilities</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">v.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Display printer capabilities and settable options</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">vi.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">I</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">n</FONT><FONT SIZE=3D2 FACE=3D"Arial">put</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">/ Change settable options</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">vii.&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">S</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">cale</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">/Clip/Rota</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">te</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
image</FONT><FONT SIZE=3D2 FACE=3D"Arial"> as necessary</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> to</FONT><FONT SIZE=3D2 FACE=3D"Arial"> fit on =
a</FONT><FONT SIZE=3D2 FACE=3D"Arial"> 4x6</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">page.</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">viii.&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Initiate a Print Job</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">By direct interface with the Print Manager</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">By</FONT> <FONT SIZE=3D2 FACE=3D"Arial">interface</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">with</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
Job Ticketing</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">ix.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Print the image in bands</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">x.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Close</FONT> <FONT SIZE=3D2 FACE=3D"Arial">the Print =
Job</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Print Manager</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">The current plan is to utilize the existing PAPI =
interface.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Due to the implementation constraints of =
embedded solution, it may be necessary to reduce the set</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">of</FONT> <FONT SIZE=3D2 FACE=3D"Arial">or =
functionality of</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">API within</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">PAPI</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">If =
this is ne</FONT><FONT SIZE=3D2 FACE=3D"Arial">cessary, the</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">n</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">caution must be taken to ensure =
that</FONT> <FONT SIZE=3D2 FACE=3D"Arial">scalability</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> of</FONT><FONT SIZE=3D2 FACE=3D"Arial"> PAPI =
is not lost.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Implementation detail</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> will have to =
be</FONT> <FONT SIZE=3D2 FACE=3D"Arial">discussed</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Job Tick</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">eting</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">The</FONT> <FONT SIZE=3D2 FACE=3D"Arial">job =
ticketing</FONT> <FONT SIZE=3D2 FACE=3D"Arial">will not be able to =
use</FONT> <FONT SIZE=3D2 FACE=3D"Arial">a known job ticket like =
JDF</FONT><FONT SIZE=3D2 FACE=3D"Arial">; I believe it will be too =
complex.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Therefore, I suggest the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">job ticket</FONT> <FONT SIZE=3D2 FACE=3D"Arial">directly =
support the OP</FONT><FONT SIZE=3D2 FACE=3D"Arial">/</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">JTAPI</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">defined el</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ements.&nbsp; F</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">urther, I suggest that the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">internal structures be defined</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">that</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">directly</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">support the OP/JTAPI defined elements and that these =
structures are used through out the entire architecture.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Spooler</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">For an embedded</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">solution</FONT><FONT SIZE=3D2 FACE=3D"Arial">, the =
spooler is basically a very limited data spooler or tempora</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">ry memory buffer for printing</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">data</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">It is important, even at this limited capability, to =
instantiate a scalable set of API</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Transform</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Transform can not include GhostScript or the</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">equivalent</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">post-script</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">interpreter</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">; it is simply too big for any real embedded =
solution.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">herefore, I suggest that the thin thread =
implementation have</FONT> <FONT SIZE=3D2 FACE=3D"Arial">a =
few</FONT><FONT SIZE=3D2 FACE=3D"Arial"> simple transform =
functions</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Convert</FONT><FONT SIZE=3D2 FACE=3D"Arial"> Color to =
Grey</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">ii.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Rotate Image 180 degrees</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iii.&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Scale (</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">up</FONT> <FONT SIZE=3D2 FACE=3D"Arial">and crop) =
image</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Device Discovery</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">A simple pol</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">l</FONT><FONT SIZE=3D2 FACE=3D"Arial">ing of the USB =
interface could be implemented</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">where</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">the =
printer USB identifier string is retrieve</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.</FONT> <FONT SIZE=3D2 FACE=3D"Arial">[</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">The identifier is then used to retrieve a PPD =
file or</FONT> <FONT SIZE=3D2 FACE=3D"Arial">equ</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ivalent printer description file</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> by the Capability Module.]</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">[optional]</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Poll</FONT> <FONT SIZE=3D2 FACE=3D"Arial">the</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">USB interface to retrieve the</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">P</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">rinter</FONT><FONT SIZE=3D2 FACE=3D"Arial">'</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> USB =
Identifier</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">ii.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">[optional] Store the Printer</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Identifier</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iii.&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Notify the Print Manager</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">of the printer</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iv.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Notify the Capability Module of the new =
printer</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Capability Module</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">T</FONT><FONT SIZE=3D2 FACE=3D"Arial">he PCAPI</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">will retrieve the printer</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s =
specific information and</FONT> <FONT SIZE=3D2 FACE=3D"Arial">put the =
information in term the current solution can utili</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ze.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Retrieve the Printer</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s description file =
based on the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">P</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">rinter</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"></FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Identifier</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">[</FONT><FONT SIZE=3D2 FACE=3D"Arial">Retrieve info =
directly from the printer will be considered out of scope for the thin =
thread activity.]</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">ii.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">[??</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">?</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Interpret data for the current =
solution</FONT><FONT SIZE=3D2 FACE=3D"Arial">.</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">What capabilities are support</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">ed</FONT><FONT SIZE=3D2 FACE=3D"Arial"> by the</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">application</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">How are the capabilities supported</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT> <FONT SIZE=3D2 FACE=3D"Arial">by the</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">application</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">iii.&nbsp;&nbsp;&nbsp;</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">Noti</FONT><FONT SIZE=3D2 FACE=3D"Arial">fy the =
Printer Manager of the Printer</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">'</FONT><FONT SIZE=3D2 FACE=3D"Arial">s =
Capabilities</FONT><FONT SIZE=3D2 FACE=3D"Arial">]</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Status Monitoring </FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Although the API for</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> this module is open source, the actual implementation, =
in general, will be printer vendor specific and, as such, may or may =
not be pu</FONT><FONT SIZE=3D2 FACE=3D"Arial">blic.</FONT>&nbsp;<FONT =
SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">herefore,</FONT> <FONT SIZE=3D2 FACE=3D"Arial">the =
recommendation here is to request one of the printer vendors to provide =
a</FONT> <FONT SIZE=3D2 FACE=3D"Arial">compiled implementation.</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">The OP architecture team should inves</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">tigate at</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">what level it is necessary to support</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">proprietary software and how.</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Example, can an IJS-like status monitoring interface be =
defined.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Details to</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">be</FONT> <FONT SIZE=3D2 FACE=3D"Arial">worked =
out.</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">10.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Driver</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">This is same</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">situation</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">as Status Monitoring I would make the =
same recommendation.</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"></FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> =
I</FONT><FONT SIZE=3D2 FACE=3D"Arial">n this case the</FONT><FONT =
SIZE=3D2 FACE=3D"Arial"> Vector-Driver will be used</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">, in part or whole, as the basis for a =
solution.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Details to</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">be</FONT> <FONT SIZE=3D2 FACE=3D"Arial">worked =
out.</FONT>
<BR><FONT SIZE=3D2 FACE=3D"Arial">11.&nbsp;&nbsp;&nbsp;&nbsp;</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">Print Channel Manager</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">T</FONT><FONT SIZE=3D2 FACE=3D"Arial">h</FONT><FONT =
SIZE=3D2 FACE=3D"Arial">e</FONT> <FONT SIZE=3D2 FACE=3D"Arial">PCM must =
be implemented as originally</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">conceived</FONT><FONT SIZE=3D2 FACE=3D"Arial">; that is, =
a vendor independent</FONT> <FONT SIZE=3D2 FACE=3D"Arial">I/O =
manager.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"></FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">The recommendation of the SC and Arch teams is =
that th</FONT><FONT SIZE=3D2 FACE=3D"Arial">e</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> initial version only support</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">s</FONT><FONT SIZE=3D2 FACE=3D"Arial"> =
USB.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> T</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">o</FONT> <FONT SIZE=3D2 FACE=3D"Arial">support status =
monitoring and the capabilities function</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> the USB I/O must be bidirectional.</FONT> </P>
<BR>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Next Steps</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">We must determine</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">How this work will =
be done/</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial"> before proceeding. </FONT>

<P ALIGN=3DLEFT><FONT SIZE=3D2 FACE=3D"Arial">Assuming we can</FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">defined a realistic</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">"</FONT><FONT SIZE=3D2 FACE=3D"Arial">how to do this =
work</FONT><FONT SIZE=3D2 FACE=3D"Arial">"</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">, then I believe the next couple of steps are</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Refine the</FONT> <FONT SIZE=3D2 FACE=3D"Arial">above =
outline to get</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">consensus</FONT><FONT SIZE=3D2 FACE=3D"Arial"> from the =
contributors</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">A</FONT><FONT SIZE=3D2 FACE=3D"Arial">ssigns each =
modules discussed above</FONT><FONT SIZE=3D2 FACE=3D"Arial"> to a =
specific individual</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Agree on the</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">development environment</FONT>
<BR><FONT SIZE=3D2 =
FACE=3D"Arial">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">As silly as it might seem, I actually do this in Window =
(using Visual C++ 6.0)</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">.&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 FACE=3D"Arial">The =
final code is moved to L</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">i</FONT><FONT SIZE=3D2 FACE=3D"Arial">nux</FONT> <FONT =
SIZE=3D2 FACE=3D"Arial">and confirmed to compile in =
run.</FONT>&nbsp;<FONT SIZE=3D2 FACE=3D"Arial"> U</FONT><FONT SIZE=3D2 =
FACE=3D"Arial">sing this</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">approach</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">general makes the code platform/solution =
independent.</FONT></P>

<P><FONT SIZE=3D2 =
FACE=3D"Arial">5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">Begin</FONT> <FONT SIZE=3D2 =
FACE=3D"Arial">development</FONT><FONT SIZE=3D2 FACE=3D"Arial"></FONT> =
<FONT SIZE=3D2 FACE=3D"Arial">of individual modules.</FONT>=20
</P>
<BR>

<P ALIGN=3DLEFT><A NAME=3D"_MailAutoSig"></A></P>

<P ALIGN=3DLEFT><B><I><FONT FACE=3D"Times New Roman">Rgds,<BR>
</FONT></I></B><B><I></I></B><B><I><FONT COLOR=3D"#0000FF" SIZE=3D5 =
FACE=3D"Times New Roman">Glen W. =
Petrie</FONT></I></B><B><I></I></B><B><I><FONT SIZE=3D5 FACE=3D"Times =
New Roman"><BR>
</FONT></I></B><B><I><FONT FACE=3D"Times New Roman">Epson Imaging =
Technology Center<BR>
2580 Orchard Parkway, Suite 200<BR>
San Jose, CA, 95131<BR>
Voice: 408.576.4131&nbsp; Fax: 408.474.0511 </FONT></I></B></P>

<P ALIGN=3DLEFT></P>

</BODY>
</HTML>
------_=_NextPart_001_01C77AD0.8EF0F708--

