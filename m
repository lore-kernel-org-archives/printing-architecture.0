Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XW4H9tGO13FSeSTTNcQnIM/c82Wjv0eEX1E1mN38Chg=;
 b=aQAeYf0JaYYGL+uMR2wQ607Scv1LGytkZpW9p1vIueftRci2kfSGOOyVV3VIwFGp5k
 H5uEjxYGtFpaRF52ml40pXkguG/gjDsslRfPc6SCosrGYakoWXBKlrXIGjpZO6Jj7G/W
 ck8UoLcwf6jVyBoSJVBAj3DuJG+IDmoc6OqYU6OPiAM+jT1mRigHB2XqLp3ftrzhnXZC
 T+JLHop7wSIGhzQpoJIrmipL8q/72vZJLtRhjooIZ8l81R9kLtOolpCOvNhPOlvY+1Mh
 vH2S9uTFje2Tn3poTbZ3Agjm8QzuGLT4pvUoi/LwCVNIg9FSHHGW2O+CwL+hMyvr5ugD
 hWog==
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
 <c4e910ab-ba48-9200-aa48-45d1eeeecf45@redhat.com>
 <ce086f37-e6b2-2a6d-c292-c6bb95d2532b@gmail.com>
 <64171bfe-d62f-86f8-3c97-2a2391836f1a@redhat.com>
 <8d2201e1-0f47-0b09-0348-f44c7ab16a7b@gmail.com>
 <81d778b8-a608-032c-9c59-88c12984f3b5@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <61a884a7-71ba-6485-fc76-a5c7972203de@gmail.com>
Date: Wed, 29 Jul 2020 18:13:06 +0200
MIME-Version: 1.0
In-Reply-To: <81d778b8-a608-032c-9c59-88c12984f3b5@redhat.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] GTK Print Dialog: Modern IPP printing
 environments cause problems
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>, Zdenek Dohnal <zdohnal@redhat.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Rithvik Patibandla <rithp9@gmail.com>

On 29/07/2020 17:35, Marek Kasik wrote:
> 
> Yes, it does an IPP request on the printer for these attributes:
> 
>      "printer-name",
>      "printer-uri-supported",
>      "member-uris",
>      "printer-location",
>      "printer-info",
>      "printer-state-message",
>      "printer-state-reasons",
>      "printer-state",
>      "queued-job-count",
>      "printer-is-accepting-jobs",
>      "job-sheets-supported",
>      "job-sheets-default",
>      "printer-type",
>      "auth-info-required",
>      "number-up-default",
>      "ipp-versions-supported",
>      "multiple-document-handling-supported",
>      "copies-supported",
>      "number-up-supported",
>      "media-col-default",
>      "media-col-supported",
>      "media-default",
>      "media-size-supported",
>      "media-supported",
>      "media-left-margin-supported",
>      "media-right-margin-supported",
>      "media-bottom-margin-supported",
>      "media-top-margin-supported",
>      "sides-default",
>      "sides-supported",
>      "output-bin-default",
>      "output-bin-supported"
>

You could simply try "all" and "media-col-database", this is what

/usr/share/cups/ipptool/get-printer-attributes-2.0.test

does. This is also what I do in libcupsfilters so that "driverless" and 
cups-browsed can create PPDs.

> Gtk has its own http-based facility to handle IPP requests so it does 
> not call CUPS API for this.

Why that, is it not easier to simply use libcups? What is the specialty 
of this code and where is it located in the source code of GTK?

> The URI is composed of protocol, address, port and resource path of the 
> discovered printer now.
> 

OK, should be correct. Please compare with CUPS output ("lpstat -l -e", 
"lpinfo -l -v").

> However, for the temporary queues there is an issue. How to get names 
> and URIs of those printers without calling the cupsEnumDests()? I can 
> emulate the way the CUPS creates them from the Avahi data but it would 
> be better to get those via an IPP operation.

You probably mean the CUPS URIs to talk to the temporary CUPS queues, as 
the device URIs of the physical printers are derivable from the DNS-SD 
record (protocol://host:port/TXT-"rp"-field). The CUPS URI is always 
ipp(s)://cups-host:cups-port/printers/queue-name. So you have to find 
the correct queue name here, which would match the output of "lpstat 
-e". Best is to check through the source code of CUPS, this is what I do 
in such cases, but AFAIK it is the DNS-SD service name with each group 
of non-alphanumeric characters replaced by a single '_', no change in 
upper/lower case and no removal of a trailing underscore (Michael, am I 
right? Which function in the CUPS source does this?).

    Till
