Return-Path: <andrea.croci@gmx.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1603333900;
 bh=LSdTRa1Gew9LMJEi8CEVwYo2WCVdkqVU/nz6HhZm+XI=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=D74ffX3eG0t1cUb7H5LPMmAFrILrIZJgpt6lHvNztJKcI+YsMu5amjJHFOdgEbWRL
 eU+K78bW0xWBbMQnH2P7sg2P+cg8srAUNzLymKgB54iwtCEb2pWGX5u0KJGnjHauY/
 JOUBu45hbdl5yvs1njo7szE5RzYD5velrySnsqE8=
From: Andrea Croci <andrea.croci@gmx.de>
Message-ID: <3aaf4a2b-b7b4-7d98-ed9a-8347646b5923@gmx.de>
Date: Thu, 22 Oct 2020 04:31:39 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------59DE72DC5681733625A902A9"
Content-Language: en-US
Subject: [Printing-architecture] Installing foomatic removes packages in
	Ubuntu 20.04
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.
--------------59DE72DC5681733625A902A9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

I have a Canon printer MF746Cx which is behaving funny under both Ubuntu
18.04 and 20.04: when printing two-sided, some pages are shifted to the
right and the printout is cutoff. The even funnier part is that it does
so with pdf, odt and docx files, but not with all of them and not always
on the same pages. For instance I have an 8-pages pdf where pages 4, 5,
6 and 8 get shifted if I print the whole document, but if I only print
those pages, they don't get shifted.

I installed the printer with the UFR II driver I downloaded from the
Canon website and there are other drivers there. I wanted to try the PCL
and the PS drivers, to see if anything changes. But when I use these
drivers and print the same document (or any document for that matter), I
get the error "Stopped filters error". I opened the PPD files of these
drivers and it seems to me, for what I can understand, that the UFR II
prints using Ghostscript directly, whereas the other drivers invoke some
foomatic command. I thought maybe the problem is with foomatic and
wanted to try (re)installing it. However the following happens:

    /sudo apt install foomatic-filters foomatic-db//
    //Reading package lists... Done//
    //Building dependency tree //
    //Reading state information... Done//
    //The following packages were automatically installed and are no
    longer required://
    //=C2=A0 at hplip-data libfontembed1 libgutenprint-common libgutenprin=
t9//
    //=C2=A0 libimagequant0 libjpeg62 liblouisutdml-bin liblouisutdml-data
    liblouisutdml9//
    //=C2=A0 libncurses5 libsane-hpaio libtinfo5 lsb-core lsb-security
    ncurses-term pax//
    //=C2=A0 python3-olefile python3-pil python3-renderpm python3-reportla=
b//
    //=C2=A0 python3-reportlab-accel//
    //Use 'sudo apt autoremove' to remove them.//
    //The following additional packages will be installed://
    //=C2=A0 foomatic-db-engine//
    //Suggested packages://
    //=C2=A0 hplip hplip-cups cups-filters foomatic-db-gutenprint//
    //Recommended packages://
    //=C2=A0 cups//
    //The following packages will be REMOVED://
    //=C2=A0 bluez-cups cnrdrvcups-ufr2-uk cups cups-filters
    epson-inkjet-printer-escpr//
    //=C2=A0 epson-pc-fax epson-printer-utility foomatic-db-compressed-ppd=
s
    hplip//
    //=C2=A0 indicator-printers lsb lsb-printing printer-driver-gutenprint=
//
    //=C2=A0 printer-driver-hpcups printer-driver-splix ubuntu-desktop//
    //=C2=A0 ubuntu-desktop-minimal//
    //The following NEW packages will be installed://
    //=C2=A0 foomatic-db foomatic-db-engine foomatic-filters//
    //0 upgraded, 3 newly installed, 17 to remove and 0 not upgraded.//
    //Need to get 898 kB of archives.//
    //After this operation, 140 MB disk space will be freed.//
    //Do you want to continue? [Y/n]/

I find it odd that it wants to remove CUPS and then recommends to
install it again/. /I find it maybe even odder that it uninstalls
"ubuntu-desktop" and all the other things. I didn't do it yet because I
don't want to break my system.

Should I answer "yes" and then reinstall the uninstalled packages?

Thanks,

Andrea
//


