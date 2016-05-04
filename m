Return-Path: <jsmeix@suse.de>
Date: Wed, 4 May 2016 15:53:06 +0200 (CEST)
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
Message-ID: <alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
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

On May 4 12:49 Predut, Marius wrote (excerpt):
>> 4. Get the PostScript stream while print job filtering
>>     and analyze it.
>>
>> Newer Ghostscript versions provide the Ghostscript
>> devices ink_cov and inkcov that output ink coverage:
>> -----------------------------------------------------------
>> $ gs -q -dNOPAUSE -dBATCH -sDEVICE=ink_cov \
>>   -sOutputFile=/tmp/ink_cov.out \
>>   /usr/share/ghostscript/9.19/examples/colorcir.ps
>>
>> $ cat /tmp/ink_cov.out
>>   5.33833  5.95657  6.71122  4.25845 CMYK OK
...
> Thank you so much for this solution!
> The ink_cov/ inkcov is can be ip address?

Perhaps this is no solution for your use case.

I do not understand the meaning of "ip address" here.

Do you perhaps ask if this can be used to query a
network printer device from remote (via its IP address)
for its ink coverage of a particular printed page?

You cannot do that with Ghostscript.

To use Ghostscript this way you need to run it on a computer.

Ghostscript is a PostScript (and PDF) interpreter.

Ghostscript input is PostScript or PDF and its output is
what a particular so called "Ghostscript device" produces.

Usually Ghostscript devices produce other printer languages
like PCL or Ghostscript devices produce various kind of
raster data like JPEG or CUPS raster data.

But there are also special Ghostscript devices that
output special stuff like the ink coverage.

This means it only works when you have PostScript or PDF
as input and you must be able to run Ghostscript with
that PostScript or PDF input to get its ink coverage.

When you print that PostScript or PDF on a printer device
the actual ink/toner consumption of the printer device could
be noticeable different compared to the ink coverage report
of Ghostscript because the printer device may do its own
way how much of what ink/toner it puts on the paper.

Think about a toner-saving printing mode where the
printer device puts less ink/toner on the paper
compared to what Ghostscript had reported
versus
a high-quality photo printing mode where the
printer device puts more ink/toner on the paper
compared to what Ghostscript had reported.

For example to get real photo quality deep black
for 0 0 0 RGB (i.e. 100% black) the printer device
in CMYK mode may put 100% K plus additionally 15% C
and 15% M on the paper but Ghostscript would report
only the 100% K component because in its PostScript
input there is neither 15% C nor 15% M (there is
only 0 0 0 RGB which translates into 100% K).


Kind Regards
Johannes Meixner
-- 
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
Graham Norton - HRB 21284 (AG Nuernberg)

