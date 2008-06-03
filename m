Message-ID: <484541C0.3060501@gmail.com>
Date: Tue, 03 Jun 2008 15:06:08 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080603153656.2F34.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20080603153656.2F34.TORATANI.YASUMASA@canon.co.jp>
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
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, OTANI Koji <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org

I have downloaded the Ubuntu package (the .tgz file with the sources) 
and were not able to rebuild the Ubuntu packages on my up-to-date Hardy 
system &4-bit PC).

After uncompressing the tarball I got the files:

opfc-pdf-filters_0.4-1ubuntu710.diff.gz
opfc-pdf-filters_0.4-1ubuntu710.dsc
opfc-pdf-filters_0.4-1ubuntu710_i386.changes
opfc-pdf-filters_0.4.orig.tar.gz

I have uncompressed them with

dpkg-source -x opfc-pdf-filters_0.4-1ubuntu710.dsc

and did a straight rebuild:

cd opfc-pdf-filters-0.4
dpkg-buildpackage -rfakeroot

and got

-----------------------------------------------------------------------------------
make[4]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoopvp/poppler-0.5.4'
make[4]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoopvp/poppler-0.5.4'
g++ -DHAVE_CONFIG_H -I. -I.. -I../poppler -I.. -I../poppler -I../oprs 
-I../goo -I../splash -I../fofi -I../opvp/vector-printer 
-I/usr/include/freetype2        -DCUPS_SERVERROOT=\"/etc/cups\" -Wall 
-Wno-unused -g -O2 -MT pdftoopvp-pdftoopvp.o -MD -MP -MF 
.deps/pdftoopvp-pdftoopvp.Tpo -c -o pdftoopvp-pdftoopvp.o `test -f 
'pdftoopvp.cc' || echo './'`pdftoopvp.cc
pdftoopvp.cc: In function ‘int outOnePage(PDFDoc*, OPVPOutputDev*, int)’:
pdftoopvp.cc:347: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:370: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:375: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc: In function ‘int main(int, char**)’:
pdftoopvp.cc:431: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:825: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:826: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:842: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:843: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:847: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:848: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:852: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:853: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:857: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:858: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:862: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:863: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:867: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:868: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:872: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:873: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:877: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:878: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:881: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:884: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:887: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:914: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:920: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:924: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:955: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:973: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:980: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:988: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:995: warning: deprecated conversion from string constant to 
‘char*’
pdftoopvp.cc:1002: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1017: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1023: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1066: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1079: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1085: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1099: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc:1106: warning: deprecated conversion from string constant 
to ‘char*’
pdftoopvp.cc: At global scope:
pdftoopvp.cc:1128: error: ‘operator new’ takes type ‘size_t’ (‘long 
unsigned int’) as first parameter
make[3]: *** [pdftoopvp-pdftoopvp.o] Error 1
make[3]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoopvp/poppler-0.5.4/pdftoopvp'
make[2]: *** [all-recursive] Error 1
make[2]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoopvp/poppler-0.5.4'
make[1]: *** [all] Error 2
make[1]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoopvp/poppler-0.5.4'
make: *** [build-stamp] Error 2
dpkg-buildpackage: failure: debian/rules build gave error exit status 2
-----------------------------------------------------------------------------------

Now I have also tried to manually compile pdftopdf:

-----------------------------------------------------------------------------------
tar -xvzf poppler-0.6.tar.gz
cd poppler-0.6
autoreconf -i
./configure --prefix=/usr --sysconfdir=/etc
cd ..
tar -xvzf pdftopdf-20080509.tgz
cd pdftopdf
autoreconf -i
./configure --prefix=/usr --sysconfdir=/etc \
   --with-poppler-source=../poppler-0.6
make
-----------------------------------------------------------------------------------

This gives the following error

