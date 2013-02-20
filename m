Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51250BEB.5000608@gmail.com>
Date: Wed, 20 Feb 2013 14:49:24 -0500
Message-id: <4B3760D9-12A3-4B91-B2EC-175AC03118A3@apple.com>
References: <51250BEB.5000608@gmail.com>
Subject: Re: [Printing-architecture] Printers with native CUPS Raster or PWG
	Raster support
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till,

I am not aware of any shipping IPP Everywhere printers.

The HP Color LaserJet 2600 reports CUPS Raster as one of its supported formats, but I have no idea which version, resolution, color space, bit depth, etc. to use with it and the printer does not support IPP (the 2605 *does* support IPP but not CUPS Raster...)

The closest you can get is to use the ippserver program in the test subdirectory of CUPS.


On 2013-02-20, at 12:46 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> Hi,
> 
> can you tell me whether there are already printers on the market which
> natively support CUPS Raster or PWG Raster?
> 
> I would like to get such a printer for testing.
> 
>   Till

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

