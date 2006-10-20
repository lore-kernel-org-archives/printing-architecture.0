Return-Path: <mihara.osamu@fxpsc.co.jp>
Message-ID: <45387F86.9030200@fxpsc.co.jp>
Date: Fri, 20 Oct 2006 16:49:26 +0900
From: Osamu MIHARA <mihara.osamu@fxpsc.co.jp>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D10EF3A@mailsrvnt05.enet.sharplabs.com>
	<45387AC6.6040602@fxpsc.co.jp>
In-Reply-To: <45387AC6.6040602@fxpsc.co.jp>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-sc] OPVP notes
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-sc@freestandards.org, printing-japan@freestandards.org, printing-architecture@freestandards.org, Takaaki Higuchi <Takaaki.Higuchi@Sun.COM>

Also upload the header file correspond to this version of spec.

ftp://ftp.pwg.org/pub/pwg/fsg/vector/work-in-progress/fsgpd-20061020.tar.gz

on 2006/10/20 16:29 Osamu MIHARA said the following:
> Hello,
> 
> I have updated OPVP spec with Norm's and Ira's comments and upload it to 
> pwg ftp site.
> 
> ftp://ftp.pwg.org/pub/pwg/fsg/vector/work-in-progress/pdapi-spec-1.0rc20061020.odt
> ftp://ftp.pwg.org/pub/pwg/fsg/vector/work-in-progress/pdapi-spec-1.0rc20061020.pdf
> 
> -- Osamu MIHARA // FXPS
> 
> on 2006/10/14 4:37 McDonald, Ira said the following:
>> Hi,
>>
>> Yes, the OPVP spec should be updated for these observations.  
>>
>> The section on page 17 of 'pdapi-spec-1.0RC20060711.pdf' named
>> 'Attribute of Job, Document and Page for Job Control Operations'
>> currently contains the following text on lines 16 to 20:
>>
>>   For <scheme>, "updf" can be designated.
>>
>>   If scheme is updf, the format follows the definition by UPDF 
>>   (Universal Printer Driver Description File) by Printer Working
>>   Group.
>>
>>   It if preferable that the driver ignores unknown property, for 
>>   future extensions.
>>
>> All of the above text should be deleted and replaced by the
>> following:
>>
>>   Conforming implementations of this PDAPI specification MUST support
>>   the "updf" value for <scheme> as defined in IEEE-ISTO PWG 5101.4
>>   "Universal Printer Definition Format" (May 2004) developed by the
>>   Printer Working Group.
>>
>>   Conforming implementations of this PDAPI specification MUST ignore
>>   unknown properties, for compatibility with future vendor or standard
>>   extensions.
>>
>> Thanks,
>> - Ira
>>
>> Ira McDonald (Musician / Software Architect)
>> Blue Roof Music / High North Inc
>> PO Box 221  Grand Marais, MI  49839
>> phone: +1-906-494-2434
>> email: imcdonald@sharplabs.com
>>
>>> -----Original Message-----
>>> From: printing-sc-bounces@lists.freestandards.org
>>> [mailto:printing-sc-bounces@lists.freestandards.org]On Behalf 
>>> Of Takaaki
>>> Higuchi
>>> Sent: Friday, October 13, 2006 2:36 AM
>>> To: printing-sc@freestandards.org
>>> Subject: Re: [Printing-sc] OPVP notes
>>>
>>>
>>> Hi,
>>>
>>> As you guys have already commented on the OPVP
>>> specification, I have several questions.
>>>
>>> How do we proceed on this standardization process from now on?
>>> - Should we reflect the comments and its modifications to the OPVP
>>>   spec?
>>> - If it is done, can we proceed for voting to the SC approval of OPVP
>>>   spec?
>>>
>>> thanks in advance,
>>> Takaaki HIguchi
>>>
>>> _______________________________________________
>>> Printing-sc mailing list
>>> Printing-sc@lists.freestandards.org
>>> http://lists.freestandards.org/mailman/listinfo/printing-sc
>>>
> 
> _______________________________________________
> Printing-sc mailing list
> Printing-sc@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-sc
> 
> 

