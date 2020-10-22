Return-Path: <pzz@apevzner.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=t/ue4lubWXcrTk4rgdmA/h+9UBX91qtioYoKOqrJD+I=;
 b=LWsykNkTeYDTCkcaMSeRirmx3iu130U43XL8UR2heP0QyAEzYW5HrgI1YXfAdjodsG
 TDtJfS/X2//k+5kY17de1B0JHE2DPRx1sKMtsBzGRXezIrTEB9QsmvaZePveiONtQ31M
 34WFiZs0TWUZis+jMen3FXCtKxusrDbNi2jQxkO/iJ8q4nmvHxmppaqBdK2ENMlv78Kj
 j2AKpPHVukHCU3nWrzYa9w/VQgyTVUNIhJG2docE+pApj7lh+JUnyYvQl4UE1npNNFVx
 eOEw9kR9AEXBzTraXKhWAXNOinGlkTzP7FtQq/cGY7yZV6iPPk8+ZLlbr/02JSmJwC1y
 gfpQ==
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
From: Alexander Pevzner <pzz@apevzner.com>
Message-ID: <9e45b8ca-0bde-12bb-5555-e469bdd27852@apevzner.com>
Date: Thu, 22 Oct 2020 23:13:46 +0300
MIME-Version: 1.0
In-Reply-To: <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
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

Hi Michael,

On 10/21/20 11:49 PM, Michael Sweet wrote:
> Aside from maybe retrying the Validate-Job request if it fails the first time, I'm not sure

I wonder why we can't always send Print-Job and bypass the Validate-Job 
step?

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
