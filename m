Return-Path: <zdohnal@redhat.com>
References: <4a81bcc3-f648-38eb-f9a4-f9e95716091b@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <138d9f5e-644f-e46b-3c78-e0c5e6962084@redhat.com>
Date: Tue, 4 Jun 2019 13:24:12 +0200
MIME-Version: 1.0
In-Reply-To: <4a81bcc3-f648-38eb-f9a4-f9e95716091b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="CNNiAlXludlIwim4kWBCYaG8RX4gJxbLY"
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CNNiAlXludlIwim4kWBCYaG8RX4gJxbLY
Content-Type: multipart/mixed; boundary="a0txCT4WmK09B8wae5ePWWoS3dJbgfJR0";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Ira McDonald <blueroofmusic@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Message-ID: <138d9f5e-644f-e46b-3c78-e0c5e6962084@redhat.com>
Subject: Re: [Printing-architecture] OpenPrinting News
References: <4a81bcc3-f648-38eb-f9a4-f9e95716091b@gmail.com>
In-Reply-To: <4a81bcc3-f648-38eb-f9a4-f9e95716091b@gmail.com>

--a0txCT4WmK09B8wae5ePWWoS3dJbgfJR0
Content-Type: multipart/alternative;
 boundary="------------4E59D9B35B611D83D4AA9932"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4E59D9B35B611D83D4AA9932
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

_Turn scp-dbus-service.py to C project update:_

Sobhan started to code one week earlier, he is currently working on
methods which dbus interface uses plus Makefile.

His github with project https://github.com/sobhaniiest/scp-dbus-service

