Return-Path: <sho@bbr.jp>
Date: Fri, 02 Mar 2012 21:08:15 +0900 (JST)
Message-Id: <20120302.210815.55716582.sho@bbr.jp>
From: Koji Otani <sho@bbr.jp>
In-Reply-To: <1330687322.32498.3.camel@rubik>
References: <CAD2FfiGa5qyHQ9q-CT6RcDzQU4Yyov2kxq-nB6cSB21CeivdqA@mail.gmail.com>
	<20120302.185849.486545915.sho@bbr.jp>
	<1330687322.32498.3.camel@rubik>
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
Subject: Re: [Printing-architecture] pdftopdf
Date: Fri, 02 Mar 2012 11:22:02 +0000
Message-ID: <1330687322.32498.3.camel@rubik>

twaugh> On Fri, 2012-03-02 at 18:58 +0900, Koji Otani wrote:
twaugh> > pdftopdf is linked to libpoppler.
twaugh> > And pdftopdf used some modified codes of poppler.
twaugh> 
twaugh> So, the parts that are copied from poppler would need explicit security
twaugh> maintenance outside of the poppler project.
twaugh> 
twaugh> Why do these files need to be copied?  Is there a way the poppler API
twaugh> could be changed to avoid the need for this?
twaugh> 

Changes I made are needless for poppler and poppler can't use them.
I used only a frame of codes in some files.

