Return-Path: <jsmeix@suse.de>
Date: Mon, 9 May 2016 10:40:09 +0200 (CEST)
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <0E2B2CA4D522C14FBE8646D789EF72A01C54EF76@IRSMSX103.ger.corp.intel.com>
Message-ID: <alpine.LNX.2.00.1605091023180.24937@nelson.suse.de>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54EF76@IRSMSX103.ger.corp.intel.com>
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

On May 5 20:53 Predut, Marius wrote (excerpt):
>>>> 4. Get the PostScript stream while print job filtering
>>>>     and analyze it.
...
> I don't have access to the document sent for print

Then you cannot analyze the PostScript stream.

> I need a solution to query the counter printer
> and compound somehow the wanted value
> (an estimate toner spent for page)
> For example if I know effective area printed on
> a page I can estimate the coverage percent.
> The printer  have an IP address.
>
> So, do you have/see other solution here ?

I am afraid, I do not see another solution except
to query the network printer itself via SNMP.

I think when you can only access a network printer itself,
you can only query its internal counters/values via SNMP.

I do not know if usual network printers maintain an
internal counter/value that can be used to calculate
the average toner-coverage per page.

Only FYI:
For some possible issues that I noticed regarding SNMP
with network printers, you may have a look at
https://en.opensuse.org/SDB:Printer_Accounting


Kind Regards
Johannes Meixner
-- 
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
Graham Norton - HRB 21284 (AG Nuernberg)

