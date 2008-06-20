Message-ID: <485B71CB.9090209@fujixerox.co.jp>
Date: Fri, 20 Jun 2008 18:00:59 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <001b01c8d263$64a884a0$9e72150a@nsl.ad.nec.co.jp>	<485B44C5.4000509@gmail.com>
	<485B5347.3090408@fujixerox.co.jp>
In-Reply-To: <485B5347.3090408@fujixerox.co.jp>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	June Meeting Minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: printing-japan@lists.linux-foundation.org

Hi, This is part one of translation of meeting minutes.
Please wait for the part two until next Monday or Tuesday or...
-----------------------------------------------------------------

OPWG-J Meeting Minutes (June 2008)

June 19, 2008, 14:3-18:30 (JST)
The Linux Foundation Japan Meeting Room

Participants
------------
Kunai-san (TLF)
Olaf-san, Miyata-san (Avasys)
Otani-san (BBR)
Sekiguchi-san (Konica Minorura)
Ogasawara-san, Chigusa-san (Ricoh)
Toratani-san (Canon)
Saito-san (NEC Soft)
Mihara (Fuji Xerox)


Agenda
------
(1) Action Items
(2) Some issue in PDF filter configuration
(3) Agenda for OpenPrinting/LF Japan Symposium Tokyo (July 8th)
(4) CPD Specification Review
(5) Implementation of Printer Management Standard (PWG/OPWG Co'op) -
postponed to next meeting due to timeout.


(1) Action Items
-----------------
o Procedure for the formalization of specs.
  -> Done.  Glen has updated the procedure document and announce to ML.

o Translation of  readme/install of pdftoraster
  -> Done.

o Release source code of pdf filters to Mike
  -> Done

o Give proposal of RPC code for opvp
  -> Done.  Both of 0.2 and 1.0 can be supported at the same time.
     Toratani-san will prepare for release of sample code.

o Post comments for Distribution Independend Driver Package (DDK)
  -> Saito-san has posted 2 bugs to Bugzilla and Till has already fixed
them.
  -> There is a search path problem because the driver executives and
libraries are installed under /opt.

    - Adding the vendor specific path to PATH and LD_LIBRARY_PATH will
      not solve the naming conflicts, which "/opt proposal" will try
       to solve.
       Same can be said for making symbolic links under /usr.
       (If two vendors happen to use same file name for their
        executables or libraries, we can not expect which one is used.)
    - paths for filters and libraries should be described in PPD file.
       A keyword for filter path is already defined.
       Vendors can define vendor specific keyword for library path,
       if they need their own library path.

o Post the Austin report presentation.
    -> done

o Post comments on CPD to ML
    -> done

o Request comment on the posting about LSB, again.
    -> Done
    -> There is a comment on PPD path (should be defined in LSB),
        as it is not included in LSB 3.2
    -> SANE 1.0 seems to be included in next LSB.

o Participate SC meeting
    -> Done


(2) PDF Filters issue
----------------------
Problem ONE:
Currently PDF filters SRPM includes source code of poppler for each
distributions, because PDF filters depends on poppler *internal*
functions, which cannot be used even if -dev package of poppler is
installed.  This causes source code management problem as we need
prepare SRPMS customized for distro by distro.

-> Libpoppler can be linked statically, but configuraion and cmap files
can be redundant.

-> It may cause problem if pdf filters are commited into poppler source
code tree.  It is because pdf filters are application and poppler is a
library project and they have completely different type of projects.

==> Solution: Take stable version of poppler and make a package of
libpoppler dedicated for pdf filters.  (It's not a fork. No modification
on poppler.  Just use it)

Problem TWO: (from discussion with Otani-san and Till-san)
PostScript output from Adobe Reader 8 cannot be converted to PDF by
pstopdf.  It happens with PDFs with printing permission but no other
permissions.

-> If printing out to PS printer, it will cause problems if PS (from
Acrobate) is once converted to PDF.  So "pstopdf" may not be needed.

-> If this problem is discussed on a assumption to add penalties for an
application which can generate only postscript to printing, it
shouldn't.  The promotion of PDF workflow should be done by adding
merits on it compared to current ps workflow.

-> We also need to provide way to PDF job control to CPD api.


(3) Agenda for OpenPrinting/LF Japan Symposium Tokyo (July 8th)
----------------------------------------------------------------
- Main discussion will be on CPD spec. (some hours)
- Discussion on transition promotion to PDF printing workflow
   -> What's we need to provide?
      What is missing?
      What kind of merits we can append?

(4) CPD Specification Review
----------------------------
(5) Others
----------------------------

(((Translation will be later.)))


// Osamu Mihara