On 6/4/19 12:41 PM, Till Kamppeter wrote:
> Hi,
>
> here is the newest development of the last month.
>
> =C2=A0=C2=A0 Till
>
> ----------
>
>
> Google Summer of Code 2019
> --------------------------
>
> Coding has started.
>
> I have discussed the architecture for the Printer Application
> framework with Dheeraj but he did not start coding yet as he still has
> exams.
>
> Tanmay has started early and progressed very well, having nearly
> finished his project of removing the use of unstable/undocumented APIs
> of Poppler in the pdftoraster filter of cups-filters. He has code up
> now for testing an debugging:
>
> https://github.com/tanmayanand44/cups-filters-gsoc19
>
> He asks for testing with the different color spaces and color depths.
>
>
> Google Summer of Code 2018
> --------------------------
>
> One of the projects which did not finish in time in the end of the
> GSoC made it finally upstream into cups-filters 1.24.0. Deepak
> Patankar finished his work on cups-browsed auto-selecting the
> destination printer for a job based on option/attribute settings.
>
> Now, after one year of cups-browsed not receiving any new feature we
> have not only the auto selection but also support for clustering
> native IPP printers, mixed clusters of IPP printers and CUPS queues,
> no PPD download from remote CUPS servers (working towards full removal
> of the PPD concept in CUPS) and generally equal treatment of remote
> CUPS queues and native IPP printers.
>
>
> Avahi
> -----
>
> Not continued yet by Trent as he has still urgent work to do.
>
>
> OpenPrinting web site
> ---------------------
>
> No further news.
>
>
> system-config-printer
> ---------------------
>
> Moved upstream hosting from Zdenek Dohnal=E2=80=99s (system-config-prin=
ter=E2=80=99s
> current upstream maintainer, works at Red Hat) private GitHub to the
> GitHub of OpenPrinting, but Zdenek continues as upstream maintainer.
>
>
> CUPS
> ----
>
> 2.3.0 released.
>
> So we made it to the new series now. The state of the art of Apple's
> licensing has still to be determined.
>
> Changes in CUPS v2.3.0
> ----------------------
>
> - Fixed a bug in the scheduler job cleanup code (Issue #5588)
> - Fixed an issue with `EXPECT !name WITH-VALUE ...` tests.
> - Fixed a command ordering issue in the Zebra ZPL driver.
>
>
> Changes in CUPS v2.3rc1
> -----------------------
>
> - The `cups-config` script no longer adds extra libraries when linking
> =C2=A0 against shared libraries (Issue #5261)
> - The supplied example print documents have been optimized for size
> =C2=A0 (Issue #5529)
> - The `cupsctl` command now prevents setting "cups-files.conf"
> =C2=A0 directives (Issue #5530)
> - The "forbidden" message in the web interface is now explained (Issue
> =C2=A0 #5547)
> - The footer in the web interface covered some content on small display=
s
> =C2=A0 (Issue #5574)
> - The libusb-based USB backend now enforces read limits, improving prin=
t
> =C2=A0 speed in many cases (Issue #5583)
> - The `ippeveprinter` command now looks for print commands in the
> =C2=A0 "command" subdirectory.
> - The `ipptool` command now supports `$date-current` and `$date-start`
> =C2=A0 variables to insert the current and starting date and time value=
s, as
> =C2=A0 well as ISO-8601 relative time values such as "PT30S" for 30 sec=
onds
> =C2=A0 in the future.
>
> 2.22.12 released.
>
> CUPS 2.2.12 is a bug fix release backporting important fixes from the
> 2.3.x series.
>
> Changes in CUPS v2.2.12
> -----------------------
>
> - The `cupsctl` command now prevents setting "cups-files.conf"
> =C2=A0 directives (Issue #5530)
> - Updated the systemd service file for cupsd (Issue #5551)
> - The `cupsCheckDestSupported` function did not check octetString value=
s
> =C2=A0 correctly (Issue #5557)
> - The scheduler did not encode octetString values like "job-password"
> =C2=A0 correctly for the print filters (Issue #5558)
> - Restored minimal support for the `Emulators` keyword in PPD files to
> =C2=A0 allow old Samsung printer drivers to continue to work (Issue #55=
62)
> - Timed out job submission now yields an error (Issue #5570)
> - The footer in the web interface covered some content on small display=
s
> =C2=A0 (Issue #5574)
> - The libusb-based USB backend now enforces read limits, improving prin=
t
> =C2=A0 speed in many cases (Issue #5583)
> - Fixed some compatibility issues with old releases of CUPS (Issue
> =C2=A0 #5587)
> - Fixed a bug in the scheduler job cleanup code (Issue #5588)
> - Fixed a command ordering issue in the Zebra ZPL driver.
>
>
> cups-filters
> ------------
>
> Currently released is 1.24.0.
>
> 1.22.6:
>
> Bug fix release, to address a further issue of cups-browsed removing
> user-created print queues, to make grayscale/monochrome PostScript
> jobs of colored input file actually output grayscale/monochrome files,
> to fix several bugs when using MuPDF as PDF renderer, and to silence
> compiler warnings.
>
> 1.23.0:
>
> This release adds support for the "print-scaling" IPP attribute and
> has the code for the support of MuPDF as PDF renderer vastly simplified=
=2E
>
> 1.24.0:
>
> Integration of Deepak Patankar's Google Summer of Code 2018 project
> with the main goal of clustering different printers with cups-browsed
> and automatically selecting the destination printers by job content
> and option/attribute settings. To achieve this, several other features
> got added to cups-browsed, especially support for mixed clusters of
> remote CUPS queues and native IPP printers and not downloading PPDs
> from remote CUPS servers any more. All changes of this release are
> done by Deepak as parts of his project.
>
> CHANGES IN V1.24.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Integration of Deepak Patankar'=
s Google Summer
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of Code 2018 with the main goal of clust=
ering different
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printers and automatically selecting the=
 destination
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printers by job content and option/attri=
bute settings. All
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 changes of this release are done by Deep=
ak as parts of his
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 project.
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, implicitclass: Support for mixe=
d clusters of
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 remote CUPS queues and IPP network print=
ers. For this PPD
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 files of remote CUPS queues are generate=
d by cups-browsed
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 based on IPP queries, as for native IPP =
printers, the number
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of jobs for load balancing is polled in =
a way that it works
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 also with native IPP printers, the impli=
citclass backend
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sends jobs directky to the printer inste=
ad of re-queueing
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 them via CUPS.
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Merge IPP attributes of several=
 printers to
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 combined attributes for the cluster to g=
enerate the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cluster's PPD file, including PPD constr=
aints for option
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 combinations not fulfillable by any of t=
he member printers,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and finding reasonable, non-conflicting =
default settings,
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Selection algorithm for the des=
tination
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printer for a job sent to the cluster. B=
ased on the job
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 settings requested such as page size, me=
dia type, print
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 quality, ... the best most suitable prin=
ter in the cluster
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for the job will be selected.
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, implicitclass: Filter jobs to c=
lusters already
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 locally. Due to the fact that a cluster'=
s member printers
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 are not exclusively non-raw CUPS queues =
with the complete
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 filtering framework on the remote server=
, but also native
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IPP printers, we need to support generic=
 driverless printers
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 as destination. So we cannot pass on the=
 input data
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unfiltered but need to filter locally. W=
e let the cluster's
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PPD file emulate a PDF printer, letting =
the local CUPS queue
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of the cluster run pdftopdf and any pre-=
filters to turn the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 input into PDF and we let the implicitcl=
ass backend turn PDF
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 into a format understood by the destinat=
ion printer,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 supporting the 4 formats of driverless I=
PP printing: PDF,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PWG Raster, Apple Raster, PCLm.
>
> CHANGES IN V1.23.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0- pdftops, mupdftoraster: Let pdftops call muto=
ol directly and
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 so that it directly outputs PostScript, =
eliminating the need
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to call the mupdftoraster and rastertops=
 filters.
> =C2=A0=C2=A0=C2=A0=C2=A0- mupdftoraster: Reduced the use of temporary f=
iles from 3 to
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 just one.
> =C2=A0=C2=A0=C2=A0=C2=A0- imagetopdf, imagetoraster, pdftopdf: Add supp=
ort for
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print-scaling option (Issue #108, Pull r=
equest #118).
>
> CHANGES IN V1.22.6
>
> =C2=A0=C2=A0=C2=A0=C2=A0- rastertops: Fixed PageSize settings in the Po=
stScript output
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Must be in points not in pixels).
> =C2=A0=C2=A0=C2=A0=C2=A0- pdftops, mupdftoraster: Produce actual graysc=
ale/monochrome
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PostScript (and not only instructions to=
 print grayscale/
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 monochrome) for jobs to be printed in gr=
ayscale/monochrome
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Issue #96, Pull request #115).
> =C2=A0=C2=A0=C2=A0=C2=A0- mupdftoraster: Fixed filter not producing out=
put at all.
> =C2=A0=C2=A0=C2=A0=C2=A0- Build system: ENABLE_DRIVERLESS got only defi=
ned with CUPS
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.6 and newer, not with older CUPS versi=
ons (Issue #111).
> =C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf, imagetopdf, imagetoraster: Silenced=
 compiler
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 warnings.
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, driverless: Replaced httpConnec=
t() calls by
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 httpConnect2() calls as the former CUPS =
library function is
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 deprecated.
> =C2=A0=C2=A0=C2=A0=C2=A0- Build system: Compile everything using the CU=
PS libraries
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with '-D_PPD_DEPRECATED=3D""' for the ti=
me being until the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 deprecated PPD API calls get replaced, t=
o stop the flooding
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with PPD API deprecation warnings making=
 more important
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 warnings being overlooked.
> =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: When removing a local queue on =
shutdown or
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when DNS-SD reports the printer as disap=
peared check whether
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the local queue got overwritten by an ex=
ternal process as
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sometimes the shutdown or disappearing e=
vent comes too close
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for cups-browsed receiving a printer-mod=
ified notification
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from CUPS before (Ubuntu bug #1731417).
>
>
> ippusbxd
> --------
>
> No further news.
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectur=
e

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C


--------------4E59D9B35B611D83D4AA9932
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi all,</p>
    <p><u>Turn scp-dbus-service.py to C project update:</u></p>
    <p>Sobhan started to code one week earlier, he is currently working
      on methods which dbus interface uses plus Makefile.</p>
    <p>His github with project
      <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/sobha=
niiest/scp-dbus-service">https://github.com/sobhaniiest/scp-dbus-service<=
/a><br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/4/19 12:41 PM, Till Kamppeter
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:4a81bcc3-f648-38eb-f9a4-f9e95716091b@gmail.com">Hi,
      <br>
      <br>
      here is the newest development of the last month.
      <br>
      <br>
      =C2=A0=C2=A0 Till
      <br>
      <br>
      ----------
      <br>
      <br>
      <br>
      Google Summer of Code 2019
      <br>
      --------------------------
      <br>
      <br>
      Coding has started.
      <br>
      <br>
      I have discussed the architecture for the Printer Application
      framework with Dheeraj but he did not start coding yet as he still
      has exams.
      <br>
      <br>
      Tanmay has started early and progressed very well, having nearly
      finished his project of removing the use of unstable/undocumented
      APIs of Poppler in the pdftoraster filter of cups-filters. He has
      code up now for testing an debugging:
      <br>
      <br>
      <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/tanma=
yanand44/cups-filters-gsoc19">https://github.com/tanmayanand44/cups-filte=
rs-gsoc19</a>
      <br>
      <br>
      He asks for testing with the different color spaces and color
      depths.
      <br>
      <br>
      <br>
      Google Summer of Code 2018
      <br>
      --------------------------
      <br>
      <br>
      One of the projects which did not finish in time in the end of the
      GSoC made it finally upstream into cups-filters 1.24.0. Deepak
      Patankar finished his work on cups-browsed auto-selecting the
      destination printer for a job based on option/attribute settings.
      <br>
      <br>
      Now, after one year of cups-browsed not receiving any new feature
      we have not only the auto selection but also support for
      clustering native IPP printers, mixed clusters of IPP printers and
      CUPS queues, no PPD download from remote CUPS servers (working
      towards full removal of the PPD concept in CUPS) and generally
      equal treatment of remote CUPS queues and native IPP printers.
      <br>
      <br>
      <br>
      Avahi
      <br>
      -----
      <br>
      <br>
      Not continued yet by Trent as he has still urgent work to do.
      <br>
      <br>
      <br>
      OpenPrinting web site
      <br>
      ---------------------
      <br>
      <br>
      No further news.
      <br>
      <br>
      <br>
      system-config-printer
      <br>
      ---------------------
      <br>
      <br>
      Moved upstream hosting from Zdenek Dohnal=E2=80=99s
      (system-config-printer=E2=80=99s current upstream maintainer, works=
 at Red
      Hat) private GitHub to the GitHub of OpenPrinting, but Zdenek
      continues as upstream maintainer.
      <br>
      <br>
      <br>
      CUPS
      <br>
      ----
      <br>
      <br>
      2.3.0 released.
      <br>
      <br>
      So we made it to the new series now. The state of the art of
      Apple's licensing has still to be determined.
      <br>
      <br>
      Changes in CUPS v2.3.0
      <br>
      ----------------------
      <br>
      <br>
      - Fixed a bug in the scheduler job cleanup code (Issue #5588)
      <br>
      - Fixed an issue with `EXPECT !name WITH-VALUE ...` tests.
      <br>
      - Fixed a command ordering issue in the Zebra ZPL driver.
      <br>
      <br>
      <br>
      Changes in CUPS v2.3rc1
      <br>
      -----------------------
      <br>
      <br>
      - The `cups-config` script no longer adds extra libraries when
      linking
      <br>
      =C2=A0 against shared libraries (Issue #5261)
      <br>
      - The supplied example print documents have been optimized for
      size
      <br>
      =C2=A0 (Issue #5529)
      <br>
      - The `cupsctl` command now prevents setting "cups-files.conf"
      <br>
      =C2=A0 directives (Issue #5530)
      <br>
      - The "forbidden" message in the web interface is now explained
      (Issue
      <br>
      =C2=A0 #5547)
      <br>
      - The footer in the web interface covered some content on small
      displays
      <br>
      =C2=A0 (Issue #5574)
      <br>
      - The libusb-based USB backend now enforces read limits, improving
      print
      <br>
      =C2=A0 speed in many cases (Issue #5583)
      <br>
      - The `ippeveprinter` command now looks for print commands in the
      <br>
      =C2=A0 "command" subdirectory.
      <br>
      - The `ipptool` command now supports `$date-current` and
      `$date-start`
      <br>
      =C2=A0 variables to insert the current and starting date and time
      values, as
      <br>
      =C2=A0 well as ISO-8601 relative time values such as "PT30S" for 30=

      seconds
      <br>
      =C2=A0 in the future.
      <br>
      <br>
      2.22.12 released.
      <br>
      <br>
      CUPS 2.2.12 is a bug fix release backporting important fixes from
      the 2.3.x series.
      <br>
      <br>
      Changes in CUPS v2.2.12
      <br>
      -----------------------
      <br>
      <br>
      - The `cupsctl` command now prevents setting "cups-files.conf"
      <br>
      =C2=A0 directives (Issue #5530)
      <br>
      - Updated the systemd service file for cupsd (Issue #5551)
      <br>
      - The `cupsCheckDestSupported` function did not check octetString
      values
      <br>
      =C2=A0 correctly (Issue #5557)
      <br>
      - The scheduler did not encode octetString values like
      "job-password"
      <br>
      =C2=A0 correctly for the print filters (Issue #5558)
      <br>
      - Restored minimal support for the `Emulators` keyword in PPD
      files to
      <br>
      =C2=A0 allow old Samsung printer drivers to continue to work (Issue=

      #5562)
      <br>
      - Timed out job submission now yields an error (Issue #5570)
      <br>
      - The footer in the web interface covered some content on small
      displays
      <br>
      =C2=A0 (Issue #5574)
      <br>
      - The libusb-based USB backend now enforces read limits, improving
      print
      <br>
      =C2=A0 speed in many cases (Issue #5583)
      <br>
      - Fixed some compatibility issues with old releases of CUPS (Issue
      <br>
      =C2=A0 #5587)
      <br>
      - Fixed a bug in the scheduler job cleanup code (Issue #5588)
      <br>
      - Fixed a command ordering issue in the Zebra ZPL driver.
      <br>
      <br>
      <br>
      cups-filters
      <br>
      ------------
      <br>
      <br>
      Currently released is 1.24.0.
      <br>
      <br>
      1.22.6:
      <br>
      <br>
      Bug fix release, to address a further issue of cups-browsed
      removing user-created print queues, to make grayscale/monochrome
      PostScript jobs of colored input file actually output
      grayscale/monochrome files, to fix several bugs when using MuPDF
      as PDF renderer, and to silence compiler warnings.
      <br>
      <br>
      1.23.0:
      <br>
      <br>
      This release adds support for the "print-scaling" IPP attribute
      and has the code for the support of MuPDF as PDF renderer vastly
      simplified.
      <br>
      <br>
      1.24.0:
      <br>
      <br>
      Integration of Deepak Patankar's Google Summer of Code 2018
      project with the main goal of clustering different printers with
      cups-browsed and automatically selecting the destination printers
      by job content and option/attribute settings. To achieve this,
      several other features got added to cups-browsed, especially
      support for mixed clusters of remote CUPS queues and native IPP
      printers and not downloading PPDs from remote CUPS servers any
      more. All changes of this release are done by Deepak as parts of
      his project.
      <br>
      <br>
      CHANGES IN V1.24.0
      <br>
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Integration of Deepak Patan=
kar's Google Summer
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of Code 2018 with the main goal of c=
lustering different
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printers and automatically selecting=
 the destination
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printers by job content and option/a=
ttribute settings. All
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 changes of this release are done by =
Deepak as parts of his
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 project.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, implicitclass: Support for =
mixed clusters of
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 remote CUPS queues and IPP network p=
rinters. For this PPD
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 files of remote CUPS queues are gene=
rated by cups-browsed
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 based on IPP queries, as for native =
IPP printers, the number
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of jobs for load balancing is polled=
 in a way that it works
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 also with native IPP printers, the i=
mplicitclass backend
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sends jobs directky to the printer i=
nstead of re-queueing
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 them via CUPS.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Merge IPP attributes of sev=
eral printers to
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 combined attributes for the cluster =
to generate the
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cluster's PPD file, including PPD co=
nstraints for option
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 combinations not fulfillable by any =
of the member printers,
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and finding reasonable, non-conflict=
ing default settings,
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: Selection algorithm for the=
 destination
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printer for a job sent to the cluste=
r. Based on the job
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 settings requested such as page size=
, media type, print
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 quality, ... the best most suitable =
printer in the cluster
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for the job will be selected.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, implicitclass: Filter jobs =
to clusters already
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 locally. Due to the fact that a clus=
ter's member printers
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 are not exclusively non-raw CUPS que=
ues with the complete
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 filtering framework on the remote se=
rver, but also native
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IPP printers, we need to support gen=
eric driverless printers
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 as destination. So we cannot pass on=
 the input data
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unfiltered but need to filter locall=
y. We let the cluster's
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PPD file emulate a PDF printer, lett=
ing the local CUPS queue
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of the cluster run pdftopdf and any =
pre-filters to turn the
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 input into PDF and we let the implic=
itclass backend turn PDF
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 into a format understood by the dest=
ination printer,
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 supporting the 4 formats of driverle=
ss IPP printing: PDF,
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PWG Raster, Apple Raster, PCLm.
      <br>
      <br>
      CHANGES IN V1.23.0
      <br>
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- pdftops, mupdftoraster: Let pdftops call =
mutool directly and
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 so that it directly outputs PostScri=
pt, eliminating the need
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to call the mupdftoraster and raster=
tops filters.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- mupdftoraster: Reduced the use of tempora=
ry files from 3 to
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 just one.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- imagetopdf, imagetoraster, pdftopdf: Add =
support for
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print-scaling option (Issue #108, Pu=
ll request #118).
      <br>
      <br>
      CHANGES IN V1.22.6
      <br>
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- rastertops: Fixed PageSize settings in th=
e PostScript output
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Must be in points not in pixels).
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- pdftops, mupdftoraster: Produce actual gr=
ayscale/monochrome
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PostScript (and not only instruction=
s to print grayscale/
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 monochrome) for jobs to be printed i=
n grayscale/monochrome
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Issue #96, Pull request #115).
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- mupdftoraster: Fixed filter not producing=
 output at all.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- Build system: ENABLE_DRIVERLESS got only =
defined with CUPS
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.6 and newer, not with older CUPS v=
ersions (Issue #111).
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- pdftopdf, imagetopdf, imagetoraster: Sile=
nced compiler
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 warnings.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed, driverless: Replaced httpCo=
nnect() calls by
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 httpConnect2() calls as the former C=
UPS library function is
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 deprecated.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- Build system: Compile everything using th=
e CUPS libraries
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with '-D_PPD_DEPRECATED=3D""' for th=
e time being until the
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 deprecated PPD API calls get replace=
d, to stop the flooding
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with PPD API deprecation warnings ma=
king more important
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 warnings being overlooked.
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0- cups-browsed: When removing a local queue=
 on shutdown or
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when DNS-SD reports the printer as d=
isappeared check whether
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the local queue got overwritten by a=
n external process as
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sometimes the shutdown or disappeari=
ng event comes too close
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for cups-browsed receiving a printer=
-modified notification
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from CUPS before (Ubuntu bug #173141=
7).
      <br>
      <br>
      <br>
      ippusbxd
      <br>
      --------
      <br>
      <br>
      No further news.
      <br>
      _______________________________________________
      <br>
      Printing-architecture mailing list
      <br>
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Printing-archi=
tecture@lists.linux-foundation.org">Printing-architecture@lists.linux-fou=
ndation.org</a>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.=
org/mailman/listinfo/printing-architecture">https://lists.linuxfoundation=
=2Eorg/mailman/listinfo/printing-architecture</a>
      <br>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </body>
</html>

--------------4E59D9B35B611D83D4AA9932--

--a0txCT4WmK09B8wae5ePWWoS3dJbgfJR0--

--CNNiAlXludlIwim4kWBCYaG8RX4gJxbLY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlz2VNwACgkQFapqf01C
J9cIvgf/QpxUSTmc4VBUsRA49XC2uwZictsOMgL0C49zt57IqawfWTgltXiUJkR1
eJaIwmv8ULpKFmxkb83gqXu5llai3Ep2D8PA5nFC/jLRvW4Beb2MxEXr7IaYe2MU
6xRKbzQq4uFH7RXQi9qtY2pBa5ECbuYaLRoBt+ayACCjThtL+YTmaZ+b/8FPkhQl
UDRM+71wocKkVwNZM44zv9tSo/XcWda+g3S++ADcw8FQrFGy5sQCWzCBRyt+7j+p
giC1hehUAnpcmxVvZrWU8p06U7n60A09Q0zjiJJ8LB3dawGqQfRJ1sckJWOaCine
ilTRjdU/r7VOF4BPZ4iX8M8gotxFPQ==
=c5VO
-----END PGP SIGNATURE-----

--CNNiAlXludlIwim4kWBCYaG8RX4gJxbLY--
