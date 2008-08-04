Message-ID: <48971513.6050202@gmail.com>
Date: Mon, 04 Aug 2008 16:41:23 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>	<p06110400c4b793ad4cd1@[192.168.1.102]>	<200807312114.m6VLEhgd004613@dsl092-065-009.bos1.dsl.speakeasy.net>	<489230B6.8050306@gmail.com>	<200807312156.m6VLusVF004364@dsl092-065-009.bos1.dsl.speakeasy.net>	<4892B6A9.90609@gmail.com>	<200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>	<4892FDDB.5060104@gmail.com>	<20080801123314.GA26452@nagini.vm.bytemark.co.uk>	<489307A9.1020504@gmail.com>	<20080801130821.GC26452@nagini.vm.bytemark.co.uk>	<48930D59.3030003@gmail.com>
	<48934778.1080504@apple.com>	<87ej58mptc.fsf@hardknott.home>
	<4893A466.5040103@apple.com>	<87tze4l0sr.fsf@hardknott.home>	<200808020120.m721K3Uw007245@dsl092-065-009.bos1.dsl.speakeasy.net>	<87wsizvbdh.fsf@hardknott.home>
	<87ej57v8gj.fsf@hardknott.home>
In-Reply-To: <87ej57v8gj.fsf@hardknott.home>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
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
To: Roger Leigh <rleigh@whinlatter.ukfsn.org>
Cc: Robert Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com

I have tried your test program on a system with English, French, and 
German locales installed and get no translated text in the output.

My locale settings:

till@till-laptop:~/gutenprint/cvs/HEAD/print$ locale
LANG=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL=
till@till-laptop:~/gutenprint/cvs/HEAD/print$

Also running with "LC_ALL=" or "LC_ALL=en_GB.ISO-8859-1" did not change 
anything.

    Till


    Till

Roger Leigh wrote:
> Roger Leigh <rleigh@whinlatter.ukfsn.org> writes:
> 
>> As a result, I would suggest
>>
>> - simplifying stp_setlocale by removing the langage->locale mappings
>>   (no longer needed).  It could even just wrap setlocale with no
>>   additional work.
>>
>> - simplify genppd set_language by simply doing
>>   setenv("LANGUAGE, language, 1);
>>
>> By not messing with the locale, we remove the need for exotic locales
>> to exist--we just rely on the user having a working non-C locale.
>>
>> Obviously, this needs testing on Solaris and BSD systems (I guess
>> MacOS X won't use this code).  Does anyone have access to such systems
>> to test?
> 
> If anyone could test using the program I posted, that would be very
> helpful.  Testing on other BSD, Solaris, UNIX and Linux systems would
> be great.  I'm using glibc-2.7/gettext-0.17.
> 
> http://nagini.vm.bytemark.co.uk/~rleigh/gettext-test.c
> http://nagini.vm.bytemark.co.uk/~rleigh/gutenprint.mo
> 
> You'll need to
> - save gutenprint.mo as <foo>/de_GB/LC_MESSAGES/gutenprint.mo
> - set localedir to <foo> in gettext-test.c
> - set _GNU_SOURCE to _BSD_SOURCE in gettext-test.c (or whatever needs
>   doing to get setenv() prototyped on BSD)
> 
> Build with "gcc -std=c99 -o gettext-test gettext-test.c
> Run ./gettext-test
> 
> You should see something similar to:
> 
> % ./gettext-test
> setlocale1: en_GB.ISO-8859-1
> setlocale2: (null)
> setlocale3: en_GB.ISO-8859-1
> domain: /usr/share/locale
> codset (null)->UTF-8
> selected-domain: gutenprint
> lookup: Foto aus fünf Farben gemischt
> dlookup: Foto aus fünf Farben gemischt
> 
> To make the test most realistic, start by setting a non-UTF-8-locale
> such as en_GB.ISO-8859-1 (any locale except C that is not UTF-8 is
> good).  This tests correct recoding into UTF-8.  This is also why we
> are using an ISO-8859-1 message catalogue.  Above we see correct UTF-8
> output for a catalogue without a valid system locale, which is the
> objective.
> 
> 
> Regards,
> Roger
> 

