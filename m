Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C753F@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] PAPI status report [IPP System Admin 
	issue]
Date: Tue, 17 Feb 2004 09:38:54 -0800
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
To: 'Michael Sweet' <mike@easysw.com>, "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-spool@freestandards.org, 'Norm Jacobs' <Norm.Jacobs@Sun.COM>, "Hastings, Tom N" <hastings@cp10.es.xerox.com>, "Zehler,
	Peter" <PZehler@crt.xerox.com>, "'carl@manros.com'" <carl@manros.com>, printing-architecture@freestandards.org, 'Harry Lewis' <harryl@us.ibm.com>

Hi,

I've just spoken with Harry Lewis (IBM) and Tom Hastings (Xerox)
about this IPP System Admin spec (they are co-authors, along with
Carl Kugler, IBM).

We think we should do a PWG IPP System Admin spec as _one_ spec,
but delete or fix any 'broken' operations (see below).

If we leave this spec on the IETF 'standards track', it will be 
late 2005 at the earliest before it's published as an RFC (the
typical delay for a no-issues spec is 18 months at present).

If we move it to IEEE/ISTO PWG, it can be taken to 'last call'
within a month or two (it already _passed_ an IETF IPP WG 'last
call').  Tom has already made the (trivial) security changes
requested by Ned Free (our IETF Applications Area Director)
in summer 2001.  I've found other minor typos (and sent them
to Tom).

We need a volunteer to be principal editor of the PWG conversion
of the spec (into IEEE/ISTO format in MS Word).  I would volunteer
to be co-editor.  Because of issues such as Michael raises below, 
a few operations must be deleted or fixed (new parameters or new
state reasons).

If this spec rapidly advanced, then PWG WBMM (which has XML
schema for most of these operations) could continue to have
Normative references to the IPP operation semantics.

Cheers,
- Ira 


Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com


-----Original Message-----
From: Michael Sweet [mailto:mike@easysw.com]
Sent: Tuesday, February 17, 2004 11:34 AM
To: McDonald, Ira
Cc: 'Norm Jacobs'; printing-architecture@freestandards.org;
printing-spool@freestandards.org; Hastings, Tom N; 'carl@manros.com';
Zehler, Peter; 'Harry Lewis'
Subject: Re: [Printing-architecture] PAPI status report [IPP System
Admin issue]


McDonald, Ira wrote:
> ...
> Michael Sweet - has CUPS implemented some/all of the IPP System
> Admin extension operations?

CUPS has implemented some of the operations (in most cases using
our own extension operations, since the CUPS ops came first) since
v1.0; here is a quick table:

      Admin Spec Op                        CUPS Op
      -----------------------------------  -----------------------
      Enable-Printer                       CUPS-Accept-Jobs
      Disable-Printer                      CUPS-Reject-Jobs
      Pause-Printer-After-Current-Job      N/A *
      Hold-New-Jobs                        N/A *
      Release-Held-New-Jobs                N/A *
      Deactivate-Printer                   N/A
      Activate-Printer                     N/A
      Restart-Printer                      N/A
      Shutdown-Printer                     N/A
      Startup-Printer                      N/A
      Reprocess-Job                        N/A **
      Cancel-Current-Job                   Cancel-Job with job-id=0
      Suspend-Current-Job                  N/A
      Resume-Job                           N/A
      Promote-Job                          N/A *
      Schedule-Job-After                   N/A *

      * = planned for future CUPS releases
      ** = planned for future CUPS releases, similar to Restart-Job

FWIW, the Hold-New-Jobs and Release-Held-New-Jobs operations are
somewhat problematic in the current definitions, since there is
no "job-admin-held" job-state-reasons value or "admin"
job-hold-until value to differentiate between a user-held job and
a job that is held via Hold-New-Jobs.  That makes implementation
of Release-Held-New-Jobs somewhat challenging and makes it
impossible for an admin to know which jobs will be released.

In any case, the current spec covers both admin and operator
operations for both printers and jobs, so it might be useful
to break it up into functional documents published by the PWG
instead...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Printing Software for UNIX                       http://www.easysw.com

