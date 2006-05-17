Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446B8F9E.5070306@gmx.net>
Date: Wed, 17 May 2006 23:03:26 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: Building PAPI implementation
References: <446B24E3.2080702@gmx.net> <446B3404.9060809@Sun.COM>
In-Reply-To: <446B3404.9060809@Sun.COM>
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


Now I got it RPMized so that it can be installed on a machine with
already installed CUPS. No I tried to make it actually working with the
installed CUPS. I found out by running an "lpr" command through strace
that it tries to load the non-existing "lpsched" service
(/usr/lib/psm-lpsched.so) and I have seen in the source code that
"lpsched" is used a s the default service (should not be as "lpsched"
does not ship with the package.

So I compile with

export CFLAGS="$CFLAGS -DDEFAULT_PRINT_SERVICE=ipp"
./configure --without-apache --without-ruby
make

to make it using "ipp" as default service (can one configure/switch the
service at run time? There are no files in /etc/... and no documentation
about such files, man pages are only in section 1 and 8, nothing in
section 5).

But with this setting it does not build:

------------------------------------------------------------------------------------
[...]
Making all in libpapi-dynamic
make[2]: Entering directory
`/home/tkamppeter/rpm/BUILD/papi/source/libpapi-dynamic'
if /bin/sh ../../libtool --tag=CC --mode=compile
i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
-I../../source/libpapi-common  -I. -DPSM_DIR=\"/usr/lib\"
-I../libpapi-common  -I./nss -DNSS_EMULATION   -I/usr/include/apr-1
-DDEFAULT_PRINT_SERVICE=ipp -MT psm.lo -MD -MP -MF ".deps/psm.Tpo" -c -o
psm.lo psm.c; \
then mv -f ".deps/psm.Tpo" ".deps/psm.Plo"; else rm -f ".deps/psm.Tpo";
exit 1; fi
mkdir .libs
 i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
-I../../source/libpapi-common -I. -DPSM_DIR=\"/usr/lib\"
-I../libpapi-common -I./nss -DNSS_EMULATION -I/usr/include/apr-1
-DDEFAULT_PRINT_SERVICE=ipp -MT psm.lo -MD -MP -MF .deps/psm.Tpo -c
psm.c  -fPIC -DPIC -o .libs/psm.o
if /bin/sh ../../libtool --tag=CC --mode=compile
i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
-I../../source/libpapi-common  -I. -DPSM_DIR=\"/usr/lib\"
-I../libpapi-common  -I./nss -DNSS_EMULATION   -I/usr/include/apr-1
-DDEFAULT_PRINT_SERVICE=ipp -MT service.lo -MD -MP -MF
".deps/service.Tpo" -c -o service.lo service.c; \
then mv -f ".deps/service.Tpo" ".deps/service.Plo"; else rm -f
".deps/service.Tpo"; exit 1; fi
 i586-mandriva-linux-gnu-gcc -DHAVE_CONFIG_H -I. -I.
-I../../source/libpapi-common -I. -DPSM_DIR=\"/usr/lib\"
-I../libpapi-common -I./nss -DNSS_EMULATION -I/usr/include/apr-1
-DDEFAULT_PRINT_SERVICE=ipp -MT service.lo -MD -MP -MF .deps/service.Tpo
-c service.c  -fPIC -DPIC -o .libs/service.o
service.c: In function 'service_load':
service.c:60: error: 'ipp' undeclared (first use in this function)
service.c:60: error: (Each undeclared identifier is reported only once
service.c:60: error: for each function it appears in.)
ICECREAM[19319]: Compiled on 192.168.2.67
make[2]: *** [service.lo] Error 1
make[2]: Leaving directory
`/home/tkamppeter/rpm/BUILD/papi/source/libpapi-dynamic'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/tkamppeter/rpm/BUILD/papi/source'
make: *** [all-recursive] Error 1
------------------------------------------------------------------------------------

Can you tell me how to get it correctly talking with CUPS? Thanks.

   Till


Norm Jacobs wrote:
> 
> The Apache support is only necessary if you want to supply IPP
> support for a print service that doesn't already have an IPP listener.
> We use it on Solaris, but if you are using CUPS, you don't need the
> listener.  That being said, I will be fixing it in the next few days when
> I fix it's Apache 2.X support.  In the meantime, you can configure
> --without-apache and it should avoid building the IPP listener
> module (mod_ipp.so).
> Thanks for the heads-up and the patch to the build infrastructure.
> 
>    -Norm
> 
> Till Kamppeter wrote:
> 
>> Now I am trying to build the PAPI package from
>> http://openprinting.sourceforge.net/ I am building the current
>> Subversion state, rev 164.
>>
>> There I have encountered some problems:
>>
>> - At first I needed to patch the build infrastructure a little bit to
>> make it compiling the Apache support. The patch on the acinclude.m4 file
>> you can find here:
>>
>> http://www.linuxprinting.org/till/tmp/papi-1.0-acinclude-m4-apache-apr1.patch
>>
>>
>> - Then I had a problem building the software, as
>> source/mod_ipp/mod_ipp.c includes the file apr_compat.h in case of
>> building with Apache support. According to
>>
>> http://www.apache.org/dist/apr/CHANGES-APR-1.2
>>
>> this header file was removed on the transition from APR 0.9.5 to 1.0.0
>> and I have 1.2.7 on Mandriva's Cooker. So here the Apache module needs
>> to be updated to the current Apache/APR API.
>>
>>    Till
>>   
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture
> 
> 
> 