-----------------------------------------------------------------------------------
make  all-recursive
make[1]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf'
Making all in src
make[2]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf/src'
g++ -DHAVE_CONFIG_H -I. -I..  -I../poppler-0.6/poppler -I../poppler-0.6 
-DCONFFILE_DIR=\"/etc/cups\" -DPDFTOPDF -I../poppler-0.6/poppler  -Wall 
-Werror -g -O2 -MT pdf2pdf-P2PCatalog.o -MD -MP -MF 
.deps/pdf2pdf-P2PCatalog.Tpo -c -o pdf2pdf-P2PCatalog.o `test -f 
'P2PCatalog.cc' || echo './'`P2PCatalog.cc
P2PCatalog.cc:31:22: error: goo/gmem.h: No such file or directory
In file included from P2PCatalog.cc:32:
P2PCatalog.h:32:24: error: goo/gtypes.h: No such file or directory
P2PCatalog.h:34:20: error: Object.h: No such file or directory
P2PCatalog.h:35:21: error: Catalog.h: No such file or directory
In file included from P2PObject.h:33,
                  from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2PXRef.h:33:18: error: XRef.h: No such file or directory
In file included from P2PObject.h:35,
                  from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2POutput.h:35:18: error: Dict.h: No such file or directory
P2POutput.h:36:20: error: Stream.h: No such file or directory
P2POutput.h:37:19: error: Array.h: No such file or directory
P2POutput.h:38:18: error: Page.h: No such file or directory
In file included from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2PObject.h:36:19: error: Error.h: No such file or directory
In file included from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PDoc.h:32:20: error: PDFDoc.h: No such file or directory
In file included from P2PResources.h:38,
                  from P2PPage.h:39,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PPattern.h:35:22: error: GfxState.h: No such file or directory
In file included from P2PResources.h:39,
                  from P2PPage.h:39,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
UGooString.h:14:23: error: CharTypes.h: No such file or directory
In file included from P2PPage.h:40,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PFont.h:33:21: error: GfxFont.h: No such file or directory
In file included from P2PFont.h:39,
                  from P2PPage.h:40,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PCMap.h:17:28: error: poppler-config.h: No such file or directory
In file included from P2PObject.h:32,
                  from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2POutputStream.h:52: error: ‘GBool’ does not name a type
P2POutputStream.h:67: error: ‘GBool’ does not name a type
In file included from P2PObject.h:33,
                  from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2PXRef.h:56: error: ‘XRef’ has not been declared
In file included from P2PObject.h:35,
                  from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2POutput.h:44: error: variable or field ‘outputDict’ declared void
P2POutput.h:44: error: ‘Dict’ was not declared in this scope
P2POutput.h:44: error: ‘dict’ was not declared in this scope
P2POutput.h:44: error: expected primary-expression before ‘char’
P2POutput.h:45: error: expected primary-expression before ‘*’ token
P2POutput.h:45: error: ‘objs’ was not declared in this scope
P2POutput.h:45: error: expected primary-expression before ‘int’
P2POutput.h:45: error: expected primary-expression before ‘*’ token
P2POutput.h:45: error: ‘str’ was not declared in this scope
P2POutput.h:45: error: ‘XRef’ was not declared in this scope
P2POutput.h:45: error: ‘xref’ was not declared in this scope
P2POutput.h:46: error: variable or field ‘outputDict’ declared void
P2POutput.h:46: error: ‘Dict’ was not declared in this scope
P2POutput.h:46: error: ‘dict’ was not declared in this scope
P2POutput.h:46: error: expected primary-expression before ‘*’ token
P2POutput.h:46: error: ‘str’ was not declared in this scope
P2POutput.h:46: error: ‘XRef’ was not declared in this scope
P2POutput.h:46: error: ‘xref’ was not declared in this scope
P2POutput.h:47: error: variable or field ‘outputArray’ declared void
P2POutput.h:47: error: ‘Array’ was not declared in this scope
P2POutput.h:47: error: ‘array’ was not declared in this scope
P2POutput.h:47: error: expected primary-expression before ‘*’ token
P2POutput.h:47: error: ‘str’ was not declared in this scope
P2POutput.h:47: error: ‘XRef’ was not declared in this scope
P2POutput.h:47: error: ‘xref’ was not declared in this scope
P2POutput.h:47: error: ‘Dict’ was not declared in this scope
P2POutput.h:47: error: ‘mapDict’ was not declared in this scope
P2POutput.h:48: error: variable or field ‘outputStream’ declared void
P2POutput.h:48: error: ‘Stream’ was not declared in this scope
P2POutput.h:48: error: ‘stream’ was not declared in this scope
P2POutput.h:48: error: expected primary-expression before ‘*’ token
P2POutput.h:48: error: ‘str’ was not declared in this scope
P2POutput.h:48: error: ‘XRef’ was not declared in this scope
P2POutput.h:48: error: ‘xref’ was not declared in this scope
P2POutput.h:49: error: variable or field ‘outputRef’ declared void
P2POutput.h:49: error: ‘Ref’ was not declared in this scope
P2POutput.h:49: error: ‘ref’ was not declared in this scope
P2POutput.h:49: error: expected primary-expression before ‘*’ token
P2POutput.h:49: error: ‘str’ was not declared in this scope
P2POutput.h:49: error: ‘XRef’ was not declared in this scope
P2POutput.h:49: error: ‘xref’ was not declared in this scope
P2POutput.h:51: error: ‘Dict’ has not been declared
P2POutput.h:52: error: variable or field ‘outputObject’ declared void
P2POutput.h:52: error: ‘Object’ was not declared in this scope
P2POutput.h:52: error: ‘obj’ was not declared in this scope
P2POutput.h:52: error: expected primary-expression before ‘*’ token
P2POutput.h:52: error: ‘str’ was not declared in this scope
P2POutput.h:52: error: ‘XRef’ was not declared in this scope
P2POutput.h:52: error: ‘xref’ was not declared in this scope
P2POutput.h:52: error: ‘Dict’ was not declared in this scope
P2POutput.h:52: error: ‘mapDict’ was not declared in this scope
In file included from P2PCatalog.h:36,
                  from P2PCatalog.cc:32:
