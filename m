Message-ID: <40324262.5080108@easysw.com>
Date: Tue, 17 Feb 2004 11:33:38 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] PAPI status report [IPP System Admin
	issue]
References: <CFEE79A465B35C4385389BA5866BEDF00C753E@mailsrvnt02.enet.sharplabs.com>
In-Reply-To: <CFEE79A465B35C4385389BA5866BEDF00C753E@mailsrvnt02.enet.sharplabs.com>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-spool@freestandards.org, 'Norm Jacobs' <Norm.Jacobs@Sun.COM>, "Hastings, Tom N" <hastings@cp10.es.xerox.com>, "Zehler,
	Peter" <PZehler@crt.xerox.com>, "'carl@manros.com'" <carl@manros.com>, printing-architecture@freestandards.org, 'Harry Lewis' <harryl@us.ibm.com>

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

