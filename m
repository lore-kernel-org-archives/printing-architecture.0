Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=tXO2oTtrEWMDn9BRJy7ecKtE451z769n+ivevs7jqwc=;
 b=O4n/Pv27fZ4XKteE04jy0yIca3HJ5UG1o0agENPMZBp6gt3OmoTyq4m14rM9az6wnq
 BDsXhraUYoT7abOpnuWh9T4fNOxaTuYVqSS5ugnj5BiSKFyQGZmLrv6P5sXzREz2C/7V
 vZSgGwGygB/sdqdjXFCZ39/OLKJ7gMlZGSN546fluRGJdkapdH3kqVAnOMElh/mZ4b04
 1wGtH6nCDloeKajkKT4e52c+efzy3QtbBAhNvxrzj9DdVTBKQEIoUDT8LyOqk8sDORx1
 b7NvEYG9n/pBpFyLWWiNr4pYYN0xyDU0YLNJTuKDYhhyDRTzgM3BukfjJCBPWggJEQaw
 /MLg==
Message-ID: <2613b8ae-3d3f-ed8d-dd9a-8e241976388a@gmail.com>
Date: Sat, 7 May 2022 16:07:13 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
 <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
 <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 07/05/2022 15:09, Michael Sweet wrote:
> Till,
> 
>> On May 7, 2022, at 3:05 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>>>> Which sufficiently free PDF interpreter will you put at MuPDF's place?
>>> Xpdf/Popper are GPL2, which fit the bill.
>>>
>>
>> So GPL2 is OK and AGPL of Ghostscript/Artifex not? Why?
> 
> The GPL2 terms still allow companies, as well as individuals, to use and combine software freely.
>

Does the GPL2 not require them to then publish the source code of the 
combined software?

> The AGPL terms are specifically written to prohibit combining of software without either providing the combined software under the GPL/AGPL or seeking alternative licensing from the developer. Unfortunately, what defines a combined work is somewhat ambiguous, so one could argue that making use of non-free Wi-Fi firmware on a system that accepts print jobs over Wi-Fi violates the AGPL of Ghostscript.  I doubt that Artifex would push for such a legal interpretation, but they've chosen the AGPL and do license Ghostscript commercially.
> 

OK, they want to sell their licenses, so for the users who want to use 
cups-filters in IoT, printers, ... it is better to use GPL2-ed Poppler then.

So I will continue supporting both Poppler and Ghostscript. Poppler as 
the choice for embedded/IoT and Ghostscript as the choice for the Linux 
distributions.

> As an organization under the Linux Foundation, I believe OpenPrinting has a responsibility to ensure that all users, including businesses, can use our work freely.  Unfortunately, the AGPL goes beyond *software* freedom and community (sharing) by explicitly limiting what you can do do with the software and effectively declaring that "all your base are belong to us."
> 

OK, I will continue to support Poppler, Ghostscript optional for the 
Linux distributions.

> (FWIW, I feel similarly about using GPL3 in OpenPrinting - its use is toxic to commercial distribution of OSS...)
> 

I have switched cups-filters 2.x to the same license as CUPS, Apache 2.0 
with exception. I recommend this license also to other, new OpenPrinting 
projects.

>> ...
>>> It would be better to preprocess the PDF so that the PDF interpreter only has to rasterize content.
>>>
>>
>> So something pdftopdf-alike? >
> Correct.
> 
>> ...
>> By the way, we have seen some printers which do not like PDF output of QPDF (I got one bug report in the last days). Are there many more? Should we report a bug on QPDF? Or has it some general fault making reporting a bug on it not worthwhile?
> 
> Definitely need to report a bug, but it will be good to determine what the problem is...
> 

I will do. Perhaps Jay will then interact with the reporter and find out 
what is going wrong.

>> Note that PDF interpreters in printers can have quirks like PostScript interpreters. They also do not necessarily only hit QPDF output, but can also hit the ourput of Ghostscript, GTK, Qt, even PDFio.
> 
> Of course.
> 
>> So in my opinion we should not necessarily rush on getting rid of QPDF (we report bugs on QPDF compatibility issues to QPDF though) but better make sure that if a driverless printer is not able to print a PDF file that we smoothly fall back to raster, what you are currently fixing/have already fixed.
> 
> Right, and the support for raster fallback was designed into IPP Everywhere/AirPrint from the beginning, specifically because of our experiences with buggy interpreters.
> 

It is a great piece of design from you. This was really missing in the 
many decades of PostScript (but PostScript printers did not have a 
common raster fallback format (or perhaps PCL?), driverless IPP printers 
usually do Apple Raster).

> (FWIW, I don't know whether Mopria talks about this at all, and Wi-Fi Direct doesn't address this...)
> 

We have implemented it in CUPS, so we do the better driverless printing 
on the client side, and it even works on Mopria and Wi-Fi Direct printers.

>> I agree with replacing of QPDF by PDFio for sake of simplicity and getting rid of C++ though. As you probably I am much more comfortable with regular C.
> 
> Personally I'm fine with C++ code/syntax, but I also know that libstdc++ and the ABI/name mangling algorithms have gone through a number of incompatible changes over the years that has made distribution of compiled printer drivers/applications very difficult.  C just doesn't have those issues...
> 

OK, this is a good argument, so we need to get the form-flattening into 
PDFio soonish.

    Till