--------------59DE72DC5681733625A902A9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hello,</p>
    <p>I have a Canon printer MF746Cx which is behaving funny under both
      Ubuntu 18.04 and 20.04: when printing two-sided, some pages are
      shifted to the right and the printout is cutoff. The even funnier
      part is that it does so with pdf, odt and docx files, but not with
      all of them and not always on the same pages. For instance I have
      an 8-pages pdf where pages 4, 5, 6 and 8 get shifted if I print
      the whole document, but if I only print those pages, they don't
      get shifted.</p>
    <p>I installed the printer with the UFR II driver I downloaded from
      the Canon website and there are other drivers there. I wanted to
      try the PCL and the PS drivers, to see if anything changes. But
      when I use these drivers and print the same document (or any
      document for that matter), I get the error "Stopped filters
      error". I opened the PPD files of these drivers and it seems to
      me, for what I can understand, that the UFR II prints using
      Ghostscript directly, whereas the other drivers invoke some
      foomatic command. I thought maybe the problem is with foomatic and
      wanted to try (re)installing it. However the following happens:</p>
    <blockquote>
      <p><i>sudo apt install foomatic-filters foomatic-db</i><i><br>
        </i><i>Reading package lists... Done</i><i><br>
        </i><i>Building dependency tree=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 </i><i><br>
        </i><i>Reading state information... Done</i><i><br>
        </i><i>The following packages were automatically installed and
          are no longer required:</i><i><br>
        </i><i>=C2=A0 at hplip-data libfontembed1 libgutenprint-common
          libgutenprint9</i><i><br>
        </i><i>=C2=A0 libimagequant0 libjpeg62 liblouisutdml-bin
          liblouisutdml-data liblouisutdml9</i><i><br>
        </i><i>=C2=A0 libncurses5 libsane-hpaio libtinfo5 lsb-core
          lsb-security ncurses-term pax</i><i><br>
        </i><i>=C2=A0 python3-olefile python3-pil python3-renderpm
          python3-reportlab</i><i><br>
        </i><i>=C2=A0 python3-reportlab-accel</i><i><br>
        </i><i>Use 'sudo apt autoremove' to remove them.</i><i><br>
        </i><i>The following additional packages will be installed:</i><i>=
<br>
        </i><i>=C2=A0 foomatic-db-engine</i><i><br>
        </i><i>Suggested packages:</i><i><br>
        </i><i>=C2=A0 hplip hplip-cups cups-filters foomatic-db-gutenprint=
</i><i><br>
        </i><i>Recommended packages:</i><i><br>
        </i><i>=C2=A0 cups</i><i><br>
        </i><i>The following packages will be REMOVED:</i><i><br>
        </i><i>=C2=A0 bluez-cups cnrdrvcups-ufr2-uk cups cups-filters
          epson-inkjet-printer-escpr</i><i><br>
        </i><i>=C2=A0 epson-pc-fax epson-printer-utility
          foomatic-db-compressed-ppds hplip</i><i><br>
        </i><i>=C2=A0 indicator-printers lsb lsb-printing
          printer-driver-gutenprint</i><i><br>
        </i><i>=C2=A0 printer-driver-hpcups printer-driver-splix
          ubuntu-desktop</i><i><br>
        </i><i>=C2=A0 ubuntu-desktop-minimal</i><i><br>
        </i><i>The following NEW packages will be installed:</i><i><br>
        </i><i>=C2=A0 foomatic-db foomatic-db-engine foomatic-filters</i><=
i><br>
        </i><i>0 upgraded, 3 newly installed, 17 to remove and 0 not
          upgraded.</i><i><br>
        </i><i>Need to get 898 kB of archives.</i><i><br>
        </i><i>After this operation, 140 MB disk space will be freed.</i><=
i><br>
        </i><i>Do you want to continue? [Y/n]</i></p>
    </blockquote>
    <p>I find it odd that it wants to remove CUPS and then recommends to
      install it again<i>. </i>I find it maybe even odder that it
      uninstalls "ubuntu-desktop" and all the other things. I didn't do
      it yet because I don't want to break my system.</p>
    <p>Should I answer "yes" and then reinstall the uninstalled
      packages?</p>
    <p>Thanks,</p>
    <p>Andrea<br>
      <i></i></p>
  </body>
</html>

--------------59DE72DC5681733625A902A9--
