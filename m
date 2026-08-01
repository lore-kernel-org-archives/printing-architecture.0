Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34282E8B67
	for <printing-architecture@lists.linux.dev>; Sun,  2 Aug 2026 00:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785628803; cv=none; b=TtMFJaeIUTgxB+kPsePfEmYs1aDqCWXWELuu0Lapr0UzUBrXOZSLWaQ65ueRK/lEysPYLA4LY50LJCnS+YEyldNL16Avan5ILIBUN0Ujcux712JboRj0c77qlBWwUNYXlKDo3slmt/rp/f+sDBCStlZA7E/u1NxH1NSf778AZ34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785628803; c=relaxed/simple;
	bh=+oAH2HeXF+Vu3L0kaQ6aIDzuMEwLakxb/NX82LAWriA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ce8BVXyh7BaE82m6/iDGCrM+0H66dCP7GNq4kkJy7fr6y1cM5Isxn0eud+Z2FJIT82ERCMpLEzCRoJ3OdpLAwrDDHfvWihNwVXog2JlkrJjyqtAGgcVgktwh57ejk2s0KlNyOP2LmMjPWboY3wTBq2BOploAmGYyQR2g6vVFTYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MsA8OLDW; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MsA8OLDW"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4720f3bf164so1969601f8f.1
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 17:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785628800; x=1786233600; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Za5r9N8gWtNRGk/mqPdH3AFkKLy8qufKvVShI0cSRfg=;
        b=MsA8OLDW7SGJSJLJyIOPV0RS2gmYSxCpctp7DivRVFSfQ3mr2ZcG1THvI5dI4RWBUp
         WusStfVDnBKy0tHo1k7514AoM7IH7hUUWHGhnZQ6QX4sfIvdoFZAnFIjg8CKUor0qReZ
         Ra4Ow8hhI0+j1XpGKoOjPFb9InggWS8NngjOymzdFG7WeY1rl6JOLVmeT3LLK/iu1aK7
         +HO6pXWtDYiOIL2l9FOGZyZxNbdK54+Rm6ivvye1E+CTE8Tf29HkTiZF//PPUmbpGuII
         uXYKJa6vmXnpixjKPwqD+gocNSrMRh1dJ2gnVv3ru+q+JVXsqpHwcEUUj26avsSj6/kh
         Vsnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785628800; x=1786233600;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Za5r9N8gWtNRGk/mqPdH3AFkKLy8qufKvVShI0cSRfg=;
        b=C36r1Lm5b7noV0gCPlv5niROYvyXEiKGIA8aTtn+YPXOnZfURdrN7FvBLn9gxoS/Jd
         AjW7bnA6OemN/sa2iBqL5GrSCq7ePdVX9ZrpGw7x5Bn1hGKAB9HMRQD7Uhtzn583RIiH
         lu/6tSWwXRKIFg5ZOIk8Y8C5/f4uzXz6DdPDgL3ZCcBNZRE2AwmUF2ygZH6kUMseSobS
         a8e5ioCob4OJpYPL4UO1buiZRsKhZK9vH2Vpfvv3gwKnQNLVIA6CdPx07DqliAnYmxSd
         48jI9V0fQlMP3eIeUo+pa898jrPAf3sLUQXLroAZrjjo4OlWi9wH3s7/pCNubnvaBR2k
         tg3w==
X-Gm-Message-State: AOJu0YxBT1MU9n9fAYzqZQlfSyzIbtRaWUWHmkO0xoMP4BJUagyHaybP
	4RGHF50IyDQLcR0doy128Il+Lyr384kXUQ5w/3Y07R34aqhGHFnqUPr5
X-Gm-Gg: AR+sD11RPTmWJGxZ6xVGyrk1B2dFrHxvyEdgTodA9/NCIO2iSgtPajp2bAe3dlh97h3
	d0FVsn1SVw9tvJo1Pb3zbyi2lQTxOvPesJmFqvoAOzqFVXKIwQfzsjwaJ9tLwcg9m5hf87akNiE
	iQNDXlcMzMSik5ErLYM9ie0b/RrmgSiLdj793DG4AqppYao3tKrpbEfFOLNZeM0EKwu5X07iP+X
	XMetAIU36v6T3Esp0CgbC4cgcv6bclBn1rKBOHjJkOOE1I5baFpeJpz9pAnbkCiwghlslsv6PTC
	QolmQjsJSns6VE2zcnN5ixiHpnGzP3C8dW4PIGpsfqdCES8OxW9BCWbTDLGEXaL0etVxAN4CNj1
	2NlqHytBni+WouJytykQ8+Dpv/7cAohGnljLEWkFdnWaZYjyZUlNAXhSel/G3MXAY/H+ebm/8A4
	+Bapl5TSHt6f+RmprbaOwnlDUGdIDMeP5iYcDZ4lunumT3EcBTQbQyXZ3ba//qKxN7VB39gF9tD
	Mi/JuIcJrekBZHnLxZ+sO6jgD4tFpSdOKgeulRQ7+Zh6CUdQiEdCZi7Fg==
