Message-ID: <116DB56CD7DED511BC7800508B2CA53735D07F@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 27 Jun 2003 12:06:50 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: SM> PWG Semantic Model Schema v0.95 posted (Correction)
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: printing-architecture@freestandards.org

Hi folks,

Below is Pete Zehler's announcement of the v0.95 set of XML schemas
that make up the latest version of the PWG Semantic model.

Cheers,
- Ira McDonald

-----Original Message-----
From: Zehler, Peter [mailto:PZehler@crt.xerox.com]
Sent: Friday, June 27, 2003 2:49 PM
To: PWG Semantic Model WG (sm@pwg.org)
Subject: SM> PWG Semantic Model Schema v0.95 posted (Correction)


All,
Below is the correct announcement for the PWG Semantic Model Schema.  The
only two differences are the link to Local-0-95.zip has been fixed and the
schemas in the zip file now have the appropriate namespace.  (Sorry about
that Bob)  
Pete


All,
I have posted the PWG Schema v0.95 to the PWG website.  Please let me know
if you find any problem.  I have only had time to make the edits and check
the schema with XMLSPY v5.4.   I got a new system while I was in Portland
and have not yet put my development environment back together.  I do not
expect the structure of the schema to change.  There may be minor changes to
element/value names or a limited set of additions/deletions mostly
associated with the JobX specification.  We will determine the best way to
handle these updates at a later time.
There are 2 valid "views" of the PWG schema.  These schemas include the
subschema below.  By including all the required schema these two schema are
valid.   The first is flat and the second hierarchical.  
http://www.pwg.org/schemas/sm/0.95/PwgCommon.xsd
http://www.pwg.org/schemas/sm/0.95/PwgSemanticModel.xsd
The following schemas describe the Printer.  Note that they are not
individually valid.  Documentation in each schema lists the dependency each
has on other schema.  
http://www.pwg.org/schemas/sm/0.95/Printer.xsd
http://www.pwg.org/schemas/sm/0.95/PrinterDescription.xsd
http://www.pwg.org/schemas/sm/0.95/PrinterStatus.xsd
http://www.pwg.org/schemas/sm/0.95/ProcessingActual.xsd
http://www.pwg.org/schemas/sm/0.95/ProcessingDefault.xsd
http://www.pwg.org/schemas/sm/0.95/ProcessingReady.xsd
http://www.pwg.org/schemas/sm/0.95/ProcessingSupported.xsd
The following schemas describe the Job.  Note that they are not individually
valid.  Documentation in each schema lists the dependency each has on other
schema.  
http://www.pwg.org/schemas/sm/0.95/Job.xsd
http://www.pwg.org/schemas/sm/0.95/JobDescription.xsd
http://www.pwg.org/schemas/sm/0.95/JobProcessing.xsd
http://www.pwg.org/schemas/sm/0.95/JobStatus.xsd


The following schemas describe the Document.  Note that they are not
individually valid.  Documentation in each schema lists the dependency each
has on other schema.
http://www.pwg.org/schemas/sm/0.95/Document.xsd
http://www.pwg.org/schemas/sm/0.95/DocumentDescription.xsd
http://www.pwg.org/schemas/sm/0.95/DocumentProcessing.xsd
http://www.pwg.org/schemas/sm/0.95/DocumentStatus.xsd
The following schemas describe the Media.  
http://www.pwg.org/schemas/sm/0.95/MediaElements.xsd
http://www.pwg.org/schemas/sm/0.95/MediaWellKnownValues.xsd
The following schemas describe the types and elements common to Printers,
Jobs and Documents.  Note that PwgCommon.xsd individually valid.  It has a
dependency on MediaElements.xsd.
http://www.pwg.org/schemas/sm/0.95/PwgCommon.xsd
http://www.pwg.org/schemas/sm/0.95/PwgWellKnownValues.xsd
For those of you that use XMLSPY, here is a project file for v0.95.
http://www.pwg.org/schemas/sm/0.95/PwgSemanticModel095.spp
I've also included a local version of the schema.  In this version each
schema includes the necessary files and is valid.
http://www.pwg.org/schemas/sm/0.95/Local-0-95.zip
Though not part of the schema, I've included a master list of complex types
and elements.
http://www.pwg.org/schemas/sm/0.95/MasterListOfPwgSemanticElements.xsd


Peter Zehler
XEROX
Xerox Innovation Group
Email: PZehler@crt.xerox.com
Voice:    (585) 265-8755
FAX:      (585) 422-7961
US Mail: Peter Zehler
        Xerox Corp.
        800 Phillips Rd.
        M/S 128-25E
        Webster NY, 14580-9701




Peter Zehler
XEROX
Xerox Innovation Group
Email: PZehler@crt.xerox.com
Voice:    (585) 265-8755
FAX:      (585) 422-7961
US Mail: Peter Zehler
        Xerox Corp.
        800 Phillips Rd.
        M/S 128-25E
        Webster NY, 14580-9701

