Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A86660B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7007260B03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=K73TLAnOesT+bZ9dCy4xKd6dUCYw0PqQKdUsa2UuJZI=;
 b=Cnxh5R8moOoFlg8hd3pyGif64mqq/bUB8F7yz0qY7wz++WP93u74kRXFEw8RXQFyXw
 9+NVRJFgpZOioBbLeJZFEHZMeVYrqMsI96nfAgIhMQxgbjkfVszfsSDsPs52bqjx1oGO
 bxkNDuSs+ckjc3r/rAKrbNi4k+ICQTGhAFQPx8ddrj9CSo+Q1QfgANFq201aCnNtYSXn
 HOYIWWgxl1nc2YZESKgFdGGGGLYmfFyyg1qGYwtNyCKFaC4bvxnieKc+t9TVNqBlzbUP
 MUiHYvHu+F6Hm1auYknG/4io3bL/9yCAGdfG+vZm09PyspN9Bt54qrWDK0ZwdQZOLPdo
 1IMg==
Message-ID: <8fa2d6b9-4d9e-6bdd-d9da-93e53ae8fe62@gmail.com>
Date: Tue, 17 Jan 2023 19:49:13 -0300
MIME-Version: 1.0
Content-Language: en-US
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
 <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
 <09B091BC-0273-42EC-8F3B-C01AF9761048@msweet.org>
 <60a37a80-7574-2b4e-7c40-2c65837c1b3c@gmail.com>
 <7F9BA7FA-BBE7-48E3-B70E-A806707F0928@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <7F9BA7FA-BBE7-48E3-B70E-A806707F0928@msweet.org>
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

On 17/01/2023 16:27, Michael Sweet wrote:
>>
>> Would other parts like CUPS or cups-filters need to get updated.
> 
> There is a new (OPTIONAL) "job-triggers-supported" attribute that can be used by a Printer to suggest presets based on selections, e.g., pick a photo media triggers using the photo preset.
> 

OK, on an implementation of creating presets from within a Printer 
Application (or PAPPL) I would then allow the user also to set a trigger 
via an appropriate UI in the web interface.

In CPDB (the CUPS backend) I will add support to parse the 
"job-presets-supported" attribute of the printer to let it add an option 
to select a preset to the print dialog and if the use selects a preset, 
the CUPS backend will send this preset's settings as job attributes to 
the CUPS queue. This is how I understood to use presets following

https://ftp.pwg.org/pub/pwg/ipp/wd/wd-ippnodriver20-20221027.pdf

> There is also the new (OPTIONAL) "client-info" attribute to provide Client-side metadata (like OS, application, etc.) - that one will need some privacy controls for users to "opt in".
>

Does this allow a client app to tell the printer that the job comes from 
this app? So that if it is Darktable for example that the printer prints 
in photo mode (sets print-content-optimize=photo)?

>>>> CPDB backend for IPP Infrastructure/Cloud printing
>>>> --------------------------------------------------
>>>>
>>
>> So I only see it as an IPP printer, so CUPS and the CUPS CPDB backend are all I need?
> 
> Yes.
>

OK, so nothing from the client side needed here, project idea removed.

>> ...
>>> Honestly I don't have a good feel for how/whether this should be implemented and added to PAPPL, and the only printer application that really needs this functionality is Gutenprint.  Probably better to focus on getting Gutenprint ported and supporting its presets, then we can look at how those presets will work with the existing PAPPL.
>>
>> I think this project is not only for Gutenprint to benefit from. Any Printer Application with at least some vendor options benefits, especially the PostScript Printer Application. Typical print dialogs cannot access the vendor options of any PAPPL Printer Application. If the user can assign presets to a name which is accessible via a standard IPP option, they could make use of the vendor options more easily.
> 
> There are few PPD options that don't have a corresponding IPP attribute, and IPP presets don't get around the Client needing to know how to send arbitrary IPP attributes/values when a preset is chosen.
>

For example a PPD file has the option "PrintDirection" with the 2 
choices "uni-directional" and "bi-directional". We assume higher quality 
by the former and higher speed by the latter choice.

The PostScript Printer Application creates a vendor option from that, 
named "print-direction" with choices "uni-directional" and 
"bi-directional". In the current version the user can set a default for 
this option by the web interface, under "Printing Defaults".

Now let us assume that PAPPL allows users to create presets via a new 
web interface page, or even automatically creates presets in some way. 
We also assume that we have a newer PAPPL version supporting the 
"job-presets-supported" printer IPP attribute and by this tells which 
presets it has readily available. The attribute will look like this:

     job-presets-supported={
       preset-name='draft'
       preset-category='print-quality'
       printer-resolution=300dpi,
       print-direction='bi-directional'
     },{
       preset-name='normal'
       preset-category='print-quality'
       printer-resolution=600dpi,
       print-direction='bi-directional'
     },{
       preset-name='high'
       preset-category='print-quality'
       printer-resolution=1200dpi,
       print-direction='uni-directional'
     }

Once, due to the preset-category being "print-quality" it changes the 
"print-quality" attribute, instead of having the 3 standard choices, it 
gets the choices defined by the presets and the printer is supposed to 
execute the print-quality job attribute by setting the other job 
attributes as described by the appropriate preset. Am I right?

Now let as assume we have the same entries in "job-presets-supported" 
but their preset-category is NOT "print-quality" but for example 
"feature" instead.

In this case a client would need to add an option to the print dialog 
named "Presets" and offering the choices "none", "draft", "normal", and 
"high", and if the user sets this to "high", the client should add the 
job attributes printer-resolution=1200dpi and 
print-direction='uni-directional' to the job. Am I right? Has this also 
to work this way despite "print-direction" is not a standard IPP 
attribute name (it is created by the PostScript Printer Application, 
derived from the PrintDirection option of the PPD)?

Implementation of the above would be done in the CPDB CUPS backend, so 
that the actual print dialogs do not need to care of this.

    Till
