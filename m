Return-Path: <wcolburn@nrao.edu>
Date: Mon, 28 Sep 2015 14:41:10 -0600
From: "William D. Colburn" <wcolburn@nrao.edu>
Message-ID: <20150928204110.GA28669@zia.aoc.nrao.edu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
Subject: [Printing-architecture] poppler troubles
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I'm trying to compile the latest version of cups/cups-filters for rhel6.
I'm compiling with gcc 5.2.0, and to get as far as I am, I have to edit
the configure-generated makefile in cups-filters to change -std=gnu99 to
-std=gnu11.  After that, it all falls apart when it tries to use
poppler.  A couple of warnings about long long appear, and then this:

In file included from filter/pdftoopvp/oprs/OPRS.cxx:44:0:
filter/pdftoopvp/oprs/OPVPSplashXPath.h: In constructor 'OPVPSplashXPath::OPVPSplashXPath()':
filter/pdftoopvp/oprs/OPVPSplashXPath.h:33:21: error: no matching function for call to 'SplashXPath::SplashXPath()'
   OPVPSplashXPath() {};
                     ^
In file included from filter/pdftoopvp/oprs/OPVPSplashXPath.h:8:0,
                 from filter/pdftoopvp/oprs/OPRS.cxx:44:
/home/anotheruvula/cups-filters/target/include/poppler/splash/SplashXPath.h:84:3: note: candidate: SplashXPath::SplashXPath(SplashXPath*)
   SplashXPath(SplashXPath *xPath);
   ^
/home/anotheruvula/cups-filters/target/include/poppler/splash/SplashXPath.h:84:3: note:   candidate expects 1 argument, 0 provided
  
I'll attach my build script for cups/cups-filters.  The gcc-5.2.0 comes
from the PATH early on.  Any insight or help would be greatly appreciated.

--Schlake

--T4sUOijqQbZv57TR
Content-Type: application/x-sh
Content-Disposition: attachment; filename="build.sh"
Content-Transfer-Encoding: quoted-printable

#!/bin/sh=0A=0ASTART=3D`pwd`=0ATARGETHOME=3D`pwd`/target=0A=0A##=0A## stuff=
 to find all the pieces needed=0A##=0APATH=3D${TARGETHOME}/bin:/usr/local/c=
ompilers/gcc-5.2.0/bin:$PATH=0Aexport PATH=0ACFLAGS=3D"-I${TARGETHOME}/incl=
ude"=0Aexport CFLAGS=0A=0A##=0A## are these needed?=0A##=0A#LDFLAGS=3D"-L${=
TARGETHOME}/lib -L${TARGETHOME}/lib64"=0A#export LDFLAGS=0A#LIBRARY_PATH=3D=
${TARGETHOME}/lib:${TARGETHOME}/lib64:/usr/local/compilers/gcc-5.2.0/lib64:=
/usr/local/compilers/gcc-5.2.0/lib:/lib64:/lib=0A#export LIBRARY_PATH=0A=0A=
##=0A## pkg-config for side-compiling things=0A##=0APKG_CONFIG_PATH=3D${TAR=
GETHOME}/lib/pkgconfig/:${TARGETHOME}/share/pkgconfig=0Aexport PKG_CONFIG_P=
ATH=0A=0A##=0A## version section=0A##=0ACUPSVER=3D2.1.0=0AFILTERSVER=3D1.0.=
76=0AGLIBMJR=3D2.46=0AGLIBMNR=3D0=0AGLIBVER=3D${GLIBMJR}.${GLIBMNR}=0ALIBFF=
IVER=3D3.2.1=0ALCMSVER=3D2.7=0AIJSVER=3D0.35=0APOPPLERVER=3D0.36.0=0AOPENJP=
EGVER=3D2.1.0=0AQPDFVER=3D5.1.3=0AXPDFVER=3D3.04=0A=0A##=0A## download sect=
ion=0A##=0A[ ! -f cups-filters-${FILTERSVER}.tar.xz ] && wget http://openpr=
inting.org/download/cups-filters/cups-filters-${FILTERSVER}.tar.xz=0A[ ! -f=
 glib-${GLIBMJR}.${GLIBMNR}.tar.xz ] && wget http://ftp.gnome.org/pub/GNOME=
