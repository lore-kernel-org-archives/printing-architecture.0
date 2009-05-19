Message-ID: <4A13266E.6070607@gmail.com>
Date: Tue, 19 May 2009 23:36:46 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <49F758CE.5060808@gmail.com> <49F98F67.2040401@gmail.com>
	<DD6046532A44F047ACD45225E9D737B14A3FB6653D@GVW1155EXB.americas.hpqcorp.net>
	<49FF1792.2080507@gmail.com>
	<DD6046532A44F047ACD45225E9D737B14A40FFAF0E@GVW1155EXB.americas.hpqcorp.net>
	<4A12FE0E.3080800@gmail.com>
	<DD6046532A44F047ACD45225E9D737B14A40FFAF11@GVW1155EXB.americas.hpqcorp.net>
In-Reply-To: <DD6046532A44F047ACD45225E9D737B14A40FFAF11@GVW1155EXB.americas.hpqcorp.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Fixes and changes on the "cups" output
 device of Ghostscript -Please Test!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Suffield, David" <david.suffield@hp.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gs-devel <gs-devel@ghostscript.com>, Michael Sweet <mike@easysw.com>, "Cauligi,
	Raghothama S" <raghothama.cauligi@hp.com>

Thank you, now I see what you want to do.

I have found a bug in gdevcups.c though. There was no protection against 
cupsPageSizeName getting an invalid value if it does not get set 
anywhere. Now the value is checked whether it is in the PPD file and if 
not, it is deleted.

    Till

Suffield, David wrote:
> Sorry, I sent you the wrong test PPD.
> 
> -dave 
> 
>> -----Original Message-----
>> From: Till Kamppeter [mailto:till.kamppeter@gmail.com] 
>> Sent: Tuesday, May 19, 2009 11:45 AM
>> To: Suffield, David
>> Cc: Michael Sweet; Yie, Shiyun; 
>> printing-architecture@lists.linux-foundation.org; gs-devel; 
>> Cauligi, Raghothama S
>> Subject: Re: Fixes and changes on the "cups" output device of 
>> Ghostscript -Please Test!
>>
>> Suffield, David wrote:
>>> Till,
>>> I applied your patch to ghostscript 8.64. After testing 
>> your patch with a fullbleed 4x6 paper size it looks like the 
>> paper size and printable area are not calculated correctly. 
>> The same full bleed test works ok with ghostscript 8.62.
>>> I have attached the test PPD and CUPS error_log(s) for 
>> reference. Note the CUPS's ImagingBoundingBox was 
>> "ImaginBoundingBox = [ 9 9 289 433 ]" when it should be 
>> "ImaginBoundingBox = [0 0 298 442 ]".
>> How did you tell to CUPS that the job is fullbleed? The PPD 
>> has non-zero 
>> borders for all paper sizes.
>>
>> It seems also that pstoraster or pstops does not supply 
>> something useful 
>> for the "cu[psPageSizeName", as error_log shows the following:
>>
>> D [15/May/2009:14:39:26 -0700] [Job 383] Setting cupsPageSizeName to 
>> "74%%BeginFeature: *PageRegion 
>> 10074^D^D^D%%BeginSetup%%EndProlog%%EndResource%rom%Resource/I
>> diomSet/*/*"...
>>
>> The name is important to distinguish page sizes with the same 
>> dimensions 
>> but different margins.
>>
>>> Looking at the fullbleed-bad.txt error log it looks like 
>> gdevcups.c has mistakenly declared this a custom paper size 
>> instead of the fullbleed 4x6 paper size and thus uses the 
>> custom paper size printable margins of "margins[] = [ 0.125 
>> 0.125 0.125 0.125 ]" instead of [ 0 0 0 0 ].
>>> Your patch worked ok with the normal "Letter" paper size.
>> Try something like
>>
>> *DefaultPageSize: LetterDuplex
>> *PageSize Letter/Letter 8.5x11in: "<</PageSize[612 792]/ImagingBBox 
>> null/cupsPageSizeName(Letter)>>setpagedevice"
>> *PageSize LetterDuplex/Letter AutoDuplex 8.5x11in: "<</PageSize[612 
>> 783]/ImagingBBox null/cupsPageSizeName(LetterDuplex)>>setpagedevice"
>> **PageSize A4/A4 210x297mm: "<</PageSize[595 842]/ImagingBBox 
>> null/cupsPageSizeName(A4)>>setpagedevice"
>> *PageSize A4Duplex/A4 AutoDuplex 210x297mm: "<</PageSize[595 
>> 833]/ImagingBBox null/cupsPageSizeName(A4Duplex)>>setpagedevice"
>> *PageSize Legal/Legal 8.5x14in: "<</PageSize[612 1008]/ImagingBBox 
>> null/cupsPageSizeName(Legal)>>setpagedevice"
>> *PageSize Photo/Photo 4x6in: "<</PageSize[288 432]/ImagingBBox 
>> null/cupsPageSizeName(Photo)>>setpagedevice"
>> *PageSize PhotoFullbleed/Photo 4x6in borderless: "<</PageSize[288 
>> 432]/ImagingBBox null/cupsPageSizeName(PhotoFullbleed)>>setpagedevice"
>> *PageSize Photo5x7/Photo 5x7in: "<</PageSize[360 504]/ImagingBBox 
>> null/cupsPageSizeName(Photo5x7)>>setpagedevice"
>> ...
>> *CloseUI: *PageSize
>>
>> ...
>>
>> *DefaultImageableArea: LetterDuplex
>> *ImageableArea Letter/Letter 8.5x11in: "18.00 36.00 594.00 783.00"
>> *ImageableArea LetterDuplex/Letter AutoDuplex 8.5x11in: "18.00 27.00 
>> 594.00 747.00"
>> *ImageableArea A4/A4 210x297mm: "10.00 36.00 585.00 833.00"
>> *ImageableArea A4Duplex/A4 AutoDuplex 210x297mm: "10.00 27.00 
>> 585.00 797.00"
>> *ImageableArea Legal/Legal 8.5x14in: "18.00 36.00 594.00 999.00"
>> *ImageableArea Photo/Photo 4x6in: "9.00 9.00 279.00 423.00"
>> *ImageableArea PhotoFullbleed/Photo 4x6in: "0.00 0.00 288.00 432.00"
>> *ImageableArea Photo5x7/Photo 5x7in: "9.00 36.00 351.00 495.00"
>> ...
>>
>>
>> This should work.
>>
>>     Till

