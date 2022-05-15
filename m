Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=3nOixA+HQ9jp7hGxOlm9E7DzWoY1okMYIIBxYaEv0bI=;
 b=qYwO1Oh+XXS2RAhaQHVurBxOv6qRmbkbr96PeOBgyveehM4Dax4qq7IdxPaG2KOPTB
 ukokaEHt7balyYPWAEkcNBD8+PqiceFU11N4G5Dan5jr0fBg+BGu2mBt0/jWkcRHx3XR
 i0E7iLti2C/MGBjLuP/hHr4LZa1vdZuDJLu/h+XFexPmZar1nQg//QRf83fJPJcozOwg
 6Z7Cm27gkXtgJnNn02V4cYW/ONtbMN89QIIZbl57FL9o91fNfDW2iPmPsJz/n1LOClem
 3MrMxynGspmQWyeEXGBN6pNWgbwvXibBWwdpVyehKW59fjPPsAmeEykGR+BAIVJc6JgP
 aOog==
Message-ID: <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
Date: Sun, 15 May 2022 15:47:58 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 04/05/2022 02:49, Michael Sweet via Printing-architecture wrote:
> PAPPL v1.2rc1 is now available for download from:

[...]

> - Added unit test support for the new SNMP-based supply level and status monitoring code.

[...]

> - Fixed double "Supplies" buttons in the web interface.

[...]

> - Fixed printer compatibility issues with the new `papplDeviceGetSupplies` API.

[...]

Is there any documentation/example for how to get a "Supplies" button 
(or permanent display on printer page) to display the supply levels 
obtained from the printer via SNMP? I would like to add such 
functionality to pappl-retrofit.

    Till