P2PObject.h:95: error: ‘XRef’ has not been declared
P2PObject.h:99: error: ‘GBool’ does not name a type
P2PObject.h:100: error: ‘GBool’ has not been declared
P2PObject.h:128: error: ‘GBool’ does not name a type
P2PObject.h: In constructor ‘P2PObject::P2PObject()’:
P2PObject.h:51: error: ‘secondPhase’ was not declared in this scope
P2PObject.h:51: error: ‘gFalse’ was not declared in this scope
P2PObject.h: In constructor ‘P2PObject::P2PObject(int, int)’:
P2PObject.h:61: error: ‘secondPhase’ was not declared in this scope
P2PObject.h:61: error: ‘gFalse’ was not declared in this scope
P2PObject.h: In member function ‘virtual void 
P2PObject::output(P2POutputStream*, int*)’:
P2PObject.h:96: error: ‘error’ was not declared in this scope
P2PObject.h: In member function ‘void P2PObject::setSecondPhase(int)’:
P2PObject.h:100: error: ‘secondPhase’ was not declared in this scope
P2PObject.h: At global scope:
P2PObject.h:134: error: expected `)' before ‘*’ token
P2PObject.h:142: error: ‘XRef’ has not been declared
P2PObject.h:153: error: ‘Object’ has not been declared
P2PObject.h:157: error: ISO C++ forbids declaration of ‘Object’ with no type
P2PObject.h:157: error: expected ‘;’ before ‘*’ token
P2PObject.h:161: error: expected `;' before ‘private’
P2PObject.h:162: error: ‘Object’ does not name a type
P2PObject.h: In destructor ‘virtual P2PObj::~P2PObj()’:
P2PObject.h:139: error: ‘obj’ was not declared in this scope
P2PObject.h: In member function ‘virtual void 
P2PObj::output(P2POutputStream*, int*)’:
P2PObject.h:148: error: ‘outputObject’ is not a member of ‘P2POutput’
P2PObject.h:148: error: ‘obj’ was not declared in this scope
P2PObject.h: In member function ‘void P2PObj::setObj(int*)’:
P2PObject.h:154: error: ‘obj’ was not declared in this scope
P2PObject.h:155: error: request for member ‘copy’ in ‘* objA’, which is 
of non-class type ‘int’
cc1plus: warnings being treated as errors
In file included from P2PPage.h:38,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PMatrix.h: In member function ‘void P2PMatrix::output(P2POutputStream*)’:
P2PMatrix.h:49: warning: deprecated conversion from string constant to 
‘char*’
In file included from P2PResources.h:38,
                  from P2PPage.h:39,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PPattern.h: At global scope:
