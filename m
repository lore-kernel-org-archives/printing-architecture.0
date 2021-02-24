Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6cjwj7wG07LSOMcyvZBxP/PG8m0hz3oSWaQunPX21ZU=;
 b=JFup4397gaFS9cbMlCLzVu19GSDxUPu6DEZLoAa/AGocFOfjJNCpMxF75wmet52iZh
 IOpeI/anJez+bA1eDTUBKYicuIknqd9zGaLWREs6Ev4KKvNMWDBglPcywBxXUg35JQ+e
 aI0xFrkAuEkFJTVTg6zyGEyx0oYTiZ/fy/h0qonII6MahQp8AaFZzwSJQMLrVKvUIYDJ
 pXk/k/Hax7F9R/Ui4UtvQYMzJSJSnzInzjnC/YJQPNpsxarBgm1sT3SwZGPI/xNq0mKT
 2LAl5xMBA/sKYR/vsucEgQeMSZ7g1EEHwgz01Zaz9VMiKP72R83SmqWBOn8xfTywnrVu
 gJCQ==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <bb88fef5-f33e-3ca9-14da-ca189116ce9f@gmail.com>
Date: Wed, 24 Feb 2021 15:17:27 +0100
MIME-Version: 1.0
In-Reply-To: <YDZLEKxaIVrpLm4E@shaftnet.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Solomon Peachy <pizza@shaftnet.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 24/02/2021 13:48, Solomon Peachy wrote:
> On Wed, Feb 24, 2021 at 12:25:48PM +0100, Till Kamppeter wrote:
>> udev-configure-printer will need an interface at all Printer Applications
>> where it can send a device ID and the Printer Application answers back
>> whether it supports this printer (with driver name), and that without the
>> Printer Application talking to the physical printers.
> 
> I wanted to add a comment here -- We need to think about what happens if
> multiple applications claim to support the printer, either because more
> than one genuinely does, or because of wildcard catch-all rules for
> "generic PCL" (or whatever) that could bind to any device exporting a
> USB Printer Class endpoint, much like the current CUPS backend.
> 

For this we need support prioritization levels, like "generic" (CMD: 
item match), "third-party" (independent driver, like Gutenprint matches 
the model), "manufacturer" (manufacturer driver matches the model). The 
Printer Application must tell udev-configure-printer with which level it 
supports the printer.

> The CUPS backend supports a blacklist so it can exclude printers, but
> given that printer applications can't drop files outside their sandbox,
> a new mechanism would need to be devised.
> 

You probably mean the USB quirks. This is to overcome hardware 
incompatibilities.

> I don't know if there's any reasonable priority rules we could apply
> that would always yield the "correct" choice.  Except perhaps to put
> "generic" options at the bottom, but even if those generic options are
> the only ones available, the odds are they won't actually function
> properly anyway.
> 
> BTW, current (RHEL/Fedora) distro practice is to extract the complete
> list of supported printers at "printer driver packaging" time, and use
> that to figure out what package needs to be installed at runtime.  IIRC
> this exclusively uses IEEE1284 IDs.
> 
> And as a depressing data point, Gutenprint only has IEEE1284 IDs for
> about 15% of its supported models, and USB VID/PIDs for about 3%.  So a
> mechanism to auto-match based on the Manufacturer & Model strings out of
> the USB or IEEE1284 descriptors would still be a good idea..

Here we also need to use make/model matching, independent whether we 
have the make/model from a device ID or not.

    Till
