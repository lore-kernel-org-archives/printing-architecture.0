Return-Path: <pzz@apevzner.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA7B0606EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 217DB60594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner.com; s=google; t=1702482833; x=1703087633;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nzvuQuYXK2Aj93cwrBlplLw9WIu3IF8zjM5iqts5hdI=;
 b=l3TW39QpK48l/WemvPVZOfBayJUJ+OdsG8HYETh6fN1vjwNET5NgaRa2Rj4G9iQpSe
 yjmINmZmrIKR7jzBUfBt6QkAVxY279AMHJK8DcRlbhobQ6glTk8O+FXl9YUDgj1fqHWx
 mONM0jxJVZowu06+iIdpwL79WPlKiocuz78W5Edqin/awZYI++9ioWOqysUiHujcShro
 8rQauM+M1yi67USxi/vUumefUhprDI5ZF5eoks5nZ4PSXbEt+JSpWZD5pho88XmrUggQ
 Da7U4GADKrdHsux4T+XkaNvl0CyH1qE58+CA6TVaOvR2Vy48mIBOmxZi0ihD4dlk+sGv
 lYmQ==
Message-ID: <12765e3d-a27b-499f-be6e-2d85c585ddfc@apevzner.com>
Date: Wed, 13 Dec 2023 18:53:51 +0300
MIME-Version: 1.0
Content-Language: en-US
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
 <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
 <ZXYwgQqZayDJsT9-@shaftnet.org>
 <9B9A7C8D-5C36-465A-890A-44CF6AF68F6B@msweet.org>
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <9B9A7C8D-5C36-465A-890A-44CF6AF68F6B@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
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

Michael,

On 12/11/23 01:38, Michael Sweet via Printing-architecture wrote:

> First, we really don't know whether the customer has the most recent version of the firmware.  Second, we don't know whether the printer works with any of those other OS's.  Finally, this particular issue might not manifest as a "problem" (one that prevents printing) unless you tried to print something that doesn't match the media in the printer...

The printer is currently in my home lab, so I can try anything. As I 
already told, to the best of my knowledge, the printer has a latest 
firmware.

And yes, this issue is a "problem" that prevents printing - CUPS can't 
parse Get-Printer-Attributes response, so it even doesn't attempt to print.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