P2PPattern.h:44: error: expected `)' before ‘*’ token
P2PPattern.h:46: error: ‘XRef’ has not been declared
P2PPattern.h:49: error: ‘XRef’ has not been declared
P2PPattern.h:50: error: expected `)' before ‘*’ token
P2PPattern.h:54: error: ISO C++ forbids declaration of ‘GfxPattern’ with 
no type
P2PPattern.h:54: error: expected ‘;’ before ‘*’ token
P2PPattern.h:55: error: expected `;' before ‘Object’
P2PPattern.h:55: error: ISO C++ forbids declaration of ‘Object’ with no type
P2PPattern.h:55: error: expected ‘;’ before ‘*’ token
P2PPattern.h:56: error: expected `;' before ‘private’
P2PPattern.h:57: error: ISO C++ forbids declaration of ‘GfxPattern’ with 
no type
P2PPattern.h:57: error: expected ‘;’ before ‘*’ token
P2PPattern.h:59: error: ‘Object’ does not name a type
P2PPattern.h:62: error: ‘GfxPattern’ has not been declared
P2PPattern.h:63: error: ‘XRef’ has not been declared
P2PPattern.h:64: error: ‘GfxPattern’ has not been declared
P2PPattern.h:65: error: ‘Object’ has not been declared
P2PPattern.h:65: error: ‘XRef’ has not been declared
In file included from P2PResources.h:39,
                  from P2PPage.h:39,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
