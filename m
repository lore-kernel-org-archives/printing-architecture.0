Message-ID: <116DB56CD7DED511BC7800508B2CA537B002B2@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Wed, 10 Dec 2003 08:08:28 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: PWG-ANNOUNCE> Formal Vote on PWG SM Schema [ends 8 Jan 2004]
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

Hi,

Below is the announced Formal Vote on PWG Semantic Model
Schema/1.0 (updated with a complete list of the IANA
Charset Registry "preferred MIME" names for every charset
that I just extracted).

Vote ends on 8 January 2004.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com
 
-----Original Message-----
From: Zehler, Peter [mailto:PZehler@crt.xerox.com]
Sent: Wednesday, December 10, 2003 10:12 AM
To: PWG Announce (pwg-announce@pwg.org)
Cc: 'a.s.patel@ieee.org'; Zehler, Peter
Subject: PWG-ANNOUNCE> Formal Vote on the Schema for the PWG Semantic Model 


Greetings: 
The "PWG Semantic Model Schema" has completed Last Call with no open issues.
Therefore I am submitting the schema for PWG approval by FORMAL VOTE. 
This schema is composed of many files that collectively define the PWG
Semantic Model Schema.   They are available at the PWG Semantic Model web
page under the "Documents" section in a section titled "Semantic Model
Schema: Latest Version" (See  http://www.pwg.org/sm )   Included at the end
of this note are the links to the PWG Semantic Model Schema.
Note that one edit is outstanding:
1)      Use PWG approved namespace. (Will be resolved under separate cover)
Send votes (one per company) to the ISTO in care of Ami Patel and please
copy me. 
a.s.patel@ieee.org
pzehler@crt.xerox.com 
Voting ends at 5PM EDT on 8 January 2004. 
Peter Zehler/Chairman Semantic Model WG  


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
Complete Schema:
Semantic Model (hierarchical relationship between objects)
http://www.pwg.org/schemas/sm/latest/PwgSemanticModel.xsd 
Semantic Model Objects (flat list of objects)
http://www.pwg.org/schemas/sm/latest/PwgObjects.xsd
Common and Media definitions and declarations:
        PWG Common Elements and Types
                http://www.pwg.org/schemas/sm/latest/PwgCommon.xsd
        Well Known Values for Common Elements
                http://www.pwg.org/schemas/sm/latest/PwgWellKnownValues.xsd
        Media Elements
                http://www.pwg.org/schemas/sm/latest/MediaElements.xsd
        Well Known Values for Media
 
http://www.pwg.org/schemas/sm/latest/MediaWellKnownValues.xsd
Printer:
        Printer Object
                http://www.pwg.org/schemas/sm/latest/Printer.xsd
        Printer Status
                http://www.pwg.org/schemas/sm/latest/PrinterStatus.xsd
        Printer Description
                http://www.pwg.org/schemas/sm/latest/PrinterDescription.xsd
        Processing Supported
                http://www.pwg.org/schemas/sm/latest/ProcessingSupported.xsd
        Processing Ready
                http://www.pwg.org/schemas/sm/latest/ProcessingReady.xsd
        Processing Default
                http://www.pwg.org/schemas/sm/latest/ProcessingDefault.xsd
Job:
        Job Object
                http://www.pwg.org/schemas/sm/latest/Job.xsd
        Job Status
                http://www.pwg.org/schemas/sm/latest/JobStatus.xsd
        Job Description
                http://www.pwg.org/schemas/sm/latest/JobDescription.xsd
        Job Processing
                http://www.pwg.org/schemas/sm/latest/JobProcessing.xsd
        Document Processing
                http://www.pwg.org/schemas/sm/latest/DocumentProcessing.xsd
        Processing Actual
                http://www.pwg.org/schemas/sm/latest/ProcessingActual.xsd
Document:
        Document Object
                http://www.pwg.org/schemas/sm/latest/Document.xsd
        Document Status
                http://www.pwg.org/schemas/sm/latest/DocumentStatus.xsd
        Document Description
                http://www.pwg.org/schemas/sm/latest/DocumentDescription.xsd
        Document Processing (same as Job's)
                http://www.pwg.org/schemas/sm/latest/DocumentProcessing.xsd
        Processing Actual (same as Job's)
                http://www.pwg.org/schemas/sm/latest/ProcessingActual.xsd
        
Note that only the last three changes in the Schema Change Log
(http://www.pwg.org/schemas/sm/latest/Schema-Changes.pdf ) apply to the
changes from 0.97 to 0.98.  Specifically these changes were to simplify the
patterns used in MediaNsExtensionPattern and MediaSizeNameExtensionPattern,
add CharacterRepertoireSupported, and add a complete list of Charset value
enumerations.

