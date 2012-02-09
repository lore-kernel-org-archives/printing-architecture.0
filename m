Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <4F32F021.2000302@gmail.com>
Date: Wed, 08 Feb 2012 18:25:55 -0800
Message-id: <77B8DBBE-CD22-4CB2-B6C3-146834C5EA63@apple.com>
References: <CD26E4AD-B675-4850-AAC4-BF07BDA5AA2B@apple.com>
	<4F316875.2020105@gmail.com>
	<2D5F0702-DD45-4500-93FB-87A77B26237B@apple.com>
	<4F32F021.2000302@gmail.com>
Subject: Re: [Printing-architecture] Removal of features in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Till,

On Feb 8, 2012, at 1:58 PM, Till Kamppeter wrote:
> ...
> I have implemented it this way now. The result is in
> 
> http://www.cups.org/str.php?L2890
> 
> With this patch applied to CUPS 1.5.2
> 
> echo -en '#CUPS-COMMAND\nAutoConfigure\n' | lpr -P <printer>
> 
> works now also for USB-connected PostScript printers when using the libusb-based USB backend.


Perfect, I'll merge the changes in for 1.5.3 and 1.6 when I get back from this week's PWG meeting.

Thanks!

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

