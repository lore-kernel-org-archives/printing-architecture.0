Message-ID: <116DB56CD7DED511BC7800508B2CA53735CF99@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Thu, 24 Apr 2003 10:11:52 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] Summary of PWG Document Object issues
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

At today's FSG OP Architecture telecon, Claudia asked that I
send out a summary of recent issues for IPP Document object.
I used letters for the points below to avoid ambiguity with
the many email notes on the PWG PSI, SM, and IPP reflectors.


A) Print-by-reference authentication

   (IPP "Send-URI" <==> PSI "AddDocumentByReference")

   PWG PSI's design center is print-by-reference (a hand-held
   telling a PSI Print Service to print some document available
   on a Web or FTP server).  But the necessary authentication
   credentials to _access_ the referenced file's URL must also
   be available (or no security exists).  PSI actually sends
   these credentials (inside a TLS-secured session).  But, as
   Michael Sweet (CUPS) has pointed out:
   a1) Simple end-user impersonation (username/password) is
       fragile and the print server may accidentally expose
       the user's security info - a liability for the vendor.
   a2) Stronger certificate-based public key authentication
       (usually used in TLS-secured sessions) may fail because
       some certificates are only valid if used _from_ the end
       user's home system (as identified by an FQDN stored in
       the certificate and validated by DNS lookup for source
       IP address for the transaction).
   a3) Without Kerberos-style single-use "tickets" the delegation
       of end user credentials to an intermediate server is an
       unsolved software problem (existing solutions only work in
       certain not-widely-deployed middleware).

B) REQUIRED versus OPTIONAL operations and attributes

   PWG PSI/1.0 (now in working group 'last call') has only
   REQUIRED operations (including print-by-reference), but
   the IPP Document Object spec defines many operations and
   almost all Document Description attributes as OPTIONAL.
   This impacts any adoption of PSI by FSG PAPI, because
   interworking with IPP-based intermediate systems and
   printers will be degraded or will fail in some cases.

C) Flat-file registries needed for key Document attributes
   
   IPP Document object (based on input from PWG PSI and from
   CIP4 JDF people) adds to the base "document-format" (MIME
   type values) the parallel qualifier "document-format-versions"
   (with values like "PDF/1.4" and "PDF/is-1.0").  The operation
   of the PWG IPPFAX protocol (soon to enter 'last call') and
   of IPP-based Document operations _depends_ on the presence
   of "document-format-versions".  

   However, it remains to be settled whether the PWG will rent 
   space on a commercial server (to avoid burdening our current
   host Lexmark with a file that might be downloaded by many 
   clients) or the CIP4 will archive the file on their Web site.

   Several other attributes that can be present in the new
   "document-format-details" compound attribute also require
   registration of standard values, such as
   "document-source-application-version" ("MS Word 2000").

D) Breaking IPP Document object into two (or more) specs

   Dennis Carney (IBM) recently suggested a compromise solution
   of making _two_ specs:  one with only REQUIRED operations
   and attributes; and one with only OPTIONAL ones.  It turns
   out (per Tom Hastings) that the first spec would be _very_
   skinny.  Also, a whole bunch of important (but OPTIONAL) 
   Document attributes would be delayed in the second spec
   (expected to move more slowly through the adoption process).
   There really should be a third spec (again, per Tom H) that
   contains the Job-level operation extensions and attributes.

E) IPP/1.2

   Recently, Dennis Carney (IBM) observed that IPP Document
   object was starting to look a lot like "IPP/1.2".
   Michael Sweet suggested yesterday that perhaps we should
   be _writing_ an IPP/1.2 spec, and gathering up the numerous
   IPP extensions (several dozen) into one place (by reference,
   I hope) with a new set of conformance requirements.
   (I would collaborate on such a project, but I wouldn't
   take it on alone.)


Predications:

I predict that some part of IPP Document object will go to
working group 'last call' pretty soon because it's holding up
the release of both the PWG Semantic Model 1.0 (and schemas)
and PWG PSI/1.0 (and WSDL headers), both of which want full
Document object semantics in their content.

I also predict that some/most of the IPP Job-level extensions
and some/most of the "document-format-details" attributes will
be delayed much longer (months at least) by the process and also
by the bandwidth of the editors (basically Tom Hastings, with
some help from Dennis Carney and a few others).

Cheers,
- Ira McDonald
  High North Inc

