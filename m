Return-Path: <sho@bbr.jp>
Date: Fri, 02 Mar 2012 13:03:33 +0900 (JST)
Message-Id: <20120302.130333.126929817.sho@bbr.jp>
From: Koji Otani <sho@bbr.jp>
In-Reply-To: <1330610112.28173.5.camel@rubik>
References: <1330600735.18587.3.camel@rubik> <4F4F6D64.7030100@gmail.com>
	<1330610112.28173.5.camel@rubik>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: twaugh@redhat.com
Cc: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com

From: Tim Waugh <twaugh@redhat.com>
Subject: Re: pdftopdf
Date: Thu, 01 Mar 2012 13:55:12 +0000
Message-ID: <1330610112.28173.5.camel@rubik>

twaugh> On Thu, 2012-03-01 at 13:36 +0100, Till Kamppeter wrote:
twaugh> > Tim, I did not know that. At least it links against libpoppler.
twaugh> > 
twaugh> > Otani-san, is there still code-duplication of XPDF or Poppler in the 
twaugh> > pdftopdf filter? Can this be avoided?
twaugh> > 
twaugh> > Tim, which version of pdftopdf are you looking at?
twaugh> 
twaugh> I'm looking at the pdftopdf from cups-filters-1.0.2.
twaugh> 
twaugh> $ grep -l 'Glyph & Cog' *
twaugh> P2PCharCodeToUnicode.cxx
twaugh> P2PCharCodeToUnicode.h
twaugh> P2PCMap.cxx
twaugh> P2PCMap.h
twaugh> P2PGfx.cxx
twaugh> P2PGfx.h
twaugh> parseargs.cxx
twaugh> parseargs.h
twaugh> 
twaugh> These are from xpdf aren't they?  Or copied from poppler?
twaugh> 

Yes, these files have codes copied from poppler.
pdftopdf uses poppler for what poppler can do.
Some of these files are copied from poppler to compiles it without
 poppler sourcecode files.

----
Koji Otani