UGooString.h:22: error: expected `)' before ‘*’ token
UGooString.h:43: error: ISO C++ forbids declaration of ‘Unicode’ with no 
type
UGooString.h:43: error: expected ‘;’ before ‘*’ token
UGooString.h:46: error: expected `;' before ‘char’
UGooString.h:52: error: ISO C++ forbids declaration of ‘Unicode’ with no 
type
UGooString.h:52: error: expected ‘;’ before ‘*’ token
In file included from P2PPage.h:39,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PResources.h:56: error: expected `)' before ‘*’ token
P2PResources.h:60: error: expected ‘;’ before ‘(’ token
P2PResources.h:62: error: ISO C++ forbids declaration of ‘Dict’ with no type
P2PResources.h:62: error: expected ‘;’ before ‘*’ token
P2PResources.h:65: error: expected `;' before ‘Dict’
P2PResources.h:65: error: ISO C++ forbids declaration of ‘Dict’ with no type
P2PResources.h:65: error: expected ‘;’ before ‘*’ token
P2PResources.h:68: error: expected `;' before ‘void’
P2PResources.h:85: error: ISO C++ forbids declaration of ‘XRef’ with no type
P2PResources.h:85: error: expected ‘;’ before ‘*’ token
P2PResources.h:86: error: ISO C++ forbids declaration of ‘Dict’ with no type
P2PResources.h:86: error: expected ‘;’ before ‘*’ token
P2PResources.h:91: error: ‘Dict’ has not been declared
P2PResources.h:91: error: ‘Dict’ has not been declared
P2PResources.h:91: error: ‘Dict’ has not been declared
P2PResources.h:91: error: ‘GBool’ has not been declared
P2PResources.h:95: error: ‘Dict’ has not been declared
P2PResources.h:95: error: ‘Object’ has not been declared
P2PResources.h:95: error: ‘Dict’ has not been declared
P2PResources.h:100: error: ‘Dict’ has not been declared
P2PResources.h:110: error: ISO C++ forbids declaration of ‘Dict’ with no 
type
P2PResources.h:110: error: expected ‘;’ before ‘*’ token
In file included from P2PFont.h:39,
                  from P2PPage.h:40,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PCMap.h:49: error: ‘GBool’ does not name a type
P2PCMap.h:54: error: ‘CID’ does not name a type
P2PCMap.h:59: error: ‘Guint’ has not been declared
P2PCMap.h:59: error: ‘Guint’ has not been declared
P2PCMap.h:59: error: ‘Guint’ has not been declared
P2PCMap.h:67: error: ‘Guint’ has not been declared
P2PCMap.h:67: error: ‘Guint’ has not been declared
P2PCMap.h:68: error: ‘Guint’ has not been declared
P2PCMap.h:69: error: ‘Guint’ has not been declared
P2PCMap.h:69: error: ‘Guint’ has not been declared
P2PCMap.h:69: error: ‘Guint’ has not been declared
P2PCMap.h:69: error: ‘CID’ has not been declared
P2PCMap.h:71: error: ‘Guint’ has not been declared
P2PCMap.h:72: error: ‘Guint’ has not been declared
P2PCMap.h:72: error: ‘Guint’ has not been declared
P2PCMap.h:72: error: ‘Guint’ has not been declared
In file included from P2PPage.h:40,
                  from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PFont.h:47: error: ‘GfxFont’ has not been declared
P2PFont.h:47: error: ‘GfxFontType’ has not been declared
P2PFont.h:51: error: ‘XRef’ has not been declared
P2PFont.h:52: error: ‘GBool’ has not been declared
P2PFont.h:52: error: ‘XRef’ has not been declared
P2PFont.h:53: error: ‘GBool’ does not name a type
P2PFont.h:54: error: expected ‘;’ before ‘(’ token
P2PFont.h:55: error: ‘CharCode’ has not been declared
P2PFont.h:64: error: ‘GfxFont’ has not been declared
P2PFont.h:65: error: ‘GfxFontType’ has not been declared
P2PFont.h:72: error: ISO C++ forbids declaration of ‘GfxFont’ with no type
P2PFont.h:72: error: expected ‘;’ before ‘*’ token
P2PFont.h:74: error: ‘GfxFontType’ does not name a type
P2PFont.h:78: error: ‘CharCode’ does not name a type
P2PFont.h: In member function ‘void P2PFontFile::refChar(int)’:
P2PFont.h:57: error: ‘maxRefCID’ was not declared in this scope
P2PFont.h: At global scope:
P2PFont.h:86: error: ‘GBool’ has not been declared
P2PFont.h:88: error: ‘XRef’ has not been declared
P2PFont.h:91: error: ‘GBool’ does not name a type
P2PFont.h:96: error: expected `)' before ‘*’ token
P2PFont.h:100: error: ‘XRef’ has not been declared
P2PFont.h:102: error: ‘GfxFontType’ does not name a type
P2PFont.h:105: error: ‘Object’ does not name a type
P2PFont.h:106: error: ‘GfxFontType’ does not name a type
P2PFont.h:111: error: expected `)' before ‘*’ token
P2PFont.h:115: error: ‘XRef’ has not been declared
P2PFont.h:118: error: ‘Object’ does not name a type
P2PFont.h:119: error: ‘GfxFontType’ does not name a type
P2PFont.h:120: error: ‘GfxFontType’ does not name a type
P2PFont.h:122: error: ISO C++ forbids declaration of ‘GfxFont’ with no type
P2PFont.h:122: error: expected ‘;’ before ‘*’ token
P2PFont.h:129: error: ‘XRef’ has not been declared
P2PFont.h:136: error: expected `)' before ‘*’ token
P2PFont.h:138: error: ‘XRef’ has not been declared
P2PFont.h:143: error: ‘Object’ has not been declared
P2PFont.h:143: error: ‘GfxFontType’ has not been declared
P2PFont.h:144: error: ‘XRef’ has not been declared
P2PFont.h:145: error: ‘GfxFontType’ has not been declared
P2PFont.h:146: error: ‘XRef’ has not been declared
P2PFont.h:147: error: ‘GfxFontType’ has not been declared
P2PFont.h:148: error: ‘XRef’ has not been declared
P2PFont.h:150: error: ISO C++ forbids declaration of ‘GfxFont’ with no type
P2PFont.h:150: error: expected ‘;’ before ‘*’ token
P2PFont.h:151: error: ‘Object’ does not name a type
P2PFont.h:152: error: ‘GfxFontType’ does not name a type
P2PFont.h:158: error: ‘XRef’ has not been declared
P2PFont.h:159: error: ‘Dict’ has not been declared
P2PFont.h:159: error: ‘XRef’ has not been declared
P2PFont.h:164: error: ‘XRef’ has not been declared
P2PFont.h:168: error: ‘Dict’ has not been declared
P2PFont.h:168: error: ‘XRef’ has not been declared
P2PFont.h:169: error: ‘Dict’ has not been declared
P2PFont.h:169: error: ‘XRef’ has not been declared
In file included from P2PDoc.h:34,
                  from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PPage.h:46: error: expected `)' before ‘*’ token
P2PPage.h:48: error: expected `)' before ‘*’ token
P2PPage.h:50: error: ‘PDFRectangle’ has not been declared
P2PPage.h:51: error: ‘XRef’ has not been declared
P2PPage.h:58: error: ‘PDFRectangle’ has not been declared
P2PPage.h:61: error: ‘PDFRectangle’ has not been declared
P2PPage.h:63: error: ISO C++ forbids declaration of ‘PDFRectangle’ with 
no type
P2PPage.h:63: error: expected ‘;’ before ‘*’ token
P2PPage.h:64: error: expected `;' before ‘private’
P2PPage.h:66: error: ISO C++ forbids declaration of ‘Page’ with no type
P2PPage.h:66: error: expected ‘;’ before ‘*’ token
P2PPage.h:69: error: ‘GBool’ does not name a type
P2PPage.h:70: error: ‘PDFRectangle’ does not name a type
P2PPage.h:72: error: ‘GBool’ does not name a type
P2PPage.h:74: error: ‘PDFRectangle’ has not been declared
P2PPage.h:74: error: ‘PDFRectangle’ has not been declared
P2PPage.h:75: error: ‘PDFRectangle’ has not been declared
P2PPage.h:77: error: ‘PDFRectangle’ has not been declared
P2PPage.h:77: error: ‘PDFRectangle’ has not been declared
P2PPage.h:78: error: ‘PDFRectangle’ has not been declared
P2PPage.h:78: error: ‘PDFRectangle’ has not been declared
P2PPage.h:79: error: ‘PDFRectangle’ has not been declared
P2PPage.h:80: error: ‘PDFRectangle’ has not been declared
P2PPage.h:91: error: ‘PDFRectangle’ does not name a type
P2PPage.h:92: error: ‘PDFRectangle’ does not name a type
P2PPage.h:93: error: ‘GBool’ does not name a type
P2PPage.h:94: error: ‘PDFRectangle’ does not name a type
P2PPage.h:95: error: ‘PDFRectangle’ does not name a type
P2PPage.h:96: error: ‘PDFRectangle’ does not name a type
P2PPage.h:98: error: ISO C++ forbids declaration of ‘XRef’ with no type
P2PPage.h:98: error: expected ‘;’ before ‘*’ token
P2PPage.h:103: error: ‘PDFRectangle’ has not been declared
P2PPage.h:104: error: ‘PDFRectangle’ has not been declared
P2PPage.h:106: error: ‘PDFRectangle’ has not been declared
P2PPage.h:107: error: ‘GBool’ does not name a type
P2PPage.h:112: error: ‘PDFRectangle’ has not been declared
P2PPage.h:113: error: ‘PDFRectangle’ has not been declared
In file included from P2PPageTree.h:38,
                  from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PDoc.h:82: error: ‘GBool’ does not name a type
P2PDoc.h:83: error: ‘GBool’ does not name a type
P2PDoc.h:91: error: ‘GBool’ does not name a type
P2PDoc.h:92: error: ‘GBool’ does not name a type
P2PDoc.h:93: error: ‘GBool’ does not name a type
P2PDoc.h:94: error: ‘GBool’ does not name a type
P2PDoc.h:95: error: ‘GBool’ does not name a type
P2PDoc.h:96: error: ‘GBool’ does not name a type
P2PDoc.h:97: error: ‘GBool’ does not name a type
P2PDoc.h:104: error: expected `)' before ‘*’ token
P2PDoc.h:109: error: ‘PDFRectangle’ has not been declared
P2PDoc.h:111: error: ‘PDFRectangle’ has not been declared
P2PDoc.h:114: error: ‘PDFRectangle’ has not been declared
P2PDoc.h:118: error: ISO C++ forbids declaration of ‘PDFDoc’ with no type
P2PDoc.h:118: error: expected ‘;’ before ‘*’ token
P2PDoc.h: In constructor ‘P2PDoc::Options::Options()’:
P2PDoc.h:60: error: ‘duplex’ was not declared in this scope
P2PDoc.h:60: error: ‘gFalse’ was not declared in this scope
P2PDoc.h:62: error: ‘collate’ was not declared in this scope
P2PDoc.h:69: error: ‘reverse’ was not declared in this scope
P2PDoc.h:70: error: ‘even’ was not declared in this scope
P2PDoc.h:71: error: ‘contentsCompress’ was not declared in this scope
P2PDoc.h:72: error: ‘fontEmbedding’ was not declared in this scope
P2PDoc.h:73: error: ‘fontEmbeddingWhole’ was not declared in this scope
P2PDoc.h:74: error: ‘fontCompress’ was not declared in this scope
P2PDoc.h:77: error: ‘fontEmbeddingPreLoad’ was not declared in this scope
In file included from P2PCatalog.h:37,
                  from P2PCatalog.cc:32:
