Return-Path: <sho@bbr.jp>
Date: Tue, 06 Mar 2012 14:46:53 +0900 (JST)
Message-Id: <20120306.144653.295962394.sho@bbr.jp>
From: Koji Otani <sho@bbr.jp>
In-Reply-To: <1330949378.9812.3.camel@rubik>
References: <1330689855.32498.25.camel@rubik>
	<20120302.213857.23722135.sho@bbr.jp>
	<1330949378.9812.3.camel@rubik>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] XPdf bundling in pdftoopvp as well
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
Cc: printing-architecture@lists.linux-foundation.org

From: Tim Waugh <twaugh@redhat.com>
Subject: Re: [Printing-architecture] XPdf bundling in pdftoopvp as well
Date: Mon, 05 Mar 2012 12:09:38 +0000
Message-ID: <1330949378.9812.3.camel@rubik>

twaugh> On Fri, 2012-03-02 at 21:38 +0900, Koji Otani wrote:
twaugh> > From: Tim Waugh <twaugh@redhat.com>
twaugh> > Subject: [Printing-architecture] XPdf bundling in pdftoopvp as well
twaugh> > Date: Fri, 02 Mar 2012 12:04:15 +0000
twaugh> > Message-ID: <1330689855.32498.25.camel@rubik>
twaugh> > 
twaugh> > twaugh> It looks like the same issue also affects pdftoopvp, although
twaugh> > twaugh> mysteriously the Glyph & Cog copyright notices seem to be absent.
twaugh> > twaugh> 
twaugh> > 
twaugh> > If you say about OPVPOutputdev.cc, pdftoopvp uses SplashOutputdev 
twaugh> > as a template to make a driver of poppler.  
twaugh> 

driver --> device

twaugh> I do; and there is an overflow in it.
twaugh> 
twaugh> I haven't even looked at pdftoopvp/oprs/*Splash*.cxx, but I expect those
twaugh> also have vulnerabilities of one form or another.
twaugh> 

oprs/*Splash*.cxx are not copied from poppler while they use poppler data.
There may have vulnerabilities, but it's not because of copying from
poppler. We should fix them in pdftoopvp.

---------
Koji Otani

