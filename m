Message-ID: <489785AD.5060806@gmail.com>
Date: Tue, 05 Aug 2008 00:41:49 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>	<p06110400c4b793ad4cd1@[192.168.1.102]>	<200807312114.m6VLEhgd004613@dsl092-065-009.bos1.dsl.speakeasy.net>	<489230B6.8050306@gmail.com>	<200807312156.m6VLusVF004364@dsl092-065-009.bos1.dsl.speakeasy.net>	<4892B6A9.90609@gmail.com>	<200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>	<4892FDDB.5060104@gmail.com>	<20080801123314.GA26452@nagini.vm.bytemark.co.uk>	<489307A9.1020504@gmail.com>	<20080801130821.GC26452@nagini.vm.bytemark.co.uk>	<48930D59.3030003@gmail.com>
	<48934778.1080504@apple.com>	<87ej58mptc.fsf@hardknott.home>
	<4893A466.5040103@apple.com>	<87tze4l0sr.fsf@hardknott.home>	<200808020120.m721K3Uw007245@dsl092-065-009.bos1.dsl.speakeasy.net>	<87wsizvbdh.fsf@hardknott.home>
	<87ej57v8gj.fsf@hardknott.home>	<48976FB0.5020806@gmail.com>
	<873alk8lwp.fsf@hardknott.home>
In-Reply-To: <873alk8lwp.fsf@hardknott.home>
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



Roger Leigh wrote:
> Well, the problem here is simple.  The program fails as expected
> because you *don't have a valid locale* for the testcase to use:
> 
>   // Initial setlocale call must succeed, or else we're still in a C
>   // locale, and gettext won't translate at all.
>   const char *l1 = setlocale(LC_ALL, "en_GB.ISO-8859-1");
> 
> Do you have a valid en_GB.ISO-8859-1 locale?  If not, then change this
> to a different locale (e.g. "" to use your en_US locale), or generate
> the locale.  To do the test as I requested above however, you *must*
> start off in a non-UTF-8 locale to verify that the UTF-8 transcoding
> is working properly, or else the test is not useful, though it will
> verify we can do lookups while using "invalid" locales.
> 
> What results do you get if you fix this?

Now the results are better.

I did

sudo locale-gen en_US.ISO-8859-15
    (locale must be listed in /usr/share/i18n/SUPPORTED)

edited gettext-test.c to have a line

const char *l1 = setlocale(LC_ALL, "en_US.ISO-8859-15");

and all the rest like before.

Then I get as screen output:

setlocale1: en_US.ISO-8859-15
setlocale2: (null)
setlocale3: en_US.ISO-8859-15
domain: /home/till/gutenprint/cvs/HEAD/x
codset (null)->UTF-8
selected-domain: gutenprint
lookup: Foto aus fünf Farben gemischt
dlookup: Foto aus fünf Farben gemischt

So in this case translations work and encoding works. st.out is 
attached. So this means that the system needs at least one non-C locale 
and the PPD generator has to find and select it.

    Till
