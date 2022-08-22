Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69C8560B61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36F11605BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:cc:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=N6B/aCF5TRjqvbCTvA029H5SHT2nELJFqx4baTFyxNc=;
 b=RhX9YdMh3mIsSAPv5XT1ykx29ICFGcToKX1I9AiOklUpteAujm1zqrF9GweYxHGsrS
 PE7yw/Yv5u0AzU+Gc9M42wacH/YufkWZpGYTfj9RNvmrpWAw3Gzc/3LsbFmv9Ihqw4sX
 5oQvpzgC8pz1IldMlSmnDWlo3tr+bFs2hNTTIG6dyfQJqJ3paok774InJ0s2hA2gQbwv
 tILmx0wqsTA0VrdxVZFC6EzVDZ/HbZ8y0Z+EAxZBn8pFzfzwJQ1qxKMXQrf7mxqrAFmQ
 q1UAVnMjMZ61A1SK25/DAdfItBuc28xyyhXDVJj2D4I9KAtTzz1g/hlR85vD3m23P2Am
 hCRg==
Message-ID: <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
Date: Mon, 22 Aug 2022 10:14:05 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Bye-Bye colord - OR - Poll ICC profiles via
	IPP for soft proofing
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Sebastian Wick <sebastian@sebastianwick.net>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi Sebastian,

thank you for your explanations on how to do soft proofing and sorry for 
the late reply.

Hi Michael, Ira, ...

is there any way to poll the printer's ICC profile(s) from the printer 
via IPP ? Or is it not needed as all IPP printers are required to 
receive their data in sGray/sRGB/AdobeRGB and then convert to the 
printer's inks/toners internally? Would soft proofing still make sense 
in such a case? If yes, with which profile?

Would it still make sense to soft-proof and also to color-correct for 
higher-end printing also if the printer is driverless IPP? Or is 
driverless IPP generally avoided for higher-end printing?

    Till

On 05/08/2022 22:47, Sebastian Wick wrote:
> On 2022-08-02 08:39, Till Kamppeter wrote:
>> Hi,
>>
>> we had talked about the demise of colord on the GUADEC, right after my
>> talk about the New Architecture of printing and scanning.
>>
>> You wanted to send me an e-mail, but I did not receive one.
>>
>> Could you tell me more about soft proofing and which free software
>> tools are used for that?
>>
>>    Till
> 
> Hey,
> 
> nice to hear from you. Got sick after GUADEC and then was really busy so 
> sorry for the delay.
> 
> If you want to try out a soft-proofing workflow I would suggest to use 
> GIMP. Grab for example a DCI P3 profile 
> (https://www.color.org/chardata/rgb/DCIP3.xalter), your display profile 
> (GNOME auto-generates one for your display and puts it in 
> ~/.local/share/icc/) and a printer ICC profile if you have one (or an 
> sRGB profile if you don't https://www.color.org/chardata/rgb/srgb.xalter).
> 
> You can find the relevant settings in: Preferences -> Color Management.
> 
> Make sure "Image display mode" is "Color-managed display". For the 
> "Color Managed Display -> Monitor profile" choose your display profile. 
> For "Soft-Proofing -> Soft-proofing profile" choose the printer profile 
> and also make sure "Mark out of gamut colors" is checked.
> 
> Create or load a new image. Go to "Image -> Color Management". Make sure 
> "Enable Color Management" is checked. Then select "Assign Color Profile" 
> and assign the build-in sRGB profile.
> 
> If you now paint something on the image with a strong color (pure green 
> for example) and then go to "Preferences -> Color Management" and change 
> "Image display mode" to "Soft-proofing" you should see some parts of 
> your image being marked as out of gamut.
> 
> The image is in sRGB but not all sRGB colors can be shown on the printer 
> and now you can see where they are. If you turn off "Mark out of gamut 
> colors" you can see the image like it would appear when it gets printed 
> (except that the printer could also show colors that your display can 
> not show, but this usually gets you pretty close).
> 
> If you plan to only print the image you could assign the printer profile 
> to the image and then soft-proofing would show you where on the image 
> you used colors that your display can not show you.
> 
> When the sRGB image is done you would then do the color space conversion 
> to the printer profile (in GIMP using "Image -> Color Management -> 
> Convert to Color Profile") with the exact settings you want.
> 
> In both cases you end up with an image in the printer color space and 
> you would not want the printer to do any more processing.
> 
> I hope that explains the usual workflow. If you have any questions 
> please ask!
> 
> Cheers,
> Sebastian
