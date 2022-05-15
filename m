Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=AvhEoPWFcKf9uHjv8xUjX/wIHTGIf1OfT0a8zg/XnAI=;
 b=ETM1jdFCAywF2QwUp06DRLxyiqLPs/6wuC95XVlLucfrxrk4+3G0IECfApoJ7RjuVT
 Zag3MPHRuPdw7mkovGJUXEXgLVfYqDMySA2g1KXnFGJ2uGg005FfU8aF7EaBUpR0cCvM
 m06XaQZLIT3fKMt8LwR6g9ifzRIWMkNnloGRiUaQHzrPe7rKiW/W1vMpapAqgRn8sk4H
 bYb1lp6fkP5IbVrZf7KeFQwA3e29MBbUti9quKETfL4ciAO9GgK5l9XJPPjKsiaI5eTM
 EpgF7j2ZqjtHeZmJIPlNcwfM0ze5gBIeDCwIC4Vx4cJNpo1oSTZcCd31hfjyIUUcrRfd
 QCGQ==
Message-ID: <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
Date: Sun, 15 May 2022 15:44:43 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2.0
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

On 15/05/2022 14:35, Michael Sweet via Printing-architecture wrote:
> All,
> 
> PAPPL v1.2.0 is now available for download from:
> 
> 	https://github.com/michaelrsweet/pappl/releases/tag/v1.2.0
> 
> PAPPL v1.2 adds full localization, support for additional IPP features, and some other improvements.  Changes in 1.2.0 include:
> 

Is there any documentation or example how to get human-readable strings 
for the vendor options/attributes on the "Printer Defaults" web 
interface page?

For pappl-retrofit I would like to show the same human-readable strings 
as one sees them in the PPD files.

    Till
