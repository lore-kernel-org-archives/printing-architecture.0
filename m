MIME-Version: 1.0
Date: Fri, 20 Aug 2010 16:46:50 -0400
Message-ID: <AANLkTin-fjRacR32f5hRbDLZKNQzYvzAXGvo+HCf8Byn@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Subject: [Printing-architecture] High North has comments on OP Vector API/1.0
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Printing-japan <printing-japan@lists.linux-foundation.org>, Ira McDonald <blueroofmusic@gmail.com>, "Petrie, Glen" <glen.petrie@eitc.epson.com>, Till Kamppeter <till.kamppeter@gmail.com>

Hi,                                              Friday (20 August 2010)

Here are my comments on the OPVP API/1.0 spec.  Note that I am proposing
higher conformance requirements (RECOMMENDED versus OPTIONAL) for
several sections.  All note the new Conformance Requirements,
Internationalization Considerations, and Security Considerations
sections that I am proposing.

Mihara-san and Toratani-san - please read the proposed changes carefully
and discuss along with Glen's and Till's comments at OP Japan meeting.

Cheers,
- Ira McDonald (Chair Open Printing WG)

------------------------------------------------------------------------

* Filename and path (for next September 2010 draft)
    - ftp://ftp.pwg.org/pub/pwg/openprinting/vector/
      opvp-api-v0100-2010[mmdd].pdf / odt / etc.

* Cover Page (page 1) - format
    - add header of "Version 1.0  OPVP API  September [dd] 2010"
    - add footer of "Copyright 2004-2010, Open Printing"
    - add Open Printing logo and cover page layout
    - delete "RC6", change date to "September [dd] 2010"
    - add "Status: Stable" to bottom of title lines

* Abstract (page 1) - summary
    - add to cover page

The Open Printing Vector Printer Driver Application Program Interface
(OPVP), defines a standard method for querying the graphics and printing
capabilities of installed printers and for printing graphical documents
to selected printers.

* 1.2 Conformance Terminologies (page 6) - English usage
    - change 'Terminologies' to 'Terminology'

* 1.3 Model Terminology (page 6) - insert new section

In this document, the following terms are used to describe the sequence
of OPVP API calls:

Caller:  A software application that invokes functions in the OPVP API
(see discussion in section 2 Introduction).

Driver:  A printer driver that receives function calls in the OPVP API
(see discussion in section 2 Introduction).

Inline both of these terms are usually lower case, e.g., "caller".

* 3.4 Color (page 9) - other color spaces
    - should we define Pantone Hexachrome or other 6-ink spaces?

* 4.3 Query Operations (page 17) - higher conformance
    - change OPTIONAL to RECOMMENDED

* 4.6 Path Operations (page 36) - higher conformance
    - change OPTIONAL to RECOMMENDED

* 4.7 Bitmap Image Operations (page 43) - higher conformance
    - change OPTIONAL to RECOMMENDED

* 4.9 Raster Image Operations (page 48) - higher conformance
    - change OPTIONAL to RECOMMENDED

* 6 Conformance Requiements (page 56) - insert new section

Conforming implementations of this OPVP API specification in libraries
and drivers:

    (1) MUST support all of the Printer Context operations defined in
        section 4.1;

    (2) MUST support all of the Job, Document, and Page operations
        defined in section 4.2;

    (3) SHOULD support all of the Query operations defined in
        section 4.3;

    (4) MUST support all of the Attributes defined in section 4.4;

    (5) MUST support a "updf" scheme for Attributes per section 4.4;

    (6) MAY support any of the Graphics State Object operations defined
        in section 4.5;

    (7) SHOULD support all of the Path operations defined in
        section 4.6;

    (8) SHOULD support all of the Bitmap Image operations defined in
        section 4.7;

    (9) MAY support any of the Scan Line operations defined in
        section 4.8;

    (10) SHOULD support all of the Raster Image operations defined in
        section 4.9;

    (11) MUST support all of the Raster Image operations defined in
        section 4.9, if neither Path nor Bitmap Image operations are
        supported;

    (12) MAY support any of the Stream Data operations defined in
        section 4.10;

    (13) MUST support all of the Macros, Types, Enumerations, and
        Structures defined in section 5.

* 7 Internationalization Considerations (page 56) - insert new section

The IETF Policy on Policy on Character Sets and Languages [RFC2277]
requires conforming network protocols and APIs to support the UTF-8
[RFC3629] encoding of Unicode [UNICODE] [ISO10646].

Conforming implementations of this specification:

    (a) MUST support UTF-8 as defined in [RFC3629]; and
    (b) SHOULD support Network Unicode as defined in [RFC5198], which
        requires transmission of well formed UTF-8 strings and
        recommends transmission of normalized UTF-8 strings in
        Normalization Form C (NFC) as defined in [UAX15].

Unicode NFC is defined as the result of performing Canonical
Decomposition (into base characters and combining marks) followed by
Canonical Composition (into canonical composed characters wherever
Unicode has assigned them).

WARNING - Performing normalization on UTF-8 string representations of
names received from OPVP API callers and subsequently storing the
results could cause false negatives in searches and failed access.

* 8 Security Considerations (page 56) - insert new section

There are no applicable security considerations for this OPVP API.  Note
that Remote Procedure Call implementations of this OPVP API will need to
address the usual network security considerations.

------------------------------------------------------------------------
