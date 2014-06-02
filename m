Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1401733707;
	bh=8DdvjqXPLN6gQoUcAI3j8s3Fh3bX/pHPIjHF/YjAmC8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=gx+iMlRwZluI4a7p6sV+48pmmMrIUR/RFTay/ZswRkyI7iB0Dctts98Ne95H8CFFR
	YupxXR9n60xQGnfVcqBQvwQ07gRThWrdTr2iYkVfX6eI/Jf0KskVktLsqcKX671h1F
	JcMCofyT0jBhTkvm2eZJvxE3l/58zk5FYdCLv6hI=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com> (Michael Sweet's
	message of "Mon, 02 Jun 2014 07:53:36 -0400")
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
	<m3oayc85fp.fsf@carbon.jhcloos.org>
	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>
Date: Mon, 02 Jun 2014 14:24:58 -0400
Message-ID: <m361kj88z0.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
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

MS> What standard defines sGray?

Every search I did returned gs's sgray (which is a simple 2.2 with the
whitepoint I mentioned) and references to multi-ink black-and-white
photograph printing which all said 2.2.  I do not recall mention of
the whitepoint for most of the latter, but one implied Lab(1.0,0.0,0.0).
(or Lab(100.0,0.0,0.0) if one prefers [0 100 -127 127 -127 127].)

I didn't see *any* search results referencing srgb's transfer function
except the cupsraster document.  The pwg raster document didn't show
up in the search.

I found no evidence, when I searched, that Apple prefers otherwise.
And some of the photographers mentioned using osx.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
