Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C753E@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] PAPI status report [IPP System Admin 
	issue]
Date: Tue, 17 Feb 2004 07:57:15 -0800
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: 'Norm Jacobs' <Norm.Jacobs@Sun.COM>, printing-architecture@freestandards.org, printing-spool@freestandards.org, 'Michael Sweet' <mike@easysw.com>
Cc: "'carl@manros.com'" <carl@manros.com>, "Hastings,
	Tom N" <hastings@cp10.es.xerox.com>, "Zehler,
	Peter" <PZehler@crt.xerox.com>, 'Harry Lewis' <harryl@us.ibm.com>

Hi Norm,

We have a problem looming on the horizon for PAPI.

Here's an excerpt from your PAPI monthly status:

"Moving forward

	* Take feedback on v0.91 of PAPI spec and incorporate it into a new
	  draft.

	* Work on draft interface additions for Administration and Document
	  interfaces for next draft. (review via email through
printing-spool
	  list)"

After recent discussions with Carl-Uno Manros (IETF IPP WG chair)
and Tom Hastings (primary IPP editor), we've decided to abandon
the IPP System Admin spec (draft-ietf-ipp-ops-set2-03.txt) as
an IETF 'standards track' RFC.

Rationale:  If IPP System Admin spec is published as an IETF
Proposed Standard, it's implied that it will be implemented
and interop tested.  But (except for CUPS??) there are no
announced implementations.

Background:  The IESG is again closing down older WGs.  Carl-Uno
wants to move any remaining IPP specs to IEEE/ISTO PWG if possible.
The IPP notifications specs have been abandoned in the IETF.  
PWG WBMM is designing a simpler subset over SOAP in XML schema.  
PWG WBMM is also designing a SOAP-based set of system admin
operations equivalent to former IPP System Admin in XML schema.


Michael Sweet - has CUPS implemented some/all of the IPP System
Admin extension operations?


Comments?

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: Norm Jacobs [mailto:Norm.Jacobs@Sun.COM]
Sent: Monday, February 16, 2004 11:41 PM
To: printing-architecture@freestandards.org;
printing-spool@freestandards.org
Subject: [Printing-architecture] PAPI status report



PAPI status can be found at

ftp://ftp.pwg.org/pub/pwg/fsg/status_reports/PAPI_WG_Status_13Feb2004.txt


		-Norm

_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