/sources/glib/${GLIBMJR}/glib-${GLIBVER}.tar.xz=0A[ ! -f libffi-${LIBFFIVER=
}.tar.gz ] && wget ftp://sourceware.org/pub/libffi/libffi-${LIBFFIVER}.tar.=
gz=0A[ ! -f lcms2-${LCMSVER}.tar.gz ] && wget http://downloads.sourceforge.=
net/project/lcms/lcms/${LCMSVER}/lcms2-${LCMSVER}.tar.gz=0A[ ! -f ijs-${IJS=
VER}.tar.gz ] && wget https://www.openprinting.org/download/ijs/download/ij=
s-${IJSVER}.tar.gz=0A[ ! -f poppler-${POPPLERVER}.tar.xz ] && wget http://p=
oppler.freedesktop.org/poppler-${POPPLERVER}.tar.xz=0A[ ! -f openjpeg-${OPE=
NJPEGVER}.tar.gz ] && wget http://downloads.sourceforge.net/openjpeg.mirror=
/openjpeg-${OPENJPEGVER}.tar.gz=0A[ ! -f qpdf-${QPDFVER}.tar.gz ] && wget h=
ttp://downloads.sourceforge.net/project/qpdf/qpdf/${QPDFVER}/qpdf-${QPDFVER=
}.tar.gz=0A[ ! -f cups-${CUPSVER}-source.tar.bz2 ] && wget http://www.cups.=
org/software/2.1.0/cups-${CUPSVER}-source.tar.bz2=0A[ ! -f xpdf-${XPDFVER}.=
tar.gz ] && wget ftp://ftp.foolabs.com/pub/xpdf/xpdf-${XPDFVER}.tar.gz=0A=
=0Axpdf()=0A{=0A  cd ${START}=0A  rm -rf xpdf-${XPDFVER}=0A  tar xvf xpdf-$=
{XPDFVER}.tar.gz=0A  cd xpdf-${XPDFVER}=0A  configure --prefix=3D${TARGETHO=
ME}=0A  make=0A  make install=0A}=0A=0Acups()=0A{=0A  cd ${START}=0A  rm -r=
f cups-${CUPSVER}=0A  tar xvf cups-${CUPSVER}-source.tar.bz2=0A  cd cups-${=
CUPSVER}=0A  configure --prefix=3D${TARGETHOME}=0A  make=0A  make install=
=0A}=0A=0Afilters()=0A{=0A  cd ${START}=0A  rm -rf cups-filters-${FILTERSVE=
R}=0A  tar xvf cups-filters-${FILTERSVER}.tar.xz=0A  cd cups-filters-${FILT=
ERSVER}=0A  configure --prefix=3D${TARGETHOME}=0A  sed -i 's/-std=3Dgnu99/-=
std=3Dgnu11/' Makefile=0A  make=0A  make install=0A}=0A=0Alibffi()=0A{=0A  =
cd ${START}=0A  rm -rf libffi-3.2.1=0A  tar xvf libffi-3.2.1.tar.gz=0A  cd =
libffi-3.2.1=0A  ./configure --prefix=3D${TARGETHOME}=0A  make -j 10=0A  ma=
ke install=0A}=0A=0Aglib2()=0A{=0A  cd ${START}=0A  rm -rf glib-${GLIBVER}=
=0A  tar xvf glib-${GLIBVER}.tar.xz=0A  cd glib-${GLIBVER}=0A  CFLAGS=3D ./=
configure --prefix=3D${TARGETHOME}=0A  make -j 10 install=0A}=0A=0Alcms()=
=0A{=0A  cd ${START}=0A  rm -rf lcms2-${LCMSVER}=0A  tar xvf lcms2-${LCMSVE=
R}.tar.gz=0A  cd lcms2-${LCMSVER}=0A  ./configure --prefix=3D${TARGETHOME}=
=0A  make -j 10 install=0A}=0A=0Aijs()=0A{=0A  cd ${START}=0A  rm -rf ijs-$=
{IJSVER}=0A  tar xvf ijs-${IJSVER}.tar.gz=0A  cd ijs-${IJSVER}=0A  ./config=
ure --prefix=3D${TARGETHOME}=0A  make -j 10 install=0A}=0A=0Apoppler()=0A{=
=0A  cd ${START}=0A  rm -rf poppler-${POPPLERVER}=0A  tar xvf poppler-${POP=
PLERVER}.tar.xz=0A  cd poppler-${POPPLERVER}=0A  ./configure --prefix=3D${T=
ARGETHOME} --enable-poppler-cpp --enable-xpdf-headers=0A  make -j 10 instal=
l=0A}=0A=0Aopenjpeg()=0A{=0A  cd ${START}=0A  rm -rf openjpeg-${OPENJPEGVER=
}=0A  tar xvf openjpeg-${OPENJPEGVER}.tar.gz=0A  cd openjpeg-${OPENJPEGVER}=
=0A  cmake -DCMAKE_INSTALL_PREFIX=3D${TARGETHOME} .=0A  make install=0A}=0A=
=0Aqpdf()=0A{=0A  cd ${START}=0A  rm -rf qpdf-${QPDFVER}=0A  tar xvf qpdf-$=
{QPDFVER}.tar.gz=0A  cd qpdf-${QPDFVER}=0A  ./configure --prefix=3D${TARGET=
HOME}=0A  make -j 10 install=0A}=0A=0Arm -rf ${TARGETHOME} *.out=0Alibffi >=
 ${START}/00libffi.out 2>&1=0Aglib2 > ${START}/01glib2.out 2>&1=0Alcms > ${=
START}/02lcms.out 2>&1=0Aijs > ${START}/03ijs.out 2>&1=0Aopenjpeg > ${START=
}/04openjpeg.out 2>&1=0Apoppler > ${START}/05poppler.out 2>&1=0Aqpdf > ${ST=
ART}/06qpdf.out 2>&1=0Axpdf > ${START}/07xpdf.out 2>&1=0Acups > ${START}/08=
cups.out 2>&1=0Afilters > ${START}/09filters.out 2>&1=0A=0A=0A=0A
--T4sUOijqQbZv57TR--
