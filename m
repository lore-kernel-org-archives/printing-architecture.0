Message-ID: <116DB56CD7DED511BC7800508B2CA53735CE94@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Fri, 24 Jan 2003 12:26:35 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: PS> RFC 3470 (BCP 70) Guidelines for use of XML in IETF Proto
 cols
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


-----Original Message-----
From: McDonald, Ira [mailto:imcdonald@sharplabs.com]
Sent: Thursday, January 23, 2003 3:23 PM
To: 'ps@pwg.org'; 'ipp@pwg.org'
Subject: PS> RFC 3470 (BCP 70) Guidelines for use of XML in IETF
Protocols


Hi folks,

Excellent reading.

    ftp://ftp.isi.edu/in-notes/rfc3470.txt

I particularly enjoyed the discussion of XML validation using
ISO SGML DTD, W3C XML Schema, and OASIS RELAX-NG in section 4.7.

Cheers,
- Ira McDonald
  High North Inc
----------------------------------
[excerpts from RFC 3470]

Abstract

   The Extensible Markup Language (XML) is a framework for structuring
   data.  While it evolved from Standard Generalized Markup Language
   (SGML) -- a markup language primarily focused on structuring
   documents -- XML has evolved to be a widely-used mechanism for
   representing structured data.

   There are a wide variety of Internet protocols being developed; many
   have need for a representation for structured data relevant to their
   application.  There has been much interest in the use of XML as a
   representation method.  This document describes basic XML concepts,
   analyzes various alternatives in the use of XML, and provides
   guidelines for the use of XML within IETF standards-track protocols.

Table of Contents

   Conventions Used In This Document  . . . . . . . . . . . . . . . .  2
   1.    Introduction and Overview  . . . . . . . . . . . . . . . . .  2
         1.1   Intended Audience. . . . . . . . . . . . . . . . . . .  3
         1.2   Scope  . . . . . . . . . . . . . . . . . . . . . . . .  3
         1.3   XML Evolution  . . . . . . . . . . . . . . . . . . . .  3
         1.4   XML Users, Support Groups, and Additional
               Information. . . . . . . . . . . . . . . . . . . . . .  4
   2.    XML Selection Considerations . . . . . . . . . . . . . . . .  4
   3.    XML Alternatives . . . . . . . . . . . . . . . . . . . . . .  5
   4.    XML Use Considerations and Recommendations . . . . . . . . .  7
         4.1   XML Syntax and Well-Formedness . . . . . . . . . . . .  7
         4.2   XML Information Set  . . . . . . . . . . . . . . . . .  7
         4.3   Syntactic Restrictions . . . . . . . . . . . . . . . .  8
         4.4   XML Declarations . . . . . . . . . . . . . . . . . . .  9
         4.5   XML Processing Instructions  . . . . . . . . . . . . .  9
         4.6   XML Comments . . . . . . . . . . . . . . . . . . . . . 10
         4.7   Validity and Extensibility . . . . . . . . . . . . . . 10
         4.8   Semantics as Well as Syntax. . . . . . . . . . . . . . 12
         4.9   Namespaces . . . . . . . . . . . . . . . . . . . . . . 12
               4.9.1 Namespaces and Attributes. . . . . . . . . . . . 13
         4.10  Element and Attribute Design Considerations. . . . . . 14
         4.11  Binary Data and Text with Control Characters . . . . . 16
         4.12  Incremental Processing . . . . . . . . . . . . . . . . 16
         4.13  Entity Declarations and Entity References  . . . . . . 16
         4.14  External References  . . . . . . . . . . . . . . . . . 17
         4.15  URI Processing . . . . . . . . . . . . . . . . . . . . 17
         4.16  White Space  . . . . . . . . . . . . . . . . . . . . . 18
         4.17  Interaction with the IANA  . . . . . . . . . . . . . . 19
   5.    Internationalization Considerations  . . . . . . . . . . . . 19
         5.1   Character Sets and Encodings . . . . . . . . . . . . . 19
         5.2   Language Declaration . . . . . . . . . . . . . . . . . 20
         5.3   Other Internationalization Considerations  . . . . . . 20
   6.    IANA Considerations  . . . . . . . . . . . . . . . . . . . . 21
   7.    Security Considerations  . . . . . . . . . . . . . . . . . . 21
   8.    Acknowledgements . . . . . . . . . . . . . . . . . . . . . . 22
   9.    Normative References . . . . . . . . . . . . . . . . . . . . 22
   10.   Informative References . . . . . . . . . . . . . . . . . . . 23
   11.   Authors' Addresses . . . . . . . . . . . . . . . . . . . . . 27
   12.   Full Copyright Statement . . . . . . . . . . . . . . . . . . 28

