Return-Path: <code@funwithsoftware.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1887540B64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 836E740612
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 funwithsoftware.org; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1684351488; x=1684437888; bh=Cl
 V6ROPHVgv7flzfmJtYD20KRocDrRjYDzU0l675vYk=; b=hlceQikhHixFHh01yc
 VibPOv1bvHFPkgyVXxOGqbd/GO/47tJIE7cYKFniI+TDFrDoHdMXvqYLIVkE9qNb
 90eyML3Fo6vt325hr97iC3bGqLYyitk+4k33rOx2mHDg9rcbTZoaFQKG+LwxWDuP
 qswnVd5DvTVghJER3vGUrsR+gwB69aHJB+FKiPseQHdR3wtsAZns6KEtsReOZqTG
 shWy96Bx9Y1w3AinZedvAgUSHPUDSopMDL69SkJzLzNcal4NNUPGHlsaG/26A1Xr
 U4keku8ydXcMx7gaTHjjORhit2rqlJ9ATIANQESsvL5HOmQmulujvakmSAgFukn8
 LEvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1684351488; x=1684437888; bh=ClV6ROPHVgv7flzfmJtYD20KRocDrRjYDzU
 0l675vYk=; b=wIeMUpLpo/NnhrvYlnUanbAStF0NipQK6Ll8YaIFC6VUI94AEsD
 3+h8qIiF3lQ5oZMy4U6pQoT3eG05X76E0n/m8TIEKWoEIYO1tMEfJp5nwr6fOpQW
 2hiS4RGlEQeZRq5gRNzhCboCCU+rBmjwDFn07UtYNOEwWy0sA0nr+DiCIr5Cb+Lb
 4Hwb25yiI7cQAIgJkIp8CtBif3/vh7BXNml8pVf2rrq6CjGKNdwYUd715IZQDRqa
 sQYNLE8kVs7VgjHIPsNVPJk6+OjuhDjyCcwQOli80+2ql5R+EtQQITQBAADmLiCo
 y49whTBw5xrPez09RYYRzW9JtLTnPddyYZQ==
Message-ID: <10fdb59a-1410-8fd1-aa5d-fd048c8cc6cf@funwithsoftware.org>
Date: Wed, 17 May 2023 12:24:46 -0700
MIME-Version: 1.0
Content-Language: en-US
References: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
 <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
From: Mignon Pelletier <code@funwithsoftware.org>
In-Reply-To: <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] names of paper sizes
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

On 5/17/23 3:52 AM, Michael Sweet wrote:
> On May 14, 2023, at 6:04 PM, Mignon Pelletier 
> <code@funwithsoftware.org> wrote:
>> 2) How can I obtain the human-readable names, such as "30330 Return Address", preferably without using any deprecated APIs?
> The cupsLocalizeDestMedia function is provided for this since CUPS 2.0.

I had tried that, but cupLocalizeDestMedia() just returns a NULL 
pointer.  With this code:

     unsigned flags = 0;
     cups_size_t size;
     int i;
     int count = cupsGetDestMediaCount(CUPS_HTTP_DEFAULT,
                                       dest, info,
                                       flags);

     for (i = 0; i < count; i ++) {
         if (cupsGetDestMediaByIndex(CUPS_HTTP_DEFAULT, dest, info,
                                     i, flags,
                                     &size)) {
             const char *loc =
                 cupsLocalizeDestMedia (CUPS_HTTP_DEFAULT, dest, info,
                                        flags, &size);
             printf("  %s:\n", size.media);
             printf("     Local: %s\n", loc ? loc : "N/A");
         }
     }

I get:

   custom_12.7x47.67mm_12.7x47.67mm:
      Local: N/A
   custom_0.5x2in_0.5x2in:
      Local: N/A
   custom_0.75x2in_0.75x2in:
      Local: N/A
   custom_0.75x2.5in_0.75x2.5in:
      Local: N/A

etc.

Any idea why I'm getting NULL, or how I can troubleshoot that?

--Mignon

