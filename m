Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C76C1@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Tue, 11 May 2004 08:05:04 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: PWG> Posted draft PWG Simple Job Ticket
	[10 May 2004]
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

Hi,

Below is a link to recent work in the PWG to develop a
string-encoded PWG Simple Job Ticket (not XML-encoded),
that uses a simple 'key=value' format for attributes 
(see the example at the end below).

Because the element names and semantics are imported
verbatim from the PWG Semantic Model/1.0 and schema,
the mapping to and from FSG Print Driver and JTAPI
interfaces is already documented in the IPP/JTAPI
Mapping table (developed by Tom Hastings and Claudia
Alimpich).

Note, that it would be possible to write a _very_ compact
backend for a JTAPI/1.0 library that reads/writes PWG Simple
Job Ticket format (either as reference or sample code).

Please send comments to this FSG Architecture list.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: McDonald, Ira [mailto:imcdonald@sharplabs.com]
Sent: Monday, May 10, 2004 2:07 PM
To: 'pwg@pwg.org'
Cc: 'Nagasaka Fumio'
Subject: PWG> Posted draft PWG Simple Job Ticket [10 May 2004]


Hi folks,                                           Monday (10 May 2004)

[For review at the next PWG face-to-face meeting in Vancouver, BC,
during the Consumer Electronice BOF on Thursday (27 May 2004)]


I have just posted an initial draft of a non-XML, string-encoded 
PWG Simple Job Ticket at:

    ftp://ftp.pwg.org/pub/pwg/BOFs/ce/tb-cesjt10-20040510.htm

Please read the SJT/1.0 example in Appendix D (see below) and the brief
ABNF in Appendix C before reading the body of this document.

Please send comments to the 'pwg@pwg.org' mailing list.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com


[PS - Jerry - I cut and pasted the cover page style and boilerplate from
Harry's most recent PWG Process 2.0 draft - please point out any errors
- the boldface didn't cut and paste in titles such as 'About IEEE' and
the PWG graphic isn't there - those will come in an MS Word-based draft]

[PPS - I created a subdirectory 'ce' under '/pub/pwg/BOFs' for CE stuff]

------------------------------------------------------------------------
[example SJT/1.0 JobTicket instance, excerpted from Appendix D]

.pwg:JobTicket              -- begin job ticket
101="sjt10"                 -- type and version
155="201,252"               -- media and finishings on job mandatory
156="vnd,http://example.com/sjt-namespace.txt" -- Vendor ABNF

.pwg:Job                    -- begin job
201="iso_a4_210x297mm"      -- ISO A4 letter
251=3                       -- 3 copies of this job
252="4,6"                   -- staple and cover finishings on job
vnd:251=50                  -- vendor extension 'JobZoom'

.pwg:Document               -- begin document
301=202                     -- JPEG document format
302="http://example.com/pictures/778.jpg"    -- document URI
355="Bermuda Sunset"        -- document name
vnd:351=3                   -- vendor extension 'DocumentSharpening'
./pwg:Document              -- end document
./pwg:Job                   -- end job
./pwg:JobTicket             -- end job ticket

------------------------------------------------------------------------

_______________________________________________
printing-jobticket mailing list
printing-jobticket@mail.freestandards.org
http://mail.freestandards.org/mailman/listinfo/printing-jobticket

