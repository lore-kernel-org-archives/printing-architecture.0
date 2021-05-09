Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=00W0r6Xlc0y5XrlfpJ88QP8oQFPBfjd3TIdZ3UCFfSM=;
 b=pn8KNULTu/k44enGGIQhEYm6X74kmzB72PRa68ZRXi8aaRpKGRZZ7pT0t7ZvTMzhlX
 QsrM5BZkNIa8xvpc/wIMTQyY6AQeJYbYgxZMatCdIJUKNHy8xBJN2CL/G1JD4taIvcmK
 rUZ0bnekRgBD42Af8zS+imvcxQsDZjRP/Gpuqu8Aks2JhMosdTiKZzZCz2wDOnZzJ1QA
 DIoRhyEU1dICPh/XyFfew+/2HUDVbop0E61Kdv/QV+NQbVtGpStbEDPcfdAOybkrvxUx
 dlXxVpFhoq10CKI0+iTDFj204Hi3EU3IR4tpHvb3OLQ7Wm6buiLE6CmZ3UTxlIoaBjSi
 OcLA==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
 <YJdH6p4ePqKSATLL@shaftnet.org>
 <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <1a37c322-5ca3-727b-583f-2b6bc78e44e2@gmail.com>
Date: Sun, 9 May 2021 10:20:57 +0200
MIME-Version: 1.0
In-Reply-To: <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Solomon Peachy <pizza@shaftnet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>

On 09/05/2021 04:54, Michael Sweet wrote:
> 
> PWG Raster (and Apple Raster) are "last-mile" formats.  The color space is explicitly defined by the Printer (sometimes with ICC profiles, particularly for Device RGB), and the Client is responsible for providing raster data in a supported color space.

If the printer supports the following (according to urf-supported):

- sGray (does this come from "W8"?)
- DeviceGray
- sRGB
- AdobeRGB
- DeviceRGB

What does this exactly mean? I asume that Raster input files need to 
match one of these color spaces and in the Raster header the actually 
used color space must be specified. Am I right?

Now for DeviceRGB (and DeviceGray) I assume that here the data is 
required in the printer's native color space. Am I right? But can I do 
true driverless printing with this? Can I download the printer's ICC 
profiles from the printer? And if yes, by which URL?

    Till
