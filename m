Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C704640A4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DED834013C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=kjX2vmCW2xhbJD5E2stoL23FteOUTZrgPOx/QV1nbRQ=;
 b=qd2TumkTUnngBhK0h45OhsJoNBZXPgZdSdF1iDemDngAiIZRQVqZ9B4VgCNwR0Iyjy
 PdAUKwun6YOjRzt3Yu7wMkNjoOJgu70mf256uaxnq16zLhA0WX9Sl1HVJ9VV4/dklaCk
 ExxtQVWX1N95fcpx4owsTWkr8BRiqDqcbIU9dqHlc1UO4kFSObvedMmEDT/SIacnKdpk
 Qo+UtYOEM4tRHgpumkAusfQybu62YYZbbbqsHQNt6JvLwtaCzkoR0w08GW9KAT4pbiYk
 XqWzKiqhsMGmd5TJ7axpAHQW/d7poDeunojFuSJJ3Q12zbRF15r8R2vO2U5GoU4QaY83
 gRQQ==
Message-ID: <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
Date: Mon, 22 Aug 2022 15:04:48 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Bye-Bye colord - OR - Poll ICC profiles
 via IPP for soft proofing
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sebastian Wick <sebastian@sebastianwick.net>

On 22/08/2022 13:51, Michael Sweet wrote:
> Color Profiles
> --------------
 >
> While IPP Everywhere and AirPrint printers will always support standard color spaces, high end photo/fine art printers will also support device color spaces (typically RGB or CMYK) which are described by the color profiles reported by the "printer-icc-profiles" attribute.  For AirPrint printers printers are also required to support uploading new profiles to a printer via HTTP PUT and registering them with the Set-Printer-Attributes IPP operation so that any client on the network will be able to access the same profiles served by the printer.
> 
> The ICC profiles reported by "printer-icc-profiles" are also used for soft-proofing, although because more printers don't report their own ICC profiles (because they don't support device color spaces) this is far less likely to be available.  In this case, there is no meaningful way to do soft-proofing (a generic CMYK profile won't really be useful) but conceptually you could download profiles from a vendor's web site to do it.

[...]

> Finally, there will always be a need to use custom ICC profiles that the user supplies/downloads. If you are going to bother supporting soft-proofing then there should be a way to use them as well.

[...]

Does this mean that in a colord-free world we proceed as follows:

If the printer does not provide built-in, downloadable profiles via the 
"printer-icc-profiles" printer IPP attribute, we have to get the 
profiles separately from the manufacturer's web site (printer is not 
self-contained, not really actually "driverless" ...) and upload them to 
the printer using HTTP PUT and registering them with the 
Set-Printer-Attributes IPP operation, so that they are available for all 
users of this printer. Am I right? And, after the upload, will the newly 
uploaded profiles be listed in the "printer-icc-profiles" IPP attribute, 
so that every user knows which profiles are available?

Now, with profiles listed by the "printer-icc-profiles" printer IPP 
attribute, could the soft-proofing software simply download and use 
these profiles?

If this is the case, the IPP printer is more or less replacing colord 
for printers.

In case of a legacy printer the Printer Application should be able to 
hold color profiles, ideally both in the Snap's static file system image 
for the profiles which come with the Printer Application and in the 
variable/state file system for user-added profiles. Ideally such 
functionality should get added to PAPPL.

    Till
