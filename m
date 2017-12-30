Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=xI91RevOVFEGceMSexAv6LWH5cUa/L1DWDhh/oMtQzw=;
	b=noHXbjEuhjcObgRjDve77UNzGVUgv4BQiFmPB0vCvsBPm14+RGNCu0UeKyW0jaJsv7
	/uduaeCVLBjYU2q9uDOUJ26zaSRaJbsn7PAG7dmJDysMnbBEf4dGqGqqOT+FbAO1t6vG
	2wDjVF5RIZ9QKX98VvJjwzoAZvhZgzH5MUwsQidFj8tUH+y/Q0OJWMzLt6P+fxCTyQqk
	MvIATl2ztZxyJPPW+PehAg3HLns5yJ4pYAt13bneqmkgkVAaKha/zB6O8+WIzC/BlfwS
	0MhTBClTjxKCnrfBt8ZDHOytkPdmTDwLPrA8BYqepjpEjKwTk3MspqLvo4cqCq+u+5BT
	axjQ==
Message-ID: <1514644818.2747.67.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Sat, 30 Dec 2017 15:40:18 +0100
In-Reply-To: <1E61ADED-A678-4953-8533-8818C39FA63E@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
	<1513189960.2462.29.camel@obry.net>
	<7C9470F2-1453-469F-B71E-3B7499A44CED@apple.com>
	<1513192373.2462.33.camel@obry.net>
	<4C3DF113-A35B-4D88-8A3C-0E5A699BB41C@apple.com>
	<1513204278.2462.45.camel@obry.net>
	<CA+9ZNicGERJ38dBhN7abEXaC30wPRbkNuzWF8Oo09VEpjh5pqQ@mail.gmail.com>
	<1E61ADED-A678-4953-8533-8818C39FA63E@apple.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS and Borderless
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


Hello Michael,

I'm wondering what is the solution to check, using the CUPS IPP API, if
a printer does support borderless printing?

Is that with cupsGetDestMediaByIndex(..., &size)? Where in size we have
for a given paper left, top, bottom and right set to 0?

Thanks,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
