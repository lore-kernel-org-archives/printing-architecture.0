Return-Path: <code@funwithsoftware.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A77024033F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2C52401A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 funwithsoftware.org; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1684101880; x=1684188280; bh=ZwirGlHWjy/upxTsClqCryVhpdpK1G6C7g0
 uGOq5WDM=; b=SrlRTE/AsY5u7jUbgkClbRErty2ggukCV0j7ijwF2p6O3/I0j+i
 YczqL1RB2tMDDYKpOlSnyGK4WX7cWSNk0wguljtR4yMVtv39fJyLWj+rqQ2PoggE
 wsrGwK4ymhtxquSBg1xOriJaYo8STsuQQ406RhgSHoydScbpK92kpfOxk6m3ogX/
 TbEYbfM/K9ioekI3Bo0Tatm4l1o3yyU5XqB1D9FRiODP6A5geYkvgjWqOVO1VIrN
 B9tKHod7e60BeH9qK2G7p15rPBumwywJnpL71osPTS8nuRtsrWZiW1LjMuU/JbZ/
 9IQfZp/oi+jAzPm8l7fF4AFgeCQWq5LBBLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1684101880; x=1684188280; bh=ZwirGlHWjy/up
 xTsClqCryVhpdpK1G6C7g0uGOq5WDM=; b=o9J8yM0GxDGGmuxsLL5cghtgQ9tCX
 0fvuWrx2ZbXXOKQx6lO/8fXczx9MAVRYbVSfVMiu3HawlsfTui+ZY2hUrMfggX4Y
 zAOeWwOHnZVKPrK4daFbfj6Bd5NnhdxF/R/UaA3WRE/06cuzqySJewHescvoKEIp
 zcj0RVLtIm0VpdPsR3jdp3Rx2kn5OvZMfjHLXzlD+iqruYtWEQ9VRysnmp1FWORj
 oBiwSpwEzz3jSWTZrgbuU3kXM657vzTDytiESqBQgko6xr5jKKuEliYph14Q07Y8
 98T/XpSbsObrTFTCPLNXiUhBKAtP6rw9kPkReEF6We5ajWIbacjBRAW4Q==
Message-ID: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
Date: Sun, 14 May 2023 15:04:38 -0700
MIME-Version: 1.0
Content-Language: en-US
From: Mignon Pelletier <code@funwithsoftware.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] names of paper sizes
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

I'm confused about the many names that a paper size can have.

If I query my DYMO LabelWriter 450 Turbo with code like this:

         ipp_attribute_t *media =
             cupsFindDestSupported(CUPS_HTTP_DEFAULT, dest, info,
                                   CUPS_MEDIA);
         int i, count = ippGetCount(media);

         puts("media supported:");
         for (i = 0; i < count; i ++)
             printf("  %s\n", ippGetString(media, i, NULL));

Then I get names like this:

   custom_54.19x22.27mm_54.19x22.27mm
   custom_25.4x54.02mm_25.4x54.02mm
   custom_1x1in_1x1in
   custom_2.25x1.25in_2.25x1.25in
   custom_0.75x2in_0.75x2in
   custom_41.32x88.9mm_41.32x88.9mm

However, if I run "lpoptions -p LabelWriter-450-Turbo -l", I get names 
like this:

PageSize/Media Size: w154h64 w72h154 w72h72 w162h90 w54h144 w118h252
w167h188 w79h252 w167h252 *w167h288 w154h198 w82h248 w154h64.1
w79h252.1 w102h252 w154h286 w154h198.1 w54h424 w131h221 w57h248

I checked the source code for lpoptions, and it is using ppdOpenFile() 
and related functions, rather than cupsFindDestSupported().  I'm curious 
why these different APIs are returning different names for the paper 
sizes.  Also, my understanding is that the PPD functions are deprecated 
and are removed in CUPSv3?

Looking at LabelWriter-450-Turbo.ppd, the paper sizes are listed like this:

*PaperDimension w102h252/30321 Large Address: "101.28 251.04"
*PaperDimension w154h286/30323 Shipping: "153.12 285.84"
*PaperDimension w154h198.1/30324 Diskette: "153.12 198.00"
*PaperDimension w54h424/30325 Video Spine: "54.00 423.12"
*PaperDimension w131h221/30326 Video Top: "130.56 220.56"
*PaperDimension w57h248/30327 File Folder: "56.40 247.44"
*PaperDimension w54h144.1/30330 Return Address: "54.00 144.00"

I can see that the name before the slash is what is being returned by 
lpoptions.  However, what I really want is the name after the slash, 
such as "30330 Return Address", because this is by far the most 
human-readable.

So, my questions are:

1) Where are the names reported by cupsFindDestSupported() coming from?
2) How can I obtain the human-readable names, such as "30330 Return 
Address", preferably without using any deprecated APIs?

Thanks,

--Mignon

