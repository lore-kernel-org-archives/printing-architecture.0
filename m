Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=wcLV8V/h/4siQQwk6j0Y+6E1syuNwxzqZPhdNht7m6Y=;
 b=mLKPFyAGvix67RUbE+1v0PPtMLKUeFpSxgrzaflN520R7z6lGFAb6bqcs2L6jrcAcX
 xOAXufEJhyFdSuuD5L1CuPMNY2bNFZi8h4CPcXUAwhycdMId+VWQfvImNUEDvzdM5jdE
 erGUm4PqBxCSVVHMbKwRFpspW3xHzV2zLtPv+7CY2zf0oGsWuAim9179Tf8+jvpcNGhz
 qEu2l4gohdeuwoag+zjAkxSJG4D3TvTzJGQAu+X6qy/BYdyGi78WtoZE/8tRZlTcE/uR
 izTko/W2mRkM3CP7+EtChHenyK0YvUMEO8PNlBZxuijlk5Z74UUL0fu+WAsQTOAvwsT/
 zPIA==
Message-ID: <59e01f78-673e-36f4-0902-48fae69bad8a@gmail.com>
Date: Fri, 6 May 2022 23:43:22 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7ffdde3b-d938-1cfc-4932-cfb670c25b4b@gmail.com>
 <7F73C50B-E93D-450E-A7CB-5E98B56B20B2@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <7F73C50B-E93D-450E-A7CB-5E98B56B20B2@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS 3.x: Printing via D-Bus
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 27/04/2022 14:21, Michael Sweet wrote:
> Till,
> 
> My thoughts on the DBUS interface (and any future XPC interface, should Apple adopt our work) is that it should expose the same IPP operations, attributes, and values as are available over HTTP.
> 
> The local spooler needs to:
> 
> 1. Manage a dynamic list of print destinations (DNS-SD, mDNS, local configuration profiles, Printer Applications, etc.)
> 2. Do queries for state/configuration/capabilities for a given destination, with some level of caching
> 3. Manage a dynamic list of queued jobs for those destinations, with the usual Create/Cancel/Reprint-Job functionality
> 4. Do minimal conversion/transform of document data for the destination (text, image, and PDF to PDF/raster)
> 5. Report any printer/job errors with possible actions (cancel, retry, etc.)
> 6. Handle any authentication challenges when sending jobs to destinations
> 

So the D-Bus interface should be some kind of IPP-over-D-Bus, supporting 
not only the few operations a print dialog needs to do, but instead, 
support all operations one needs for the local CUPS server?

Then it is well differnt to CPDB and trying to make one out of both will 
not actually work. So I will continue CPDB as it was before.

    Till
