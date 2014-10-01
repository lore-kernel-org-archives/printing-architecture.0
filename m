Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <542C0EDE.5060102@thax.hardliners.org>
Date: Wed, 01 Oct 2014 16:25:34 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <542A8535.4050602@gmail.com>
	<7948AB2C-721B-4A76-A876-963BA2C94EF7@apple.com>
	<542C03C3.2000805@gmail.com>
	<5367C603-0F23-4FF7-B032-BEE8E69136CE@apple.com>
In-Reply-To: <5367C603-0F23-4FF7-B032-BEE8E69136CE@apple.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Mopria
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Will Cooke <will.cooke@canonical.com>, "Kennedy,
	Smith (Wireless Architect)" <smith.kennedy@hp.com>, Till Kamppeter <till.kamppeter@gmail.com>

Hi Till,

On 01/10/14 15:48, Michael Sweet wrote:
> PCLm is a PDF-based raster format. Unfortunately, the spec is 
> currently only available via the Wi-Fi Alliance which means you need 
> to either pay for it or become a member (in which case it is "free"...)

there's an Apache-licensed PCLm generator (for Android) on github:

https://github.com/ibevilinc/WFDSPrintPlugin/blob/master/jni/wprint/plugins/lib_pclm.c
https://github.com/ibevilinc/WFDSPrintPlugin/tree/master/jni/wprint/plugins/genPCLm 
...etc...

which also seems to create some kind of job ticket.

   Tobias
