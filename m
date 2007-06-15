Return-Path: <osamu.mihara@fujixerox.co.jp>
Message-ID: <4672146D.6030103@fujixerox.co.jp>
Date: Fri, 15 Jun 2007 13:24:13 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D10EF3A@mailsrvnt05.enet.sharplabs.com>	
	<4671CDAD.6050409@fujixerox.co.jp>
	<e395be80706142051g74848370v2ee0ab2917596a8e@mail.gmail.com>
In-Reply-To: <e395be80706142051g74848370v2ee0ab2917596a8e@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OPVP spec RC4
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-japan@freestandards.org, printing-architecture@freestandards.org

Thank you, Ira,

Please discuss with Toratani-san at Google about the procedure to 
finalize the spec hereafter.

We are planning to update the opvp meta drivers for ghostscript and pdf 
renderer, as well as some vendor drivers, incorporating the updated 
spec, for the purpose of validation of the updated spec.  I think 
btaining approval for formal release may be after the validation by 
implementation.  However, if LSB requires a formal release of spec for 
incorporating the vector driver spec, we may need a front-loading of 
formal release.
--
   Osamu Mihara // Fuji Xerox

on 2007/06/15 12:51 Ira McDonald said the following:
> Hi,
> 
> My congratulations to the OP Japan team for all your efforts!  When I
> return home from the Linux Foundation Collaboration Summit, I'll sit
> down next week and read carefully over the spec.
> 
> Thanks very much,
> - Ira
> 
> On 6/14/07, Osamu MIHARA <osamu.mihara@fujixerox.co.jp> wrote:
>> Hi,
>>
>> Toratani-san has posted the latest update of vector driver API spec.  It
>> is the result of big efforts of OPWG Japan members in these several 
>> months.
>>
>> ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc4.odt
>> ftp://ftp.pwg.org/pub/pwg/fsg/vector/pdapi-spec-1.0rc4.pdf
>>
>> Massive parts are reviewed and improved.  The change list is not
>> attached at the end of the document, due to the time limitation, here is
>> the main changes since RC2/RC3.
>>
>> # Toratani-san, we should make a document to describe the changes
>> # of spec from version 0.2 to 1.0.
>>
>> - Improve English expressions.
>>
>> - Rewrite introduction section.
>>
>> - Raster operation (ROP) functions are removed, since it does not
>> directly reflect the graphics model of PDF or PostScript. Because the
>> mapping scheme of superposition of graphical elements from
>> PDF/PostScript to ROP is ambiguous in the previous spec., and it causes
>> some artifact problems with vector printer driver implementations.  We
>> review the related functions carefully and confirmed that ROP is not
>> essential factor for our model and removing it does not cause problems
>> in the aspect of function and performance.
>>
>> - Remove unnecessary sentences and paragraphs.
>>
>> - All descriptions are rewritten to remove ambiguities, using RFC2119
>> definition (MUST/SHOULD/MAY...).
>>
>> - Parameters for bitmaps and brushes are reviewed and rearranged.
>>
>> - Some figures are added for clarification of concepts of functions.
>>
>> - Etc. etc. etc.....
>>
>> Please review the spec. and post the feedback to this mailing list.
>>
>> Thank you!
>>
>> -- 
>>    Osamu Mihara // Fuji Xerox
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.freestandards.org
>> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>>
> 
> 

