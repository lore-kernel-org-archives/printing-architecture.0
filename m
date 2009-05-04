Message-ID: <49FECECC.3080507@gmail.com>
Date: Mon, 04 May 2009 13:17:32 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <49F758CE.5060808@gmail.com> <49F98F67.2040401@gmail.com>
In-Reply-To: <49F98F67.2040401@gmail.com>
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
To: Michael Sweet <mike@easysw.com>, "SUFFIELD,DAVID (HP-Vancouver,ex1)" <david.suffield@hp.com>, shiyun.yie@hp.com, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gs-devel <gs-devel@ghostscript.com>

I did a little correction on my changes, both in the Ghostscript SVN 
repositories and in the patch for Ghostscript 8.64 which I have uploaded:

The "*cupsEvenDuplex:" PPD keyword is already treated by the pstops and 
the pdftopdf CUPS filters, so it should not get treated again by 
Ghostscript's CUPS Raster device. So I have removed the appropriate changes.

Olease re-download the patch

http://www.openprinting.org/download/printing/ghostscript-cups-patches/cups-device-pagesize-margins-duplex-fixes.patch 


or the modified source file

http://www.openprinting.org/download/printing/ghostscript-cups-patches/gdevcups.c

for Ghostscript 8.64 or update your Ghostscript 8.65 snapshot from the 
SVN repository.

    Till


Till Kamppeter wrote:
> Here is the second part of my fixes and changes.
> 
> This time I have added support for the "APDuplexRequiresFlippedMargin" 
> PPD keyword as described on in the "Mac OS X Attributes" section of
> 
> http://cups.org/documentation.php/doc-1.4/spec-ppd.html
> 
> I have also fixed the margin handling. By testing with a document with 
> gray background, a PPD with 4 different unprintable borders for the 4 
> edges of the paper, and rasterview I have seen that the printout did not 
> always get gray up to the unprintable borders. There were often wider 
> white borders than necessary. Now I have checked with all 
> duplex/portrait/landscape settings that the background will really fill 
> up the page as much as the printer allows. This is naturally also valid 
> for any graphical element in the document to be printed. Now we get 
> always the best possible results for objects near the borders. In 
> addition, the content should be accurately positioned on the page (not 
> slightly shifted).
> 
> I have committed the changes again to the SVN repository of Ghostscript, 
> so that they will make it into GPL Ghostscript 8.65.
> 
> Here is a patch containing ALL my changes (also of the first part) on 
> gdevcups.c:
> 
> http://www.openprinting.org/download/printing/ghostscript-cups-patches/cups-device-pagesize-margins-duplex-fixes.patch 
> 
> 
> Please apply this patch to an unpatched Ghostscript 8.64. Or take the 
> complete file"and replace cups/gdevcups.c in the Ghostscript source with 
> it:
> 
> http://www.openprinting.org/download/printing/ghostscript-cups-patches/gdevcups.c 
> 
> 
> Please test it. Now all duplex issues when developing CUPS Raster 
> drivers should get solved.
> 
>    Till
> 
> 
> Till Kamppeter wrote:
>> Hi,
>>
>> I have done several fixes and enhancements on the CUPS Raster output 
>> device of Ghostscript, to support the Duplex-related keywords in the 
>> CUPS PPD extensions (all tests done with Mike Sweet's "rasterview"):
>>
>>
>> *cupsFlipDuplex:
>> ----------------
>>
>> Did not work for landscape documents. In general, the XY and YX 
>> components of the matrix were swapped. This broke the output with 
>> asymmetric resolutions (like 300x600 dpi) and back sides which are 
>> supposed to be rotated or Y-flipped came out blank.
>>
>> *cupsBackSide:
>> --------------
>>
>> Introduced support for this keyword which is the replacement for 
>> *cupsFlipDuplex:. Therefore *cupsFlipDuplex: gets generally ignored if 
>> *cupsBackSide: is supplied. All modes described in the PPD extensions 
>> are supported.
>>
>> *cupsEvenDuplex:
>> ----------------
>>
>> Introduced support for this keyword. Now "*cupsEvenDuplex: True" 
>> causes a blank page to be appended to documents with odd numbers of 
>> pages.
>>
>>
>> All these changes I have committed to the SVN repository of 
>> Ghostscript and so they get part of GPL Ghostscript 8.65.
>>
>> I have also created patches for Ghostscript 8.64 and uploaded them to
>>
>> http://www.openprinting.org/download/printing/ghostscript-cups-patches/
>>
>> The patches are
>>
>> cups-device-support-cupsbackside-ppd-keyword.patch
>> cups-device-support-cupsevenduplex-ppd-keyword.patch
>>
>> The first patch also contains the fixes for the *cupsFlipDuplex: keyword.
>>
>> In addition, I have added support for having page size entries in the 
>> PPD which have the same width and height but differ only by the 
>> margins, like "A4" with normal margins and "A4.fullbleed" with zero 
>> margins. The fix is also uploaded to the SVN repository for 
>> Ghostscript 8.65 and the patch for 8.64 is this one:
>>
>> cups-device-select-pagesize-margins-by-pagesize-name.patch
>>
>> at the same place as the other two patches.
>>
>> I will look into the "*APDuplexRequiresFlippedMargin:" keyword soon.
>>
>> Please have a look into the patches and try them out. Tell me whether 
>> they are OK and if something does not work, please supply fixes orhelp 
>> me to fix it.
>>
>> Thanks in advance.
>>
>>    Till
>>
> 
> 

