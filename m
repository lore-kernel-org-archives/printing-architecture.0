Return-Path: <jsmeix@suse.de>
Date: Thu, 22 Nov 2018 10:20:22 +0100 (CET)
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
Message-ID: <alpine.LNX.2.00.1811220951410.24882@nelson.suse.de>
References: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Subject: Re: [Printing-architecture] IPP-over-USB and Printer Applications:
 DNS-SD-advertise localhost:PORT a security problem?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: David Valleau <valleau@chromium.org>, Sean Kau <skau@chromium.org>


Hello,

On Nov 21 23:26 Till Kamppeter wrote (excerpt):
> ... advertising ... via DNS-SD ... security problem

in general regarding DNS-SD and security see also
https://github.com/apple/cups/issues/5011

I think (but I know nothing at all about the details here)
advertising a locally connected USB printer via any method
(e.g. via DNS-SD) only on the local host should not result
that more users can access the USB printer than before.

Traditionally the device node of a locally connected USB printer
gets by default appropriate traditional Unix permissions so that
the user who runs the CUPS backend (usually user 'lp' group 'lp')
can access the USB printer (usually via the group 'lp').
This means local USB printer access is not permitted for each
individual local user (e.g. via appropriate group settings).
Direct USB printer access is not permitted for normal users.
For normal users USB printer access is only permitted
indirectly via CUPS.

Another crucial point with any kind of networking advertisments
of local USB printers is that the devices must not accidentally
become accessible to any remote user.


Kind Regards
Johannes Meixner
-- 
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
Graham Norton - HRB 21284 (AG Nuernberg)

