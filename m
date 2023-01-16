Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98CAA40BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87D184016B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=83cmxHnFKGp9G57V8YmMH6eliNdpKRRCzXCZ1wjQ7dw=;
 b=gzWQNUyPMiluKy3vD7pRYdYBAhkuCDm+iA2W4FQoRorj/dxvHaJ503qhm7SgWfanAM
 irucvjz21PsatF5iWIMQPhD3IH2+e7wmC0zer4u6d1FjUnmAzJ94/Rk+kIkXUdSk5JxB
 zWpUdp4v+VrhztqR+NC6WRY4snF7QeyOZChYvhnsn4Uxt9YU7Lo7MKUGU16zjRMk6z+Q
 ayMYbolIpID+bTK/Z5sEXvHBHGJkgRiCAafcN56VKJeDg9C79S/GfoNYDhaSwv3yYlC3
 a61+LMSEUsJcW6DsxE5T6dJ4xo91sV878IuWKndyLElj2Y94OShgJAVaJ5l7DPNzivAZ
 meNA==
Message-ID: <60a37a80-7574-2b4e-7c40-2c65837c1b3c@gmail.com>
Date: Mon, 16 Jan 2023 20:06:37 -0300
MIME-Version: 1.0
Content-Language: en-US
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
 <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
 <09B091BC-0273-42EC-8F3B-C01AF9761048@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <09B091BC-0273-42EC-8F3B-C01AF9761048@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Google Summer of Code 2023 - Project
 ideas page for the Linux Foundation online
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <basu.aveek@gmail.com>

On 16/01/2023 18:27, Michael Sweet wrote:
>> Not like OAuth support where we decided on skipping working on its integration this year?
> 
> Um, I'm not aware of any such decision!  Certainly we haven't finalized things but our goal is to have IPP+OAuth prototyped this year (at least).
>

I meant here that we do not start GUI integration of the OAuth support 
of IPP this year, as important changes to make it really usable will 
only come somewhere later during this year.

>> - Is there actual coding work to do to achieve this?
> 
> PAPPL should already have everything covered, but I'll do a final pass after the 5100.7 and 5100.13 updates are final/approved.
> 

Would other parts like CUPS or cups-filters need to get updated.

>> CPDB backend for IPP Infrastructure/Cloud printing
>> --------------------------------------------------
>>
>> Which software is the actual implementation of this standard and visible for the end user who wants to print from an application?
> 
>  From the client side you are just printing to a different server.
> 

So I only see it as an IPP printer, so CUPS and the CUPS CPDB backend 
are all I need?

>> What do you mean with
>>
>>     but we are still a long ways away from having anything that can be
>>     merged and supported
> 
> I mean that the current work has laid the foundation but we haven't actually implemented everything needed to handle IPP and/or eSCL requests, route them through the scanner driver, get the scan data from the scanner, and feed it back to the client.
>

This is the intention of the project idea which I have opened. The 
contributor should code exactly that. The eSCL parser is already there.

>> ...
>> Should I better snap AirSANE to make scanner drivers snappable (but it will be confusing for users if an MF device has 2 daemons, one for printing and one for scanning)?
> 
> Honestly that is the simplest way since ALL of the scanners we planned on supporting via PAPPL printer applications are already supported by SANE.
>

One must note that it is retro-fit only, no way to create a native 
Scanner Application with it, and as I said, on multi-function devices 
one has two completely different daemons. It could be a stop-gap if the 
current PAPPL scanning project fails.

I also need to see whether this is still actively maintained.

>> PAPPL presets
>> -------------
>
[...]

> Honestly I don't have a good feel for how/whether this should be implemented and added to PAPPL, and the only printer application that really needs this functionality is Gutenprint.  Probably better to focus on getting Gutenprint ported and supporting its presets, then we can look at how those presets will work with the existing PAPPL.

I think this project is not only for Gutenprint to benefit from. Any 
Printer Application with at least some vendor options benefits, 
especially the PostScript Printer Application. Typical print dialogs 
cannot access the vendor options of any PAPPL Printer Application. If 
the user can assign presets to a name which is accessible via a standard 
IPP option, they could make use of the vendor options more easily.

Talking about Gutenprint was only an example, but Gutenprint is 
naturally very extreme and here one should go beyond my initial idea 
creating a specialized UI in the web interface.

    Till
