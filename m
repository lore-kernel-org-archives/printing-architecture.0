Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=f3C6SNXOAQQ0rOgf3DDVXB8KDCeqroq7ynPGILsIuvw=;
	b=t+GuybcQzYhmfznxlLTy3iVzWAKJ5AUtu4SgaWFU01Qr6DRNt5vOALG5hVg7899rCm
	WI8yf2c1ULmqQhF/ric+EMH4bQiK8Fm57C35Tsm/OOu28UUGjtmPlscIdF5IdND1rRbV
	E2z/nzSRaoN8QjoxHJuSSPbewmr4qjUfFJ8sL8kLu7WRsTesbVz5qWoyTNOO7hCM/pCj
	qS3mFPPQ8YfTqxsI7PQXA54Aj64g+5Jx3ZUWYsq2QDovx2uYUDoArZ3wl4KPm6Nbdo3J
	GKWgoxletyf+ErzEY45hIbihJO91+e3LWQs8m7Vyi0MdpRt965jxXnA+fj8w0o7XIy8s
	vLlg==
Message-ID: <542AE153.9030600@gmail.com>
Date: Tue, 30 Sep 2014 18:58:59 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1412092717.5614.61.camel@obry.net>
In-Reply-To: <1412092717.5614.61.camel@obry.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] bug report about color management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Joseph Simon <jsimon383@gmail.com>

Joseph, can you have a look into this issue? Thanks.

   Till

On 09/30/2014 05:58 PM, Pascal Obry wrote:
> 
> After discussion on the gimp-print-devel@ mailing-list I've been
> redirected here.
> 
> I've found out that the regression (as reported in my previous message
> on this mailing-list) about the color management support on GNU/Debian
> has been introduced between CUPS 1.7.5-1 and 1.7.5-2. The ColorManaged
> CUPS option has been renamed CM-Calibration.
> 
> So it looks like a patch rejected by Apple/CUPS.org is bundled with
> GNU/Debian CUPS package starting with the second build of CUPS 1.7.5.
> 
> The side effect is that this "destroy" the color-management and the
> prints are really bad. For the record I'm printing on GNU/Linux since at
> least 2 years with an home made ICC profile.
> 
> How to proceed? Do you confirm this is a bug?
> 
> Thanks,
> 

