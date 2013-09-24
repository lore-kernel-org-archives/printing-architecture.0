Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=uZHc2MRxSqxyjSJJwWKwtiHQcpA8QuNovbqRHqtocbo=;
	b=V3CVRRUi+HvnnYqEsT3mCtllqEymZwieiazXKfi2iiRIrcIaAI6df2cIBELghFE0D+
	C7OcznOPZ6t2zuMf4Z2ZZcRELWINxlL/7+2LGI4qnh0nj2PnGdjGZJ4JTgUn14GlV1A0
	I3CmrrDttGLnD9k8tXdrtMQ9O2Mr5Df/d3ManI/nVLoh75gUxwnqR49QsqqDltWBByhQ
	I//3zWPapN1fQT5+LvkUsdrFPl7izE9qdMJ+18EQzB6Mgb+3tIJ3E4XRipcAE6e9IM4z
	PlEGdwANVEvNUDHYhSHjqHgMKFCG0cCNuSK03xFPB8yC98koJ3bM6mpb/v49nRF/4+Q4
	BIiw==
Message-ID: <5241C46A.4000102@gmail.com>
Date: Tue, 24 Sep 2013 18:57:14 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <86D7B6CC-E6E0-4620-91D4-DB9A3ABD1534@apple.com>
In-Reply-To: <86D7B6CC-E6E0-4620-91D4-DB9A3ABD1534@apple.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] CUPS 1.6.4
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi,

thank you for the announcement.

I am using CUPS 1.7rc1 in the upcoming Ubuntu Saucy (13.10). To get all
the latest fixes into Saucy, I want to know which of the 1.6.4 features
I do not have in 1.7rc1 and also which fixes are applied to the 1.7 line
towards 1.7.0 final and whether you can send me patches or simply issue
1.7rc2 so that I can have a CUPS as up-to-date and bug-fixed as possible
for Saucy.

Thanks in advance.

   Till


On 09/24/2013 06:47 PM, Michael Sweet wrote:
> CUPS 1.6.4 is now available for download from:
> 
> http://www.cups.org/software.php
> 
> The new release fixes some minor printing issues, add support for USB
> "quirks" files on Linux, and adds a new cupsd SyncOnClose directive.
> Changes include:
> 
> • Removed some duplicate size definitions for some ISO sizes that were
> causing problems (<rdar://problem/14722721>)
> • The IPP backend did not add the "last-document"
> attribute (<rdar://problem/114660379>)
> • Added a SyncOnClose directive to cups-files.conf to force cupsd to
> call fsync before closing any configuration/state files it writes
> (<rdar://problem/14523043>)
> • Added USB quirk rule for Lexmark E238 (<rdar://problem/14493054>)
> • Closed server connections were still not always
> detected (<rdar://problem/14484313>)
> • The libusb-based USB backend now loads its list of quirks from files
> in /usr/share/cups/usb instead of using a hardcoded
> table (<rdar://problem/14442769>)
> • The scheduler did not properly register ICC color profiles with
> colord (<rdar://problem/14455625>)
> 
> Enjoy!
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 

