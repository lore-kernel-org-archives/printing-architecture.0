Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446C42EB.4020709@gmx.net>
Date: Thu, 18 May 2006 11:48:27 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Desktop_printing] Re: [Printing-architecture] Re: Building PAPI
	implementation
References: <446B24E3.2080702@gmx.net> <446B3404.9060809@Sun.COM>
	<446B8F9E.5070306@gmx.net>
In-Reply-To: <446B8F9E.5070306@gmx.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Norm Jacobs <Norm.Jacobs@Sun.COM>
Cc: printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Now I got it working with CUPS by changing the default print service at
compile time. The problem was the quoting. The current code

-----------------------------------------------------------------------
#ifndef DEFAULT_PRINT_SERVICE
#define DEFAULT_PRINT_SERVICE   "lpsched"
#endif

...

char *scheme = DEFAULT_PRINT_SERVICE;
-----------------------------------------------------------------------

requires from the user to supply also the quotes. So in the spec file I
had to do

-----------------------------------------------------------------------
export CFLAGS="$CFLAGS -DDEFAULT_PRINT_SERVICE=\\\"ipp\\\""
%configure --without-apache
%make
-----------------------------------------------------------------------

Note the quoted quotes in the first line. This I did not do in the first
place and therefore it broke.

But please still supply the documentation to configure PAPI at run time.
Also a possibility to define the compile time default by the configure
script, both by spooler auto discovery and also by command line option
would be great.

Note also that on the linker call(s) for the Ruby bindings the

-L$RPM_BUILD_DIR/papi/source/libpapi-dynamic/.libs

is missing. So I had to put

-----------------------------------------------------------------------
export LDFLAGS="$LDFLAGS -L$RPM_BUILD_DIR/papi/source/libpapi-dynamic/.libs"
-----------------------------------------------------------------------

before the "%configure" in the spec file.

   Till



Till Kamppeter wrote:
> Now I got it RPMized so that it can be installed on a machine with
> already installed CUPS. No I tried to make it actually working with the
> installed CUPS. I found out by running an "lpr" command through strace
> that it tries to load the non-existing "lpsched" service
> (/usr/lib/psm-lpsched.so) and I have seen in the source code that
> "lpsched" is used a s the default service (should not be as "lpsched"
> does not ship with the package.
> 
> So I compile with
> 
> export CFLAGS="$CFLAGS -DDEFAULT_PRINT_SERVICE=ipp"
> ./configure --without-apache --without-ruby
> make
> 
> to make it using "ipp" as default service (can one configure/switch the
> service at run time? There are no files in /etc/... and no documentation
> about such files, man pages are only in section 1 and 8, nothing in
> section 5).
> 
> But with this setting it does not build:
> 
> ------------------------------------------------------------------------------------
> [...]
> Making all in libpapi-dynamic
> make[2]: Entering directory
> `/home/tkamppeter/rpm/BUILD/papi/source/libpapi-dynamic'
> if /bin/sh ../../libtool --tag=CC --mode=compile
> i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
> -I../../source/libpapi-common  -I. -DPSM_DIR=\"/usr/lib\"
> -I../libpapi-common  -I./nss -DNSS_EMULATION   -I/usr/include/apr-1
> -DDEFAULT_PRINT_SERVICE=ipp -MT psm.lo -MD -MP -MF ".deps/psm.Tpo" -c -o
> psm.lo psm.c; \
> then mv -f ".deps/psm.Tpo" ".deps/psm.Plo"; else rm -f ".deps/psm.Tpo";
> exit 1; fi
> mkdir .libs
>  i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
> -I../../source/libpapi-common -I. -DPSM_DIR=\"/usr/lib\"
> -I../libpapi-common -I./nss -DNSS_EMULATION -I/usr/include/apr-1
> -DDEFAULT_PRINT_SERVICE=ipp -MT psm.lo -MD -MP -MF .deps/psm.Tpo -c
> psm.c  -fPIC -DPIC -o .libs/psm.o
> if /bin/sh ../../libtool --tag=CC --mode=compile
> i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
> -I../../source/libpapi-common  -I. -DPSM_DIR=\"/usr/lib\"
> -I../libpapi-common  -I./nss -DNSS_EMULATION   -I/usr/include/apr-1
> -DDEFAULT_PRINT_SERVICE=ipp -MT service.lo -MD -MP -MF
> ".deps/service.Tpo" -c -o service.lo service.c; \
> then mv -f ".deps/service.Tpo" ".deps/service.Plo"; else rm -f
> ".deps/service.Tpo"; exit 1; fi
>  i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
> -I../../source/libpapi-common -I. -DPSM_DIR=\"/usr/lib\"
> -I../libpapi-common -I./nss -DNSS_EMULATION -I/usr/include/apr-1
> -DDEFAULT_PRINT_SERVICE=ipp -MT service.lo -MD -MP -MF .deps/service.Tpo
> -c service.c  -fPIC -DPIC -o .libs/service.o
> service.c: In function 'service_load':
> service.c:60: error: 'ipp' undeclared (first use in this function)
> service.c:60: error: (Each undeclared identifier is reported only once
> service.c:60: error: for each function it appears in.)
> ICECREAM[19319]: Compiled on 192.168.2.67
> make[2]: *** [service.lo] Error 1
> make[2]: Leaving directory
> `/home/tkamppeter/rpm/BUILD/papi/source/libpapi-dynamic'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/home/tkamppeter/rpm/BUILD/papi/source'
> make: *** [all-recursive] Error 1
> ------------------------------------------------------------------------------------
> 
> Can you tell me how to get it correctly talking with CUPS? Thanks.
> 
>    Till
> 

