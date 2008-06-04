References: <484541C0.3060501@gmail.com>
	<20080604.105602.104056266.sho@bbr.jp> <48465B3D.4080809@gmail.com>
	<20080604.181746.02274177.sho@bbr.jp> <484683B0.2060708@gmail.com>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Thu, 05 Jun 2008 08:16:48 +0900
In-Reply-To: <484683B0.2060708@gmail.com> (Till Kamppeter's message of "Wed\,
	04 Jun 2008 13\:59\:44 +0200")
Message-ID: <87ve0odc4f.fsf@geek.avasys.jp>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: toratani.yasumasa@canon.co.jp, printing-architecture@lists.linux-foundation.org, Koji Otani <sho@bbr.jp>

Till Kamppeter <till.kamppeter@gmail.com> writes:

> Thank you, now the package rebuilds correctly for me. Next step to fix 
> now for you is to eliminate the necessity of full copies of the Poppler 
> and CUPS source code in the package.

For the record, the "errors" were caused by telling gcc to treat
warnings as errors (see snippet below).  I have not checked the
opfc-pdf-filters sources but this is not the default gcc behaviour,
AFAIK.

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

While I am generally inclined to do this myself, it is a bit of a
mixed blessing as not all gcc versions of all distribution flag the
same things as warnings.  If adding your own warnings to -Wall, you
will very likely compound the issue.

In this particular case, converting string constants to `char *`, I
would say it should be fixed.

> [snip]

Hope this helps,
-- 
Olaf Meeuwissen                   FLOSS Engineer -- AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
