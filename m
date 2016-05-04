Return-Path: <jsmeix@suse.de>
Date: Wed, 4 May 2016 11:02:52 +0200 (CEST)
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
Message-ID: <alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Subject: Re: [Printing-architecture] snmp - average-toner-coverage per page
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Predut, Marius" <marius.predut@intel.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


Hello,

On May 3 16:35 Predut, Marius wrote (excerpt):
> After I print page I want to know average-toner-coverage-per-page
> (a kind of Cost per Page).
> To do it are 3 possibilities:
>
> 1. Get the amount of toner used and rapport it to a
>    standard (%5 coverage) - prices
> 2. Get the effective printed area relative to the paper
>    (supppoe user print only halp of paper) - less precise
> 3. Get the stream from printer and analyze it.

4. Get the PostScript stream while print job filtering
    and analyze it.

Newer Ghostscript versions provide the Ghostscript
devices ink_cov and inkcov that output ink coverage:
-----------------------------------------------------------
$ gs -q -dNOPAUSE -dBATCH -sDEVICE=ink_cov \
  -sOutputFile=/tmp/ink_cov.out \
  /usr/share/ghostscript/9.19/examples/colorcir.ps

$ cat /tmp/ink_cov.out
  5.33833  5.95657  6.71122  4.25845 CMYK OK

$ gs -q -dNOPAUSE -dBATCH -sDEVICE=inkcov \
  -sOutputFile=/tmp/inkcov.out \
  /usr/share/ghostscript/9.19/examples/colorcir.ps

$ cat /tmp/inkcov.out
  0.09991  0.08222  0.08234  0.08425 CMYK OK
-----------------------------------------------------------
See "Ink coverage output" in
http://www.ghostscript.com/doc/current/Devices.htm#Test


Kind Regards
Johannes Meixner
-- 
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
Graham Norton - HRB 21284 (AG Nuernberg)