P2PPageTree.h: At global scope:
P2PPageTree.h:46: error: expected `)' before ‘*’ token
P2PPageTree.h:49: error: ‘GBool’ has not been declared
P2PPageTree.h:50: error: ‘PDFRectangle’ has not been declared
P2PPageTree.h:52: error: ‘PDFRectangle’ has not been declared
P2PPageTree.h:55: error: ‘PDFRectangle’ has not been declared
P2PPageTree.h:61: error: ISO C++ forbids declaration of ‘XRef’ with no type
P2PPageTree.h:61: error: expected ‘;’ before ‘*’ token
P2PPageTree.h:65: error: ‘GBool’ does not name a type
In file included from P2PCatalog.cc:32:
P2PCatalog.h:45: error: expected `)' before ‘*’ token
P2PCatalog.h:48: error: ‘GBool’ has not been declared
P2PCatalog.h:49: error: ‘PDFRectangle’ has not been declared
P2PCatalog.h:51: error: ‘PDFRectangle’ has not been declared
P2PCatalog.h:54: error: ‘PDFRectangle’ has not been declared
P2PCatalog.h:58: error: ISO C++ forbids declaration of ‘XRef’ with no type
P2PCatalog.h:58: error: expected ‘;’ before ‘*’ token
P2PCatalog.h:59: error: ISO C++ forbids declaration of ‘Catalog’ with no 
type
P2PCatalog.h:59: error: expected ‘;’ before ‘*’ token
P2PCatalog.cc:37: error: expected `)' before ‘*’ token
P2PCatalog.cc: In member function ‘void 
P2PCatalog::outputSelf(P2POutputStream*)’:
P2PCatalog.cc:52: warning: deprecated conversion from string constant to 
‘char*’
P2PCatalog.cc:55: warning: deprecated conversion from string constant to 
‘char*’
P2PCatalog.cc: At global scope:
P2PCatalog.cc:59: error: ‘GBool’ has not been declared
P2PCatalog.cc:65: error: ‘PDFRectangle’ has not been declared
P2PCatalog.cc:71: error: variable or field ‘fit’ declared void
P2PCatalog.cc:71: error: ‘PDFRectangle’ was not declared in this scope
P2PCatalog.cc:71: error: ‘box’ was not declared in this scope
P2PCatalog.cc:71: error: expected primary-expression before ‘double’
P2PCatalog.cc:86: error: variable or field ‘position’ declared void
P2PCatalog.cc:86: error: ‘PDFRectangle’ was not declared in this scope
P2PCatalog.cc:86: error: ‘box’ was not declared in this scope
P2PCatalog.cc:86: error: expected primary-expression before ‘int’
P2PCatalog.cc:86: error: expected primary-expression before ‘int’
make[2]: *** [pdf2pdf-P2PCatalog.o] Error 1
make[2]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf/src'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf'
make: *** [all] Error 2
-----------------------------------------------------------------------------------

This is the result for pdftoraster:

-----------------------------------------------------------------------------------
till@till-laptop:~/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoraster$ 
./configure --prefix=/usr --sysconfdir=/etc 
--with-poppler-source=../poppler-0.6
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
checking for ppdOpenFile in -lcups... yes
checking for cupsRasterInterpretPPD in -lcupsimage... yes
checking for main in -lpoppler... yes
checking zlib.h usability... yes
checking zlib.h presence... yes
checking for zlib.h... yes
checking for cups-config... /usr/lib/cups
checking for cups-config... /etc/cups
configure: creating ./config.status
config.status: creating Makefile
config.status: creating src/Makefile
config.status: creating conf/Makefile
config.status: creating config.h
config.status: executing depfiles commands
till@till-laptop:~/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoraster$ 
make
make  all-recursive
make[1]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoraster'
Making all in src
make[2]: Entering directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoraster/src'
g++ -DHAVE_CONFIG_H -I. -I..  -I../poppler-0.6/poppler -I../poppler-0.6 
-DCONFFILE_DIR=\"/etc/cups\"    -Wall -Werror -g -O2 -MT 
pdftoraster-pdftoraster.o -MD -MP -MF .deps/pdftoraster-pdftoraster.Tpo 
-c -o pdftoraster-pdftoraster.o `test -f 'pdftoraster.cc' || echo 
'./'`pdftoraster.cc
pdftoraster.cc:32:27: error: goo/GooString.h: No such file or directory
pdftoraster.cc:33:22: error: goo/gmem.h: No such file or directory
pdftoraster.cc:34:20: error: Object.h: No such file or directory
pdftoraster.cc:35:20: error: Stream.h: No such file or directory
pdftoraster.cc:36:20: error: PDFDoc.h: No such file or directory
pdftoraster.cc:37:29: error: SplashOutputDev.h: No such file or directory
pdftoraster.cc:40:19: error: Error.h: No such file or directory
pdftoraster.cc:41:26: error: GlobalParams.h: No such file or directory
pdftoraster.cc:43:32: error: splash/SplashTypes.h: No such file or directory
pdftoraster.cc:44:33: error: splash/SplashBitmap.h: No such file or 
directory
pdftoraster.cc:56: error: expected initializer before ‘myErrorFun’
cc1plus: warnings being treated as errors
pdftoraster.cc:49: warning: ‘<unnamed>::exitCode’ defined but not used
pdftoraster.cc:50: warning: ‘<unnamed>::deviceCopies’ defined but not used
pdftoraster.cc:51: warning: ‘<unnamed>::deviceCollate’ defined but not used
pdftoraster.cc:52: warning: ‘<unnamed>::header2’ defined but not used
pdftoraster.cc:53: warning: ‘<unnamed>::header’ defined but not used
make[2]: *** [pdftoraster-pdftoraster.o] Error 1
make[2]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoraster/src'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory 
`/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftoraster'
make: *** [all] Error 2
-----------------------------------------------------------------------------------

