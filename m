References: <20080604.181746.02274177.sho@bbr.jp> <484683B0.2060708@gmail.com>
	<87ve0odc4f.fsf@geek.avasys.jp>
	<20080605.181530.212681540.sho@bbr.jp>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Fri, 06 Jun 2008 08:35:41 +0900
In-Reply-To: <20080605.181530.212681540.sho@bbr.jp> (Koji Otani's message of
	"Thu\, 05 Jun 2008 18\:15\:30 +0900 \(JST\)")
Message-ID: <87skvrh2uq.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
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
Cc: toratani.yasumasa@canon.co.jp, printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com

Koji Otani <sho@bbr.jp> writes:

> olaf.meeuwissen> Till Kamppeter <till.kamppeter@gmail.com> writes:
> olaf.meeuwissen> 
> olaf.meeuwissen> > Thank you, now the package rebuilds correctly for me. Next step to fix 
> olaf.meeuwissen> > now for you is to eliminate the necessity of full copies of the Poppler 
> olaf.meeuwissen> > and CUPS source code in the package.
> olaf.meeuwissen> 
> olaf.meeuwissen> For the record, the "errors" were caused by telling gcc to treat
> olaf.meeuwissen> warnings as errors (see snippet below).  I have not checked the
> olaf.meeuwissen> opfc-pdf-filters sources but this is not the default gcc behaviour,
> olaf.meeuwissen> AFAIK.
> olaf.meeuwissen> 
> olaf.meeuwissen>   make[2]: Entering directory 
> olaf.meeuwissen>   `/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/pdftopdf/src'
> olaf.meeuwissen>   g++ -DHAVE_CONFIG_H -I. -I.. 
> olaf.meeuwissen>   -I/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6//poppler 
> olaf.meeuwissen>   -I/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6/ 
> olaf.meeuwissen>   -DCONFFILE_DIR=\"/etc/cups\" -DPDFTOPDF 
> olaf.meeuwissen>   -I/home/till/ubuntu/opfc-pdf-filters/tmp/opfc-pdf-filters-0.4/poppler-0.6//poppler 
> olaf.meeuwissen>     -Wall -Werror -g -O2 -MT pdf2pdf-P2PCatalog.o -MD -MP -MF 
> olaf.meeuwissen>   .deps/pdf2pdf-P2PCatalog.Tpo -c -o pdf2pdf-P2PCatalog.o `test -f 
> olaf.meeuwissen>   'P2PCatalog.cc' || echo './'`P2PCatalog.cc
> olaf.meeuwissen>   cc1plus: warnings being treated as errors
> olaf.meeuwissen> 
> olaf.meeuwissen> While I am generally inclined to do this myself, it is a bit of a
> olaf.meeuwissen> mixed blessing as not all gcc versions of all distribution flag the
> olaf.meeuwissen> same things as warnings.  If adding your own warnings to -Wall, you
> olaf.meeuwissen> will very likely compound the issue.
> olaf.meeuwissen> 
> olaf.meeuwissen> In this particular case, converting string constants to `char *`, I
> olaf.meeuwissen> would say it should be fixed.
> olaf.meeuwissen> 
> olaf.meeuwissen> > [snip]
> olaf.meeuwissen> 
> olaf.meeuwissen> Hope this helps,
>
> This warnings are caused by a declaration in a header of Poppler.
> When compiling poppler, '-Wno-write-strings' is specified by poppler's
> 'configure'!!

Still, that only results in warnings, not errors, unless -Werror is
given as above.

BTW, -Wno-write-strings seems to have been included in -Wall somewhere
around gcc-4.2.3.  It's a good thing (but annoying if you end up with
a few hundred places that need fixing ;-).

Anyway, as Till said, these are poppler issues (if all you did is make
some non-public poppler API public) and should be fixed upstream.

Hope this helps,
-- 
Olaf Meeuwissen                   FLOSS Engineer -- AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
