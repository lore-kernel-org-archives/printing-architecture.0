Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j9ZcpoIeSEZpTRTS+3sBLBBzsfqtXriF7YAYMPcltF4=;
 b=Erg9g56hU9qCh5v5dr7Ue1h+60u9x6FYs10469gnbT7Q46jKsA95YJWxrcYmGEPJ9i
 E/gnyUJ4N4sv1pzPrDgVFC+/ULZEY5YFNBGZvEbjaA94wCltuz+mn93Vje3jWKa5aIjo
 X8XEc8N3bAvJVzMuGCq8n1K9+krVI2KSGzv/PahMtJSvWEGFvggArUjh4ewN1oMUKGu+
 3ylyn/+TVbRVaRu8r+bNiee1CyoKrGS+tULtI6TNRK7+drT9bsyoWxPp/9UGKI53O+yy
 Yyny6XsWWRV6Ud9hpQq4zafDHtsPEfi1e06pQhtxV4CgclbUfl8nDeM4s0sEPAKZobQv
 IY4g==
References: <db292bdb-719a-7408-8799-1e1c659c5006@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <0fbbda56-51f8-d758-9cc3-d3704168b93c@gmail.com>
Date: Tue, 8 Jun 2021 10:58:40 +0200
MIME-Version: 1.0
In-Reply-To: <db292bdb-719a-7408-8799-1e1c659c5006@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] 'driverless' doesn't find CUPS shared
 print queues - expected or a bug?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org

What you have observed is correct.

The "driverless" utility filters out remote CUPS queues, as its 
intention is to retro-fit driverless printer support into classic 
printer setup tools which do not support driverless printing by themselves.

"driverless" here emulates the presence of a driver. When correctly 
installed it is linked into both the /usr/lib/cups/backend and 
/usr/lib/cups/driver directory. In the former it provides discovery of 
the supported driverless IPP printers with correct IPP URIs ("lpinfo -v" 
or equivalent API/IPP calls). This way the printer setup tool discovers 
the printers in question and shows them as network printers.

The link into /usr/lib/cups/driver makes the utility being run (with 
"list" argument) when CUPS is searching for PPD files/drivers ("lpinfo 
-m" or equivalent API/IPP calls). Here the tool runs ippfind again and 
shows for each printer a PPD URI. This makes the printer setup tool 
listing a "driver" for the discovered IPP printer, named "driverless".

Selection of this "driver" ("lpadmin ... -m PPD URI" or equivalent 
API/IPP calls) makes the tool being called with "cat PPD URI" command 
line argument and this way it does an get-printer-attributes IPP request 
on the printer and generates a PPD file based on the result.

As remote CUPS queues are auto-setup by cups-browsed you usually do not 
set them up with a printer setup tool. therefore I suppressed these 
queues in the result of "driverless", to avoid clutter in printer setup 
tools.

Note that https://github.com/OpenPrinting/cups-filters/issues/375 is 
actually a bug. ippfind actually exits with 1 if there is no suitable 
printer found, whereas a CUPS backend in discovery mode should exit with 
0 if no suitable printer got found.

    Till


On 07/06/2021 08:29, Zdenek Dohnal wrote:
> Hi Till,
> 
> I have an bug which I can reproduce in my LAN 
> (https://bugzilla.redhat.com/show_bug.cgi?id=1954469) and in that bug 
> Solomon reported a problem which he has with driverless in his setup.
> 

[...]

