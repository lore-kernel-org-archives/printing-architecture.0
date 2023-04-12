Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB58E4011F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1C8D400C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681341759; x=1683933759;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pWbG24hLqk4A0ZoORU7Zj1Sdj5gz1qQ8++u8PRubUxU=;
 b=eq9M3h7/iehbM5rEkogD/42l2fi31728EjApC7/O2IrqKUzhbRAZRznrHIGkonCPVk
 T7v6EzdGGUSntG7D4QuIB2IrjfaTlc1tCvA9xAJ82iT0KHZLe6jYnBkdE3uImh92Xr3e
 DuFa2Rw+M7QBVeNnO5YEIcz7tq7TfSZkEHBWIwv6ndmNCVpI8JpyKidxLEwwtBNQkmb6
 IjzwVnIBz2RVFBVEt5nVJQE5LD843Fuqej+AM0Pzfq7bYolyE5quUyHGr2cvP2dZU4q7
 kJu1oz4IqttnraQ8NmR/kApq8o17c4aSNTKG3Flpgua1kUWBsGgtIl4VqG2G5R8La0Qx
 XNDg==
Message-ID: <6a05fb3a-384c-ff05-8fa1-a4f42c7accfe@gmail.com>
Date: Thu, 13 Apr 2023 01:22:37 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Release Candidate of the second generation
	of cups-filters released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>, Frederik Feichtmeier <frederik.feichtmeier@gmail.com>, Michael Sweet <msweet@msweet.org>, Sebastien Bacher <sebastien.bacher@canonical.com>, Ken VanDine <ken.vandine@canonical.com>

Hi,

I have done the Release Candidate of the new cups-filters components now!

Finally checking through one bugs, not yet merged pull requests, and 
GSoC contributor candidate assignments, and also doing a lot of further 
testing, many bugs got fixed.

Especially the orientation-requested and landscape attributes are 
correctly working now, one can print plain text in landscape layout, 
suppress auto-rotating of images (via "landscape=false" or 
"orientation-requested=X", X = 3,4,5, or 6), print images also if the 
printer uses 16-bit-per-color, and has clean white dot-free backgrounds 
when printing 1-bit-dithered.

cups-browsed now prefers Apple Raster over PDF if the destination 
printer supports both, as PDF interpreters in printers are often 
unreliable and slow.

And Zdenek Dohnals fixes based on his Coverity scan on cups-browsed are 
now included in the release. Thanks, Zdenek, for this great work.

The 2.0rc1 releases of all the components are also the versions used by 
Ubuntu 23.04 Lunar Lobster, to be released in a week from now, on 
Thursday, April, 20!

Here we go:

https://openprinting.github.io/cups-filters-Second-Generation-Release-Candidate/

There are also GitHub discussions set up for each release now.

    Till
