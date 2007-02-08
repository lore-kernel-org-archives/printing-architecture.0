Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <45CA927F.2080306@Sun.COM>
Date: Wed, 07 Feb 2007 21:01:19 -0600
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
	<45CA2DDF.5000106@easysw.com>
In-Reply-To: <45CA2DDF.5000106@easysw.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Required prefixes for symbols in new
 OP	specs
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: printing-architecture@lists.freestandards.org, "McDonald,
	Ira" <imcdonald@sharplabs.com>

Michael Sweet wrote:
> McDonald, Ira wrote:
>   
>> Hi Olaf,
>>
>> What prefix (if any) are you currently using for PCM
>> functions, variables, and constants?
>>
>> There was a strong concensus at the OP Steering Committee
>> meeting this Monday that we should NOT use 'fsg' as the
>> beginning of the prefix for any specs that are not yet 
>> formally approved.
>>
>> Relative to Michael Sweet's comment about #define to 
>> make consistent prefix (e.g., in existing JTAPI C headers),
>> that may or may not fix problems of linkers - dynamic
>> linking in Linux appears rather limited relative to some
>> other platforms - my impression.
>>     
>
> This isn't an issue - you define the new prefix to point to
> the old name, e.g.:
>
>      #define opjt_foo fsgjt_foo
>
> The compiler and linker use the old names, as before.  The
> developer can use the new names and be none the wiser.
>   
FWIW, this will work for applications linking with libraries exporting 
the old interface, but will not solve the problem for loadable modules 
that are dlopen()'d and dlsym()'d.  In those cases, the shim method you 
mention below will work or using weak symbol associations in the 
loadable module will work.  the weak symbols have the advantage of not 
introducing any additional calling overhead.

This can be done with

#pragma weak   new_symbol_name = old_symbol_name

Of course if we don't migrate to new names, none of this matters.

          -Norm

> Another method is to provide shim functions for all of the
> old names, calling the new names.  That has a performance
> impact, however, so I recommend using #define instead.
>
> Enumerations and other constants can be done the same way...
>   

