Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=0O6H1upXNAW5mXbKvnRx94ejdurG1U1nJGTAwDis+So=;
	b=NpJuYzxfGOnK07hXG99WEyQPzOmLi6eFPVbszo1OEb2xVcpfn3fgLTFM3tcOBeKDaw
	Me3XmpoUNdxqd/fKSAXw9iio6cytj+lxKhFS1NXghPVnMDhK0tqfehTIAV6Wkp/Pd26i
	8CUM4N5c/MrOfjTB2vJqBUFnbmquKPMVAXEBK9Ue3/0lwwCbB/LT4Vv0bhfzh9fmCKII
	yh8IcHWd8aD2f8sBP/92eQpKDHUTiIji95HILpziObVmouq4Nyfh0C93uBh+nPO9+zOw
	PSQH7yoY1BZTeP9+GJAEFJQZpDmcKH4FXikDlCLWT3g+pa/6ofD7/b+39haTQLYLa4sc
	Lv8Q==
Message-ID: <4FC4FE5C.2090006@gmail.com>
Date: Tue, 29 May 2012 18:50:36 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp>
	<1330690418.32498.29.camel@rubik>
	<20120303.113354.329374074.sho@bbr.jp>
	<1330949656.9812.8.camel@rubik> <4F54D580.7090608@gmail.com>
	<4FC4F3FD.6080605@redhat.com>
In-Reply-To: <4FC4F3FD.6080605@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Jiri Popelka <jpopelka@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org

The pdftopdf filter as it is currently in cups-filters is deprecated. 
Tobias Hoffmann is writing a new pdftopdf filter which does not copy 
Poppler code at all. Then the UGooString stuff will go away.

    Till

On 05/29/2012 06:06 PM, Jiri Popelka wrote:
> Otani-san, Till,
>
> compiling cups-filters 1.0.18 I see
> ...
> checking UGooString.h usability... no
> checking UGooString.h presence... no
> checking for UGooString.h... no
> ...
>
> Trying to discover what's this UGooString and why it's not on my system
> I found out that it used to be part of poppler but was definitelly
> removed [1] in version 0.6.0. pdftopdf still uses it and has it's own
> copy which it uses when there's no UGooString found on the system.
>
> It seem's [2] that the last known version (before it was removed) was
> quite different than what's been in pdftopdf's UGooString.[h|cxx].
> I have no idea which version is newer but it's worth checking whether
> the [2] version doesn't fix any bugs.
>
> Anyway, I think that the checking for system wide UGooString.h when
> building pdftopdf could be removed because I don't think anybody uses
> poppler < 0.6.0. It just confuses people (like me).
>
>
> [1]
> http://cgit.freedesktop.org/poppler/poppler/commit/?id=bf7e0e980bf29994021cb1228f89f582adddf284
>
>
> [2]
> http://cgit.freedesktop.org/poppler/poppler/tree/poppler/UGooString.cc?id=ba74bb3b0632593d1937911d73709fc870480efd
>
>
>
> --
> Jiri
>
> On 03/05/2012 04:02 PM, Till Kamppeter wrote:
>>
>> Otani-san, for the time being until we succeed to get the Poppler
>> developers to expose the additional APIs for implementing pdftopdf and
>> pdftoopvp, can you update the duplictaed code to the newest file
>> versions available, so that the known vulnerabilities are fixed? Thanks
>> in advance.
>

