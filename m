Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371677909;
	bh=s5HFWqHbH/mJZdhgr291gxwOCbfgLJLmfyLvTFVTISc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=Tbg+1eusfCdVtMt0vtSsEYTVHUuGTMXr9/yF/NapBJe/SAYKWACalYwt5x0uH4HAR
	C6cBap1pOzw/nuh0nYLBO7404Y1fI1nm1MBVSnBTGSGC5y/dDAY1GJrD8ETBnIyMtX
	Tm9tymez6PwtXagUrv5/gfb2m4ZtKRdBgM9qoPDHfNg==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <496B45A3-1240-4E1C-B4D9-F934599683D9@apple.com> (Michael Sweet's
	message of "Tue, 18 Jun 2013 08:15:11 -0400")
References: <51BA5B58.3080208@gmail.com> <m3d2rl67uu.fsf@carbon.jhcloos.org>
	<51BE39B8.6060704@gmail.com> <m3y5a82qr5.fsf@carbon.jhcloos.org>
	<496B45A3-1240-4E1C-B4D9-F934599683D9@apple.com>
Date: Wed, 19 Jun 2013 17:32:32 -0400
Message-ID: <m3zjulzsza.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Concept for PPD-less
	CUPS-spooled	printing on Bonjour-discovered network printers
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>

>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:
>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

TK>>> Only problem is that you cannot display the available options with
TK>>> the lpoptions command.

MS> There are some ways of getting the options to show, but long-term I
MS> plan on extending lpoptions to list the supported IPP options as well...

Cool.

That should leave the pdf-only submission format as the only issue.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
