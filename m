Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=NX5dTKw/vkkGCvn5BxlbOrm1Hz7qPsN0uGq6FpjcrEs=;
	b=EYQRSx+8GcquS4Wtlr1avuSjk+aPMCs/FsXvqbAAIgl7zqgeUuFNNC9hj90agYoSWb
	5ToN6sbiz2KReNZaOeyVoskp5Fz0y6tiXaS8QAjP0xlxSUmcA7EoXPbPAb4V37qwI0mr
	2HSKW++rJgi5pXBShQDt2/faPFsTqUKlI2NDdLhhH/Z2vd7KXAe7vdlrZHIXTESnlIPt
	57h8LhJaNkrvMVosuOdaCStHrXGrYDmGZ/TeiV8SsW/AnCFOkKn03CU2bQg7+CUvVZ3N
	xj/KguIOxAXQM6bnr/zHGrhini2B2WYqGMzGT6X71hbqsPYXh7kzcrbHhZKMSrvQpDZ5
	A4xw==
Message-ID: <559D7321.8070804@gmail.com>
Date: Wed, 08 Jul 2015 15:59:45 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <559B2849.7060907@gmail.com> <m3egkk5ft5.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507071604010.29822@nelson.suse.de>
	<m38uas552b.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507081104010.31457@nelson.suse.de>
	<CAN40gSuQ70vpuCMX=1QCxiO0a+78y5G3OykniJepA08fM8V9Ng@mail.gmail.com>
In-Reply-To: <CAN40gSuQ70vpuCMX=1QCxiO0a+78y5G3OykniJepA08fM8V9Ng@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Upstream future of ippusbxd
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Johannes Meixner <jsmeix@suse.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org, James Cloos <cloos@jhcloos.com>

Yes, I will maintain ippusbxd as a separate upstream package, and I will 
maintain it in a GIT repository. The only question is how to do it. 
There are two possibilities:

1. Create the GIT repo on the OpenPrinting web server, probably the 
Linux Foundation has already other problems under GIT. And they also 
have Bugzilla for bug tracking. In addition, move the other OpenPrinting 
projects to GIT.

2. Create an organization named OpenPrinting on GitHub and move ippusbxd 
to there. Move also the other projects to there converting them to GIT. 
And then keep Bugzilla on OpenPrinting or use the GitHub issue tracker 
instead?

WDYT? Which is the better method? And why?

    Till


On 07/08/2015 09:40 AM, Ira McDonald wrote:
> Hi,
>
> When Till and I talked about this on yesterday's OP monthly call,
> we concluded that keeping ippusbxd in a separate package was
> the best choice.  Till said that he would move the code to a Git
> repository (I hope this pleases you Tim) and link it off the Open
> Printing website.
>
> If anyone objects to keeping ippusbxd in a separate package,
> please speak up now.
>
> Cheers,
> - Ira

