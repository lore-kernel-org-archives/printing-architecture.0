Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=NOGSL91lPbX08E3i3282IJlvtLONBlaEOaskERmfZ0Q=;
	b=N68TomwffdnKQ1UPt6sifTGX95ZgEnH61CA/UU5yoTNBc1WaJRzWpFmv+skb6NQiY5
	Ph92f/OtI2wQCkODooSQHvWK58steS28x2whL2SkFN2XR6ujIOLfnw9CG6x5923QDWaM
	SVSbERTcI0ImvkAcsrwZ4xFKiJSKR2PHZiRZ2Azjs47pFTSmE/8DRAyMb0Bn5ygP/Yfg
	0Sz9l5ndYVDJ2R33Kl2g3rDSWL52quZA/kvt7zLoWEwRsVdy1hFJChl/SZkdUrDYIJO6
	JIgns/W5PbeYJEeIXHrXk9Z0dtr4L0uEl4ajhYt5li8tmi5RyftpYXIF72LVvzyNMBR5
	2jMA==
Message-ID: <5106368B.8000202@gmail.com>
Date: Mon, 28 Jan 2013 09:27:55 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
	<50EECE29.7090803@gmail.com>
	<2A930EB8-185F-400A-8E12-100CE389351D@apple.com>
	<5105433A.10808@gmail.com>
	<839698D5-BD71-4662-8ADA-8157542EEB89@apple.com>
In-Reply-To: <839698D5-BD71-4662-8ADA-8157542EEB89@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP Everywhere: How to make CUPS queue
 so that applications can use these printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 01/28/2013 03:10 AM, Michael Sweet wrote:
> While there currently are no PWG Raster to xyx filters, it is unlikely that they would be used since clients will almost certainly prefer sending PDF or JPEG (less work).
>
> (but feel free to file a bug on cups.org and I'll add it to the list of things to do - PWG Raster to xyz will be super-easy)

Feature request added as

https://www.cups.org/str.php?L4266

    Till