Manually compiling imagetopdf works without problems.

So it seems that there are problems with all Poppler-based programs.

In general, programs to be included in distros should not depend on the 
whole source code of another program. From the other programs you are 
usually using a library (libpoppler, libcups) and all which you need to 
compile code using the library are the .h files which are in the -dev 
packages of the libraries. So make the appropriate -dev packages a build 
dependency in your debian/control file and you will no need the whole 
source code.

Including the whole source code of another program raises a maintenance 
problem in distributions. If that other program has a bug, not only the 
package for that program has to be fixed but also your package. If many 
packages include the source code of one given program, a lot of packages 
need to be fixed to get one small bug out of the distro.

Also taking a program X, modify it a little bit to obtain a program Y 
and publishing this is not a good idea, as the source code is still 90% 
X and so a bug in X also requires fixing Y. Also here you should try to 
use libraries (like libpoppler). If this is not possible, for example if 
project X does not make the functionality of the program X available in 
a library, you should create a patch for the package X, which makes the 
build process of X create both the programs X or Y (or better let the 
user choose whether he wants to have X and/or Y) and submit it to the 
upstream project X.

Do you really need the full Poppler (or CUPS) source tree for your 
Poppler-based (or CUPS-based) filters? Or is it enough to have the 
header files? For libpoppler you need to install libpoppler-dev and you 
find them in /usr/include/poppler/ and for CUPS you need to install 
libcupsys2-dev and libcupsimage2-dev and you find the headers in 
/usr/include/cups. Running ./configure without "--with-...-source=..." 
should find the headers automatically.

    Till


TORATANI Yasumasa wrote:
> Hi,
> 
> Otani-san has uploaded the PDF filters packages for Ubuntu 7.10,
> Fedora 7 and Fedora 8 at;
> http://sourceforge.jp/projects/opfc/files/
> 
> Ubuntu 7.10
>         opfc-pdf-filters_0.4-1ubuntu710.tgz
>         opfc-pdf-filters_0.4-1ubuntu710_i386.deb
> 
> Fedora 8
>         opfc-pdf-filters-0.4-1.fc8.i386.rpm
>         opfc-pdf-filters-0.4-1.fc8.src.rpm
> 
> Fedora7
>         opfc-pdf-filters-0.4-1.fc7.i386.rpm
>         opfc-pdf-filters-0.4-1.fc7.src.rpm
> 
> -----------------------------------------
> TORATANI Yasumasa
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> 

