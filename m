Return-Path: <Norm.Jacobs@Sun.COM>
Message-ID: <44763048.4080605@Sun.COM>
Date: Thu, 25 May 2006 17:31:36 -0500
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Notes of today's telecon
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>


This is from Wendy.  It bounced on the printing-architecture list.

       -Norm


Hi -

We were discussing disk layout without notes from the previous week. I'm 
including them below.

SO,

    Till suggested /usr/share/ppd/supplier/language-tag

I would like to suggest:

    /usr/share/ppd/{supplier}/{manufacturer}/{manufacturer}-{model}-{language-tag}-{extra}.ppd 



My thinking is:

    The main reason to search for a ppd file is to find support for the 
target printer, ie need to know if support is present for that 
make-model. Only then does language become the point of interest. I'm 
not looking for all the printers which support <name your favorite 
language> but if support for the target printer is available. Only once 
I have this does the language selection process occur.

    Also, if we divide all the printers by the various languages, the 
directory tree cam become large with some directories containing just a 
few files.

    Till also suggested the "extra" tag. I'm not clear why. Till?

Comments?

-Wendy

---------------------  Notes from 15th
PPD

/usr/share/ppd/{supplier}/{manufacturer}-{model}.ppd

where whitespace and dash(-) are replaced with with unserscore(_)
supplier is the ppd file supplier (gutenprint, hplip, cups, epson,
                                              hp, ...)
manufacturer is the print manufacturer name from the IEEE 1284  Device ID
model is the printer model from the IEEE 1284 Device ID
        Eg.

/usr/share/ppd/gutenprint/Hewlett_Packard-hp_color_LaserJet_4650.ppd
           /usr/share/ppd/HP/Hewlett_Packard-hp_color_LaserJet_4650.ppd

     Driver
        /usr/lib/printerdriver/{supplier}/...
           where whitespace and dash(-) are replaced with with 
unserscore(_)
           supplier is the ppd file supplier (gutenprint, hplip, cups, 
epson,
                                              hp, ...)
        /usr/lib/printerdriver/bin/{supplier-executable(s)}
           links to executables in the {supplier} directory

        Eg.
           /usr/lib/prinerdriver/gutenprint/...
           /usr/lib/printerdriver/bin/gutenprintijs-5.0 -> 
../gutenprint/gutenprintijs-5.0
---------------------------



McDonald, Ira wrote:
> Hi,
>
> I agree with Wendy that I had been proposing language tag
> as the least significant directory, but looking at the two
> paths I prefer Till's specification (after supplier, but before 
> make-model-extra).
>
> Cheers,
> - Ira
>
> Ira McDonald (Musician / Software Architect)
> Blue Roof Music / High North Inc
> PO Box 221  Grand Marais, MI  49839
> phone: +1-906-494-2434
> email: imcdonald@sharplabs.com
>
>> -----Original Message-----
>> From: printing-architecture-bounces@lists.freestandards.org
>> [mailto:printing-architecture-bounces@lists.freestandards.org]
>> On Behalf
>> Of Till Kamppeter
>> Sent: Thursday, May 25, 2006 10:33 AM
>> To: Wendy Phillips
>> Cc: printing-architecture
>> Subject: Re: [Printing-architecture] Notes of today's telecon
>>
>>
>> Wendy Phillips wrote:
>>> I recall the ppd path differently:
>>>
>>> /usr/share/ppd/<supplier>/<make>/<model>/<language tag>
>>>
>> I remember that it was
>>
>> /usr/share/ppd/<supplier>/<language tag>/<make>-<model>-<extra info>.ppd
>>
>>> Comment on PPD files at Linuxprinting.org
>>>     As the user, if I select printer abc model 123, would I 
>> get a choice
>>> of suppliers? Such as, print vendor abc, gutenprint, 
>> linuxprinting.org,
>>> ... or is this for printer vendors exclusively?
>> You will get a choice of suppliers. Currently you can already choose
>> various drivers for one and the same model, and these are usually from
>> different suppliers. What will change in the future is that there will
>> be hosted or linked machine-installable binary packages of drivers for
>> automatization of installation of printers which are not (yet) known to
>> the actually installed distro.
>>
>>    Till
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.freestandards.org
>> http://lists.freestandards.org/cgi-bin/mailman/listinfo/printi
>> ng-architecture
>>
>> -- 
>> No virus found in this incoming message.
>> Checked by AVG Free Edition.
>> Version: 7.1.394 / Virus Database: 268.7.1/347 - Release Date: 5/24/2006
>>  
>>
>

