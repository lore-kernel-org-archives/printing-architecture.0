Message-ID: <116DB56CD7DED511BC7800508B2CA537B00333@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 30 Jan 2004 12:43:28 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: PWG-ANNOUNCE> PWG Semantic Model Schema
	v1.0 Announcement
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

Hi,

The PWG Schema v1.0 is the XML schema that implements the PWG
Semantic Model (PWG 5105.1-2004) just published.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com 


-----Original Message-----
From: Zehler, Peter [mailto:PZehler@crt.xerox.com]
Sent: Friday, January 30, 2004 9:56 AM
To: PWG Announce (pwg-announce@pwg.org)
Subject: PWG-ANNOUNCE> PWG Semantic Model Schema v1.0 Announcement


All,
The PWG Schema v1.0 has been approved by the PWG.  The vote was 10 for, 0
against and 0 abstain. The schema is associated with the "IEEE-ISTO PWG
Candidate Standard 5105.1-2004 - PWG Semantic Model" Candidate Standard
specification.
The schema is published on the PWG's Semantic Model page
http://www.pwg.org/sm and in the PWG Schema directory for version 1.0 of the
Semantic Model  <http://www.pwg.org/schemas/sm/1.0/>   
The namespace for the schema is http://www.pwg.org/schemas/sm/1.0/ 
Below are the schema files that constitute the WPW Semantic Model Schema
v1.0
Thanks to all who participated in the Semantic Model and the Schema work,
Pete


There are 2 valid "views" of the PWG schema.  These schemas include the
subschema below.  By including every required schema these two schemas are
valid.   The first is a flat view and the second is a hierarchical view.  
http://www.pwg.org/schemas/sm/1.0/PwgCommon.xsd 
http://www.pwg.org/schemas/sm/1.0/PwgSemanticModel.xsd 
The following schemas describe the Printer.  Note that they are not
individually valid.  Documentation in each schema lists the dependency each
has on other schema.  
http://www.pwg.org/schemas/sm/1.0/Printer.xsd
http://www.pwg.org/schemas/sm/1.0/PrinterDescription.xsd
http://www.pwg.org/schemas/sm/1.0/PrinterStatus.xsd
http://www.pwg.org/schemas/sm/1.0/ProcessingActual.xsd
http://www.pwg.org/schemas/sm/1.0/ProcessingDefault.xsd
http://www.pwg.org/schemas/sm/1.0/ProcessingReady.xsd
http://www.pwg.org/schemas/sm/1.0/ProcessingSupported.xsd
The following schemas describe the Job.  Note that they are not individually
valid.  Documentation in each schema lists the dependency each has on other
schema.  
http://www.pwg.org/schemas/sm/1.0/Job.xsd
http://www.pwg.org/schemas/sm/1.0/JobDescription.xsd
http://www.pwg.org/schemas/sm/1.0/JobProcessing.xsd
http://www.pwg.org/schemas/sm/1.0/JobStatus.xsd
The following schemas describe the Document.  Note that they are not
individually valid.  Documentation in each schema lists the dependency each
has on other schema.
http://www.pwg.org/schemas/sm/1.0/Document.xsd
http://www.pwg.org/schemas/sm/1.0/DocumentDescription.xsd
http://www.pwg.org/schemas/sm/1.0/DocumentProcessing.xsd
http://www.pwg.org/schemas/sm/1.0/DocumentStatus.xsd
The following schemas describe the Media.  
http://www.pwg.org/schemas/sm/1.0/MediaElements.xsd
http://www.pwg.org/schemas/sm/1.0/MediaWellKnownValues.xsd
The following schemas describe the types and elements common to Printers,
Jobs and Documents.  Note that PwgCommon.xsd individually valid.  It has a
dependency on MediaElements.xsd.
http://www.pwg.org/schemas/sm/1.0/PwgCommon.xsd
http://www.pwg.org/schemas/sm/1.0/PwgWellKnownValues.xsd
For those of you that use XMLSPY, here is a project file for "1.0".
http://www.pwg.org/schemas/sm/1.0/PwgSemanticModelSchema_1.0.spp
Though not part of the schema, I've included a master list of complex types
and elements.
http://www.pwg.org/schemas/sm/1.0/MasterListOfPwgSemanticElements.xsd




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

