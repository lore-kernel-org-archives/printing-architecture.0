Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1372024951;
	bh=33CFTh9Wlb/aY59C1kBFYvUc97+CAuIbJhPQMRi6gf0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=XyHmNBnqJKcGV7LW39MAyCz9hRc/t1hdKrIDg4+v6beqpFjCJzSmlvCJB+7Zd/k64
	pfyH2GTvzccKt1ZgE6getzYV0/KmmzsH5ha2ZarBMm0VhyX1d13L2UKA0RAvdTeQvD
	Xcmb6S6l7/1g1J130dWitw3e79B94CPcdf1rWFfmeXQ==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <55D4A897-5D56-4ADB-B183-379512FB2631@apple.com> (Michael Sweet's
	message of "Thu, 20 Jun 2013 09:29:44 -0400")
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
	<m3txktzpf2.fsf@carbon.jhcloos.org>
	<55D4A897-5D56-4ADB-B183-379512FB2631@apple.com>
Date: Sun, 23 Jun 2013 18:00:33 -0400
Message-ID: <m34ncowkpx.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> Please file a bug against the OpenPrinting filters:

MS>     https://bugs.launchpad.net/ubuntu/+source/cups-filters

MS> When submitting a PostScript file to a PostScript printer, the
MS> preferred filter should be pstops.  The PDF filters should only get
MS> involved for non-PostScript print jobs.

https://bugs.linuxfoundation.org/show_bug.cgi?id=1138

(When I went looking through tabs to find the bug id number, I found
that I hadn’t hit Submit – or hadn’t pressed the button hard enough.
So it is dated Sunday instead of Friday....)

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
