Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OLC9a/3VLQwG43M/QoFtztXurdMgG3sTKvoCtW7tI3k=;
 b=BMVid1LdFuB682aOREOcohjwZlms5D44JswhEmnPmjyiwimXNeIgzQBZCgzyAKMmcI
 fxpteQzkmfhg0j61+BgrvNd6Gun+aIMsPFhcA9yFhQwCXsShSi2YuMToeKXCxc9RDEsl
 nrqg/vu/VEGVLK2i4GDAnmiYDsThub2M3Yp9BYGDppNVMbP0gyYEa4kIKAiHmNcLzjJF
 lU8ArVMfUE8xOT1cKZji6WyyLn2V0uZIFOj2uFQ/HhWH4eHESuU1B/265wMpfdwTChoY
 zlXelcdfw3e0BMXUK6Yhj/StfyLhA1Hjer71Dg6+XbwlG7jhk01eqnPelK1Jnyq6V2wY
 wRjQ==
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
 <c4e910ab-ba48-9200-aa48-45d1eeeecf45@redhat.com>
 <ce086f37-e6b2-2a6d-c292-c6bb95d2532b@gmail.com>
 <64171bfe-d62f-86f8-3c97-2a2391836f1a@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <8d2201e1-0f47-0b09-0348-f44c7ab16a7b@gmail.com>
Date: Wed, 29 Jul 2020 15:46:10 +0200
MIME-Version: 1.0
In-Reply-To: <64171bfe-d62f-86f8-3c97-2a2391836f1a@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
To: Zdenek Dohnal <zdohnal@redhat.com>, Marek Kasik <mkasik@redhat.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Rithvik Patibandla <rithp9@gmail.com>

On 29/07/2020 14:54, Zdenek Dohnal wrote:
> Then how would you explain printing from GTK works for some cases via
> DNS-SD based queue as it worked in our office? If it didn't work
> completely, it would be more tickets about the issue.

This is really strange for me, too, especially that I can access my 
printer correctly when not using the GTK dialog.

Marek, when the dialog discovers an IPP network printer via 
DNS-SD/Avahi, without using CUPS, how does the dialog then poll the 
printer's capability information? Is it directly doing a 
get-printer-attributes IPP request? Which URI is it using and which 
arguments ("all", "media-col-database", ...)? Or is it using some API 
function of CUPS?

    Till
