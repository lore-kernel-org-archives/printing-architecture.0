Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08B2D60087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C303760B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1702284803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CnohMpY+9qrnU/BlYGh6JYAtdzY0uL3J9/yBxzSVGSg=;
 b=jUxF2Rr55XOqeKgq7wJSOP172DkZk308jNEYzl082vuxF8AhOJLu1y5gdfvgvlHXv75hRO
 8WCGHmyNuRodfqNm+jx6ZBzivZF1Q9Q5a5GFV1SryVKghne0ScELNli/z6bhblGhMACbq4
 ZG4pvVqcxtEBdayuNACHqCyqP8wiGlM=
Message-ID: <832fed55-c020-48e8-9815-c00198875e90@redhat.com>
Date: Mon, 11 Dec 2023 09:53:19 +0100
MIME-Version: 1.0
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
 <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
 <trinity-dc79b1f8-46da-4df4-b10d-8ba39c8c1512-1701249802882@3c-app-gmx-bap15>
 <SYBP282MB261780509FF7F2F97B2A31D78785A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] high delay while printing
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Stefan K <Shadow_7@gmx.net>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@msweet.org>

Hi Stefan,

raster files (which are the final document format for URF) are way 
bigger than PDFs, which slows the processing on the printer, so it 
prints slower.

The usual advantage of the raster file is the printed document is fine 
in regard of fonts, where PDFs sometimes have problems with different 
fonts, PDF versions, which can mess up characters in the document (this 
can be prevented in cases when printer firmware updates add new fonts, 
PDF version support etc.). I had such problems when printing some Czech 
tax documents, which were from Adobe and generated from MS Outlook - 
switching to raster worked for me there.

On the top of that, there can be an issue in the filter or in 
ghostscript which is used in the filter to get raster image - you can 
check logs for more info and see how long each filter runs.

So but even without possible bugs, it is a matter of choice - PDF 
printing is faster than raster, but sometimes you get issues. Raster is 
slower, but worked for me till now when PDF failed.

In the past I have tried to pass 'document-format' to the print to 
enforce the output format I would like to have, but it is not among 
job-settable-attributes.

@Mike, do you think supporting switching final format would possible/useful?


Zdenek

On 12/11/23 08:35, Stefan K via Printing-architecture wrote:
> Hello Doug,
>
> sorry for the late response.
>
> Thank you very much for your help!
> Now it works like a charm.
>
> But I still don't get it.. You said URF is prioritized, and will be rendered by cups, but why is it so slow? It's a potent VM with two cores.
>
> best regards
> Stefan
>
>> Gesendet: Dienstag, 05. Dezember 2023 um 11:03 Uhr
>> Von: "Douglas Kosovic" <doug@uq.edu.au>
>> An: "Stefan K" <Shadow_7@gmx.net>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
>> Betreff: RE: [Printing-architecture] high delay while printing
>>
>> Hi Stefan,
>>
>> You could try changing the following two lines in that PPD :
>>
>>      *cupsFilter2: "application/vnd.cups-pdf application/pdf 200 -"
>>      *cupsFilter2: "image/urf image/urf 0 -"
>>
>> to:
>>
>>      *cupsFilter2: "application/vnd.cups-pdf application/pdf 10 -"
>>      *cupsFilter2: "image/urf image/urf 100 -"
>>
>> So that PDF rather than URF raster is preferred to be sent to the printer.
>>
>> After making changes to the PPD file, you'll need to restart the CUPS server for the changes to take effect.
>>
>> The driverless PPD generator prioritises URF raster over PDF as many entry level printers have low spec CPUs which can be slow for rasterizing PDF, so pre-rasterized URF is sent instead.
>>
>> The IPP Everywhere PPD generator prioritises PDF over URF raster, the suggested modifications above is what the IPP Everywhere PPD generator generates.
>>
>>
>>
>> Cheers,
>> Doug
>>
>> -----Original Message-----
>> From: Printing-architecture <printing-architecture-bounces@lists.linux-foundation.org> On Behalf Of Stefan K
>> Sent: Wednesday, November 29, 2023 7:23 PM
>> To: printing-architecture@lists.linux-foundation.org
>> Subject: Re: [Printing-architecture] high delay while printing
>>
>> Hi Till,
>>
>> thanks for your reply, I've attached the logs and PPD file.
>>
>> best regards
>> Stefan
>>
>>> Gesendet: Dienstag, 28. November 2023 um 19:13 Uhr
>>> Von: "Till Kamppeter" <till.kamppeter@gmail.com>
>>> An: printing-architecture@lists.linux-foundation.org
>>> Betreff: Re: [Printing-architecture] high delay while printing
>>>
>>> On 28/11/2023 17:59, Stefan K wrote:
>>>> Hello guys,
>>>>
>>>> I hope someone can help me with my problem because I'm a little bit frustrated and I don't have absolutely no clue how to fix that.
>>>>
>>>> I have a Debian 12 based print server running, all printers are connected via IPP which works so far but it takes a while if we start printing multiple pages and then for each page, it takes >15s for the next page. It doesn't matter if we print PDF or simple text files.
>>>>
>>>> For me, it looks like that cups is waiting until the printer says
>>>> "I'm done". According to the Documentation I tried
>>>> ?waitjob=false&waitprinter=false at the end of the deviceURI and
>>>> restart cups, but it's still the same. This happens on different
>>>> types of printers eg. HP PageWide Pro 477dw MFP or Kyocera TASKalfa
>>>> 4052ci
>>>>
>>>> I can attach the error_log with debug information.
>>>>
>>> Please do so, and also attach the PPD file of the print queue (from
>>> /etc/cups/ppd/).
>>>
>>>      Till
>>> _______________________________________________
>>> Printing-architecture mailing list
>>> Printing-architecture@lists.linux-foundation.org
>>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architectu
>>> re
>>>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