X-Received: by 2002:a05:6000:4701:b0:47f:6f2b:4e26 with SMTP id ffacd0b85a97d-47fd725b3f4mr11438124f8f.3.1785628799704;
        Sat, 01 Aug 2026 16:59:59 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd458ab61sm19680708f8f.25.2026.08.01.16.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 16:59:59 -0700 (PDT)
Message-ID: <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
Date: Sun, 2 Aug 2026 01:59:58 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
From: Till Kamppeter <till.kamppeter@gmail.com>
To: Michael Sweet <msweet@msweet.org>,
 AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Cc: printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com>
Content-Language: en-US
In-Reply-To: <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Abdelrahman,

here is how profiles work for the case of DNS-SD turned off:

https://github.com/OpenPrinting/cups-local/issues/2#issuecomment-1749078644

This works with the local server only.

The three lines in the example are:

1. For all print destinations (like printing, fax out) of a network printer (you 
specify the IP/name and port) or for a print server appliance.

2. For a remote CUPS server, all print destinations which it is sharing

3. For a single print destination

Profile files can also contain filters, so that if you have an enterprise 
network with DNS-SD turned on, print dialogs do not get cluttered with 
irrelevant printers. See

https://github.com/OpenPrinting/cups-local/issues/2#issuecomment-1749078668


The sharing server works like a Printer Application. You create queues on it, 
but those queues are pointing to IPP print destinations which you want to share. 
It is for relaying an IPP printer from one local network to another local 
network, or to gate jobs through the sharing server for page accounting or for 
access restriction.

    Till


On 8/1/26 23:48, Till Kamppeter wrote:
> Abdelrahman,
> 
> I think now I see how the concept in CUPS 3.x is meant:
> 
> First, in "Add Printer" you do not only allow to look for legacy printers to 
> assign Printer Applications to, but you also look for driverless network 
> printers which are not visible due to mDNS/DNS-SD not running or the printer 
> being in a network not being your local one.
> 
> So in "Add Printer" you give the options as I suggested before:
> 
> On 8/1/26 21:50, Till Kamppeter wrote:
>> Abdelrahman,
>>
>> If there is no mDNS/DNS-SD active you can do:
>>
>> 1. Put an option into the "Add Printer" part where the user only enters the IP 
>> (or host name) of the printer. It could then try get-printer-attributes on
>> - ipps://IP:443/
>> - ipps://IP:631/
>> - ipp://IP:631/
>> - ipps://IP:8000/
>> - ipp://IP:8000/
>> - ipps://IP:8001/
>> - ipp://IP:8001/
>> - ...
>>
>> Test 1 and 3 are for network printers, 2 and 3 for remote CUPS servers, 4+ for 
>> remote Printer Applications.
>>
>> 2. Also test
>> - ipp://localhost:60000/
>> - ipp://localhost:60001/
>> - ...
>> - ipps://localhost:8000/
>> - ipp://localhost:8000/
>> - ipps://localhost:8001/
>> - ipp://localhost:8001/
>> - ...
>>
>> either automatically in the main view or  by button(s) in "Add Printer". This 
>> is for local IPP-over-USB printers and local Printer Applications.
>>
> 
> You also give the option to select a network, to extend IPP printer discovery 
> into that network. For example the user can add the corporate printer VLAN here.
> 
> Settings will be saved in profiles in ~/.cups/profiles/
> 
> You can also add a switch to "Add Printer" to make system-wide settings, then 
> they get saved in /etc/cups/profiles/. Flicking this switch requires 
> authentication for a root operation.
> 
> So you add to the "Add Printer" part a GUI frontend for defining profiles.
> 
> The profiles are NOT being used by the running CUPS daemon (local or sharing) 
> but by the function in libcups (cupsEnumDests()) to list available print 
> destinations. All print dialogs will have to use this function (if a dialog uses 
> CPDB it will use this function).
> 
> So from Michael we need to know what the capabilities and the syntax of the 
> files for profiles are.
> 
> 
> Also, you can add "Set Option Defaults" buttons to all print destinations in the 
> main view. This button is to be considered as a GUI frontend for the "lpoptions" 
> command (or its libcups API equivalent, see source code of "lpoptions"). So 
> settings get saved in ~/.cups/lpoptions (or with "system-wide" switch and 
> authentication in /etc/cups/lpoptions). Note that these saved options do not 
> require that the daemon has a permanent queue. They are only used by the client 
> side (print dialogs of all portals and toolkits, CPDB, CLI tools).
> 
> 
> Michael, am I right now?
> 
>     Till
> 

