Return-Path: <SRS0=8oUm=ML=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Thu, 10 Dec 2015 21:45:05 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20151210204505.GJ2905@var.home>
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
	<5669E0B4.9040009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5669E0B4.9040009@gmail.com>
Subject: Re: [Printing-architecture] Contributing braille embosser support
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

Hello,

Till Kamppeter, on Thu 10 Dec 2015 18:29:40 -0200, wrote:
> I am looking into integrating it into cups-filters,

Cool :)

> 1. PPD files: If there are different options, like LibLouis2, libLouis3, ...
> their name translations/long names should also be different,

Sure, easy :)

> 2. Cluttering of /usr/lib/cups/filter/: This directory should only contain
> the actual CUPS filters

> The auxiliary files should go into a separate directory, like
> /usr/share/cups/braille/

Sure, easy :)

> 3. Binary bytes in shell scripts: Some scripts, like
> drivers/index/textbrftoindexv3 contain binary bytes.

Right. I'll use bash's $'\015' then.

> Or do everything in C (this is even better),

I had been wondering about turning these into C indeed, but the shell
version seems to me easier to read and maintain actually.

Samuel
