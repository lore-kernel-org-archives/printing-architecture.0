Message-ID: <4892FDDB.5060104@gmail.com>
Date: Fri, 01 Aug 2008 14:13:15 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com>	<4890C6FE.2090307@gmail.com>	<200807310223.m6V2NkAv006976@dsl092-065-009.bos1.dsl.speakeasy.net>	<48918374.8080404@gmail.com>	<200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>	<p06110400c4b793ad4cd1@[192.168.1.102]>	<200807312114.m6VLEhgd004613@dsl092-065-009.bos1.dsl.speakeasy.net>
	<489230B6.8050306@gmail.com>
	<200807312156.m6VLusVF004364@dsl092-065-009.bos1.dsl.speakeasy.net>
	<4892B6A9.90609@gmail.com>
	<200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD extension specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com

Robert Krawitz wrote:
>    Date: Fri, 01 Aug 2008 09:09:29 +0200
>    From: Till Kamppeter <till.kamppeter@gmail.com>
> 
>    Robert Krawitz wrote:
>    >    Date: Thu, 31 Jul 2008 23:37:58 +0200
>    >    From: Till Kamppeter <till.kamppeter@gmail.com>
>    > 
>    >    Robert Krawitz wrote:
>    >    > 
>    >    > Could you try this?
>    > 
>    >    Thank you for the patch, but still all English.
>    > 
>    >    > What OS are you running, what version of gettext, what version of libc?
>    > 
>    >    Ubuntu Intrepid
>    > 
>    >    Linux till-laptop 2.6.26-4-generic #1 SMP Mon Jul 14 18:39:53 UTC 2008 
>    >    i686 GNU/Linux
>    > 
>    >    ii  libc6                                      2.8~20080505-0ubuntu6 
>    > 		 GNU C Library: Shared libraries
>    >    ii  libc6-i686                                 2.8~20080505-0ubuntu6 
>    > 		 GNU C Library: Shared libraries [i686 optimized]
>    >    ii  gettext                                    0.17-3ubuntu1 
>    > 		 GNU Internationalization utilities
>    > 
>    > Can you capture via strace:
>    > 
>    > strace -s 1024 -o st.out ./cups-genppd.5.2 -p ppd pcl-2
>    > 
>    > I'd like to see what happens when it tries to build a PPD file.
>    > 
> 
>    The resulting file (using yesterday's patch) is attached.
> 
>    I had to do
> 
>    sudo mkdir -p /usr/local/share/gutenprint/5.2/
>    sudo ln -s ~/gutenprint/cvs/HEAD/print/src/xml 
>    /usr/local/share/gutenprint/5.2/
> 
>    to let the XML files appear under the hard-coded path (would be nice to 
>    be able to change the path by a command line option).
> 
> The command I gave you wasn't quite right, I'm afraid.  What you need
> to do is start running "make ppd-global" to allow it to copy the
> message catalogs in place, and then
> 
> LC_ALL= LANG= LANGUAGE= STP_MODULE_PATH=../../src/main/.libs:../../src/main STP_DATA_PATH=../../src/xml strace -s 1024 -o st.out ./cups-genppd.5.2  -p ppd/Global -c `pwd`/catalog/share/locale pcl-2
> 
> The make command should look something like this:
> 
> $ make ppd-global
> wdir=`pwd` ; \
>         cd ../../po ; \
>         make ; \
>         make DESTDIR= prefix=${wdir}/catalog datadir=${wdir}/catalog/share install
> make[1]: Entering directory `/home/rlk/sandbox/print-5.1/po'
> make[1]: Nothing to be done for `all-macosx'.
> make[1]: Leaving directory `/home/rlk/sandbox/print-5.1/po'
> make[1]: Entering directory `/home/rlk/sandbox/print-5.1/po'
> /bin/mkdir -p /home/rlk/sandbox/print-5.1/src/cups/catalog/share
> installing cs.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/cs/LC_MESSAGES/gutenprint.mo
> installing da.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/da/LC_MESSAGES/gutenprint.mo
> installing de.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/de/LC_MESSAGES/gutenprint.mo
> installing el.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/el/LC_MESSAGES/gutenprint.mo
> installing en_GB.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/en_GB/LC_MESSAGES/gutenprint.mo
> installing es.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/es/LC_MESSAGES/gutenprint.mo
> installing fr.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/fr/LC_MESSAGES/gutenprint.mo
> installing hu.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/hu/LC_MESSAGES/gutenprint.mo
> installing ja.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/ja/LC_MESSAGES/gutenprint.mo
> installing nb.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/nb/LC_MESSAGES/gutenprint.mo
> installing nl.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/nl/LC_MESSAGES/gutenprint.mo
> installing pl.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/pl/LC_MESSAGES/gutenprint.mo
> installing pt.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/pt/LC_MESSAGES/gutenprint.mo
> installing sk.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/sk/LC_MESSAGES/gutenprint.mo
> installing sv.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/sv/LC_MESSAGES/gutenprint.mo
> installing zh_TW.gmo as /home/rlk/sandbox/print-5.1/src/cups/catalog/share/locale/zh_TW/LC_MESSAGES/gutenprint.mo
> if test "gutenprint" = "gettext-tools"; then \
>           /bin/mkdir -p /home/rlk/sandbox/print-5.1/src/cups/catalog/share/gettext/po; \
>           for file in Makefile.in.in remove-potcdate.sin quot.sed boldquot.sed en@quot.header en@boldquot.header insert-header.sin Rules-quot   Makevars.template; do \
>             /usr/bin/install -c -m 644 ./$file \
>                             /home/rlk/sandbox/print-5.1/src/cups/catalog/share/gettext/po/$file; \
>           done; \
>           for file in Makevars; do \
>             rm -f /home/rlk/sandbox/print-5.1/src/cups/catalog/share/gettext/po/$file; \
>           done; \
>         else \
>           : ; \
>         fi
> make[1]: Leaving directory `/home/rlk/sandbox/print-5.1/po'
> mkdir ppd
> mkdir ppd/Global
> Global PPDs:
> LC_ALL= LANG= LANGUAGE= STP_MODULE_PATH=../../src/main/.libs:../../src/main STP_DATA_PATH=../../src/xml ./cups-genppd.5.2  -p ppd/Global -c `pwd`/catalog/share/locale
> ..........................................^Cmake: *** [ppd-global] Interrupt
> 

Still all English. I have looked into the strace output and it seems to 
look for the translations in the system and not in the source tree:

----------------------------------------------------------------------------
...
open("/usr/lib/locale/cs.UTF8/LC_IDENTIFICATION", O_RDONLY) = -1 ENOENT 
(No such file or directory)
open("/usr/lib/locale/cs.utf8/LC_IDENTIFICATION", O_RDONLY) = -1 ENOENT 
(No such file or directory)
open("/usr/lib/locale/cs/LC_IDENTIFICATION", O_RDONLY) = -1 ENOENT (No 
such file or directory)
open("/usr/share/locale-langpack/cs.UTF8/LC_IDENTIFICATION", O_RDONLY) = 
-1 ENOENT (No such file or directory)
open("/usr/share/locale-langpack/cs.utf8/LC_IDENTIFICATION", O_RDONLY) = 
-1 ENOENT (No such file or directory)
open("/usr/share/locale-langpack/cs/LC_IDENTIFICATION", O_RDONLY) = -1 
ENOENT (No such file or directory)
open("/usr/lib/locale/cs_CZ.UTF8/LC_IDENTIFICATION", O_RDONLY) = -1 
ENOENT (No such file or directory)
open("/usr/lib/locale/cs_CZ.utf8/LC_IDENTIFICATION", O_RDONLY) = -1 
ENOENT (No such file or directory)
open("/usr/lib/locale/cs_CZ/LC_IDENTIFICATION", O_RDONLY) = -1 ENOENT 
(No such file or directory)
open("/usr/share/locale-langpack/cs_CZ.UTF8/LC_IDENTIFICATION", 
O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale-langpack/cs_CZ.utf8/LC_IDENTIFICATION", 
O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale-langpack/cs_CZ/LC_IDENTIFICATION", O_RDONLY) = 
-1 ENOENT (No such file or directory)
...
----------------------------------------------------------------------------

There must be some possibility to provide an appropriate search path. 
Would be bad if one would need to set a symlink from the source tree 
into the system (would make distro packaging impossible).

    Till
