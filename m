Message-ID: <48465B3D.4080809@gmail.com>
Date: Wed, 04 Jun 2008 11:07:09 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080603153656.2F34.TORATANI.YASUMASA@canon.co.jp>	<484541C0.3060501@gmail.com>
	<20080604.105602.104056266.sho@bbr.jp>
In-Reply-To: <20080604.105602.104056266.sho@bbr.jp>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] PDF CUPS filter packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: toratani.yasumasa@canon.co.jp, printing-architecture@lists.linux-foundation.org

Koji Otani wrote:
> Hi Till,
> 
> I'm Koji Otani.
> 
> Thank you for trying PDF filters.
> 
> I'm wondering that error with dpkg-buildpackage is caused by using
> the compiler for 64bits. I'll see and fix it.
> 
> Errors with manually compiling are caused by wrong specified
>   --with-poppler-source option. That's option's value should be
>   specified with full path. (See INSTALL please)
>

I have used the full path now and the problem still occurs. See below.

    Till

--------------------------------------------------------------------------
till@till-laptop:~/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf$ 
autoreconf -i
configure.ac:52: installing `./compile'
configure.ac:33: installing `./install-sh'
configure.ac:33: installing `./missing'
src/Makefile.am: installing `./depcomp'
till@till-laptop:~/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf$ 
./configure --prefix=/usr --sysconfdir=/etc 
--with-poppler-source=/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6/
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... no
checking for mawk... mawk
checking whether make sets $(MAKE)... yes
checking build system type... x86_64-unknown-linux-gnu
checking host system type... x86_64-unknown-linux-gnu
checking for style of include used by make... GNU
checking for gcc... gcc
checking for C compiler default output file name... a.out
checking whether the C compiler works... yes
checking whether we are cross compiling... no
checking for suffix of executables...
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking dependency style of gcc... gcc3
checking for a sed that does not truncate output... /bin/sed
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ld used by gcc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for /usr/bin/ld option to reload object files... -r
checking for BSD-compatible nm... /usr/bin/nm -B
checking whether ln -s works... yes
checking how to recognize dependent libraries... pass_all
checking how to run the C preprocessor... gcc -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking for g++... g++
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking dependency style of g++... gcc3
checking how to run the C++ preprocessor... g++ -E
checking for g77... no
checking for xlf... no
checking for f77... no
checking for frt... no
checking for pgf77... no
checking for cf77... no
checking for fort77... no
checking for fl32... no
checking for af77... no
checking for xlf90... no
checking for f90... no
checking for pgf90... no
checking for pghpf... no
checking for epcf90... no
checking for gfortran... no
checking for g95... no
checking for xlf95... no
checking for f95... no
checking for fort... no
checking for ifort... no
checking for ifc... no
checking for efc... no
checking for pgf95... no
checking for lf95... no
checking for ftn... no
checking whether we are using the GNU Fortran 77 compiler... no
checking whether  accepts -g... no
checking the maximum length of command line arguments... 98304
checking command to parse /usr/bin/nm -B output from gcc object... ok
checking for objdir... .libs
checking for ar... ar
checking for ranlib... ranlib
checking for strip... strip
checking if gcc supports -fno-rtti -fno-exceptions... no
checking for gcc option to produce PIC... -fPIC
checking if gcc PIC flag -fPIC works... yes
checking if gcc static flag -static works... yes
checking if gcc supports -c -o file.o... yes
checking whether the gcc linker (/usr/bin/ld -m elf_x86_64) supports 
shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
configure: creating libtool
appending configuration tag "CXX" to libtool
checking for ld used by g++... /usr/bin/ld -m elf_x86_64
checking if the linker (/usr/bin/ld -m elf_x86_64) is GNU ld... yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports 
shared libraries... yes
checking for g++ option to produce PIC... -fPIC
checking if g++ PIC flag -fPIC works... yes
checking if g++ static flag -static works... yes
checking if g++ supports -c -o file.o... yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports 
shared libraries... yes
checking dynamic linker characteristics... GNU/Linux ld.so
(cached) (cached) checking how to hardcode library paths into 
programs... immediate
appending configuration tag "F77" to libtool
checking for gcc... (cached) gcc
checking whether we are using the GNU C compiler... (cached) yes
checking whether gcc accepts -g... (cached) yes
checking for gcc option to accept ISO C89... (cached) none needed
checking dependency style of gcc... (cached) gcc3
checking for an ANSI C-conforming const... yes
checking for library containing strerror... none required
checking for gcc option to accept ISO C99... -std=gnu99
checking for gcc -std=gnu99 option to accept ISO Standard C... (cached) 
-std=gnu99
checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... (cached) yes
checking dependency style of g++... (cached) gcc3
checking for a BSD-compatible install... /usr/bin/install -c
checking for dirent.h that defines DIR... yes
checking for library containing opendir... none required
checking whether gcc -std=gnu99 and cc understand -c and -o together... yes
checking for deflate in -lz... yes
checking for ppdEmitJCLEnd in -lcups... yes
checking for main in -lpoppler... yes
checking zlib.h usability... yes
checking zlib.h presence... yes
checking for zlib.h... yes
checking for cups-config... /usr/lib/cups
checking for cups-config... /etc/cups
checking UGooString.h usability... no
checking UGooString.h presence... no
checking for UGooString.h... no
configure: creating ./config.status
config.status: creating Makefile
config.status: creating src/Makefile
config.status: creating conf/Makefile
config.status: creating man/Makefile
config.status: creating config.h
config.status: executing depfiles commands
till@till-laptop:~/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf$ 
make
make  all-recursive
make[1]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf'
Making all in src
make[2]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf/src'
g++ -DHAVE_CONFIG_H -I. -I.. 
-I/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6//poppler 
-I/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6/ 
-DCONFFILE_DIR=\"/etc/cups\" -DPDFTOPDF 
-I/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6//poppler 
  -Wall -Werror -g -O2 -MT pdf2pdf-P2PCatalog.o -MD -MP -MF 
.deps/pdf2pdf-P2PCatalog.Tpo -c -o pdf2pdf-P2PCatalog.o `test -f 
'P2PCatalog.cc' || echo './'`P2PCatalog.cc
cc1plus: warnings being treated as errors
In file included from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2PObject.h: In member function ‘virtual void 
P2PObject::output(P2POutputStream*, XRef*)’:
P2PObject.h:96: warning: deprecated conversion from string constant to 
‘char*’
In file included from P2PPage.h:38,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PMatrix.h: In member function ‘void P2PMatrix::output(P2POutputStream*)’:
P2PMatrix.h:49: warning: deprecated conversion from string constant to 
‘char*’
P2PCatalog.cc: In member function ‘void 
P2PCatalog::outputSelf(P2POutputStream*)’:
P2PCatalog.cc:52: warning: deprecated conversion from string constant to 
‘char*’
P2PCatalog.cc:55: warning: deprecated conversion from string constant to 
‘char*’
make[2]: *** [pdf2pdf-P2PCatalog.o] Error 1
make[2]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf/src'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf'
make: *** [all] Error 2
till@till-laptop:~/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf$
