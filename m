Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C77B3@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Sun, 18 Jul 2004 09:59:03 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: IPP> Revised IPP Admin Ops
	<draft-ietf-ipp-ops-set2-04.txt>
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

Norm - for consideration in PAPI/1.0 updates.

Our latest IETF Applications Area Director (Scott Hollenbeck)
has recently pushed through the three IPP notifications specs
to 'approved by IESG for Proposed Standard RFC' status.

And he's helping get this _last_ IPP spec in the IETF IPP WG
through, with minor additional cautions about security.

Tom Hastings has just sent this to the I-D editor (see below).

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: owner-ipp@pwg.org [mailto:owner-ipp@pwg.org]On Behalf Of Hastings,
Tom N
Sent: Saturday, July 17, 2004 11:32 PM
To: ipp@pwg.org
Subject: IPP> Revised IPP Job and Printer Administrative Operations
<draft-ietf -ipp-ops-set2-04.txt>


I submitted the updated Internet-Draft Internet Printing Protocol (IPP): Job
and Printer Administrative Operations, draft-ietf-ipp-ops-set2-04.txt with
the updated Security Considerations that Ira and I worked out following the
guidance from Kurt D. Zeilenga.  I've up-loaded the usual versions to the
PWG site:

ftp://ftp.pwg.org/pub/pwg/ipp/new_OPS/draft-ietf-ipp-ops-set2-04.txt
ftp://ftp.pwg.org/pub/pwg/ipp/new_OPS/ipp-ops-set2-04-040715-rev.doc
ftp://ftp.pwg.org/pub/pwg/ipp/new_OPS/ipp-ops-set2-04-040715-rev.pdf
ftp://ftp.pwg.org/pub/pwg/ipp/new_OPS/ipp-ops-set2-04-040715.doc
ftp://ftp.pwg.org/pub/pwg/ipp/new_OPS/ipp-ops-set2-04-040715.pdf
ftp://ftp.pwg.org/pub/pwg/ipp/new_OPS/ipp-ops-set2-04-040715.txt

Tom

 -----Original Message-----
From: 	Hastings, Tom N  
Sent:	Saturday, July 17, 2004 19:59
To:	Internet-Drafts@ietf.org
Cc:	Hastings, Tom; Manros, Carl-Uno
Subject:	Revised draft-ietf-ipp-ops-set2-04.txt

Please find enclosed an updated Internet-Draft from the IPP WG.  It is
intended for standards track.  It replaces the previous version that Scott
Hollenbeck, our area director, has reviewed and has requested that the
Security Considerations section be improved.  He contacted Kurt D. Zeilenga
who made some security suggestions to us.  The updated I-D incorporates
Security Considerations improvements, plus the new IPR Notice section at the
end and the IPR Declaration in the Status of this Memo section up front.

This draft is a work item of the Internet Printing Protocol Working Group of
the IETF.

Title:  Internet Printing Protocol (IPP): Job and Printer Administrative
Operations

Abstract

   This document specifies the following 16 additional OPTIONAL system
   administration operations for use with the Internet Printing
   Protocol/1.1 (IPP) [RFC2910, RFC2911]:

    Printer operations:                       Job operations:
    Enable-Printer and Disable-Printer        Reprocess-Job
    Pause-Printer-After-Current-Job           Cancel-Current-Job
    Hold-New-Jobs and Release-Held-New-Jobs   Suspend-Current-Job
    Deactivate-Printer and Activate-Printer   Resume-Job
    Restart-Printer                           Promote-Job
    Shutdown-Printer and Startup-Printer      Schedule-Job-After
     plus a few associated attributes, values, and status codes and
     using the IPP Printer object to manage printer fan-out and fan-in.

Thank you,
Tom Hastings
Editor for this Internet-Draft

<draft-ietf-ipp-ops-set2-04.txt>


-----Original Message-----
From: Internet Draft Submission Manager [mailto:no-reply@ietf.org]
Sent: Saturday, July 17, 2004 20:03
To: Hastings, Tom N
Subject: [Auto Response] Revised draft-ietf-ipp-ops-set2-04.txt

Greetings:

This message is being sent to acknowledge receipt of your Internet-Draft
submission or message to internet-drafts@ietf.org.  The pre-meeting cutoff
date for new documents (i.e., version -00 Internet-Drafts) was Monday, July
12 at 9:00 AM Eastern Time.

If you submitted either a version -00 document, or an update to a version
-00 document that was initially submitted after the cutoff date, then your
document will NOT be processed or retained.  Please resubmit your document
on or after Monday, August 9.

If you submitted an update to an Internet-Draft that was initially submitted
prior to the cutoff date, then your document will be posted on the
Internet-Drafts page of the IETF Web site, and an I-D Action message will be
sent to the I-D Announce List.

As you may be aware, the pre-meeting cutoff date for final submissions is
Monday, July 19 at 9:00 AM Eastern Time.  Since the Secretariat receives a
large number of Internet-Drafts in the week preceding the cutoff date for
final submissions, your document may not be processed and announced for a
number of days.  Our goal is to process and announce all valid
Internet-Draft submissions by Friday, July 23 at the latest.

Please note that all Internet-Drafts offered for publication as RFCs must
conform to the requirements specified in the ID-Checklist
(http://www.ietf.org/ID-Checklist.html) or they will be returned to the
author(s) for revision.  Therefore, the IETF Secretariat strongly recommends
that you address all of the issues raised in this document before submitting
a request to publish your Internet-Draft to the IESG.

The IETF Secretariat



