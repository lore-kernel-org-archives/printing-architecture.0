Return-Path: <sho@bbr.jp>
Date: Fri, 02 Mar 2012 21:38:57 +0900 (JST)
Message-Id: <20120302.213857.23722135.sho@bbr.jp>
From: Koji Otani <sho@bbr.jp>
In-Reply-To: <1330689855.32498.25.camel@rubik>
References: <1330689855.32498.25.camel@rubik>
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
Subject: [Printing-architecture] XPdf bundling in pdftoopvp as well
Date: Fri, 02 Mar 2012 12:04:15 +0000
Message-ID: <1330689855.32498.25.camel@rubik>

twaugh> It looks like the same issue also affects pdftoopvp, although
twaugh> mysteriously the Glyph & Cog copyright notices seem to be absent.
twaugh> 

If you say about OPVPOutputdev.cc, pdftoopvp uses SplashOutputdev 
as a template to make a driver of poppler.  

twaugh> I found a security issue in the first file I looked at.
twaugh> 
twaugh> Please can everyone stop bundling bits of xpdf and poppler, both of
twaugh> which regularly have security issues discovered?
twaugh> 
twaugh> Thanks,
twaugh> Tim.
twaugh> */
twaugh> 

----
Koji Otani
