Message-ID: <4AA9FCC3.3050200@gmail.com>
Date: Fri, 11 Sep 2009 09:31:15 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] OpenPrinting Japan Aug. 2009 meeting minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I am forwarding the translation of the minutes of the last OpenPrinting 
Japan meeting from Mihara-san.

    Till

----------------------------------------------

==========
Date/Place
==========
August 28, 2009 14:30-15:50 @ The Linux Foundation Japan Meeting Room

==========
Attendee
==========
Kunai (TLF), Olaf (Aasys), Otani (BBR), Kanjo (BBR), Chigusa (Ricoh),
Toratani (Canon), Mihara (Fuji Xerox), Miyata (Canon), Saitou (NEC Soft)

==========
Agenda
==========
- CPD Status Update Review and Demo
- Feedback to next OP US/EU/JP phone meeting
- Vector Driver Spec 1.0 Approval process

==========
CPD
==========
- Saito-san makes a CPD demo from latest (?) source.  (may need to
confirm if it is really a latest)

  　　http://bzr.openprinting.org/misc/common-printing-dialog

OPINIONS/PROBLEMS/COMMENTS/QUESTIONS:::

- Many items are put into a place togather.  Some items may be hidden
and need to scroll to exposure them. (Mihara)

- Although there is a place to show the application name, but there
seems to be NO API to inform the app name. (Otani)

- May need to apply CPD to major applications to gather public comments
about the usability. (Mihara) ...  (GSoC work may contains integration
of CPD to applications??? (Saitou))

- Will the CPD inplementaion be improved to comply CPD specification ???

- "Preview" has been implemented.

- There was a discussion on "CPD should follow JTAPI terms.
    --> End users may not be able to understand JTAPI terms.

- N-UP: How is it processed??? (Toratani)
   If pdftopdf makes n-up process, Preview image does not present the
exact print out.  Need to check how it is implemented. (Otani)

- CPD should utilize CUPS and Driver functions as much as possible.  For
example, "copies" process are tend to be problem if upper part
(application and printing system) processes it (it means it should be
processed in the driver or device.) (Chigusa)
   ---> In CUPS, processes, eg. n-up, are done in upper layer.  It may be
difficult to cancel it in order to do them in the device side. (otani)

==========================================
Feedback to next OP US/EU/JP phone meeting
==========================================
We will input the feedback on CPD.

==========================================
Vector Driver Spec 1.0 Approval process
==========================================
- Lates ghostscript support both ver 0.2 and 1.0 vector drivers.
- Spec approval need many steps described in:
     ftp://www.pwg.org/pub/pwg/openprinting/Release-Procedure/
- Shida-san may have process it??? (Worth to confirm)
- Do we really need get approval??? It is already in GS (Toratani)
   --> There is no explicit problem on the current status, but we may
need get approval to put an end to a job.
- We may continue to discuss it next time....

============
Action Items
============
- Toratani to feedback CPD on US/EU/JP meeting; including
     - confirm if the source code on "bzr" is latest?
     - confirm if GSoC work include implementation of CPD to Apps
     - how n-up is processed.
     - confirm if improvement on CPD continues
- Toratani to confirm current status of vector spec approval to Shida-san

=========
Next
=========
Septempber 29, 2009, same time, same place


-- Osamu Mihara



