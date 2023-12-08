Return-Path: <gheskett@shentel.net>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D1FC6F6C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9A606F6A0
Message-ID: <b2c6c270-4933-4bde-a299-52802e6e8d88@shentel.net>
Date: Fri, 8 Dec 2023 12:25:23 -0500
MIME-Version: 1.0
Content-Language: en-US
References: <fa90fbc0-1523-4dc0-b16e-3bbb8e2dac56@apevzner.com>
 <3BC27CB9-23C9-4D9B-8862-693F255177B6@msweet.org>
From: gene heskett <gheskett@shentel.net>
In-Reply-To: <3BC27CB9-23C9-4D9B-8862-693F255177B6@msweet.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] github.com/OpenPrinting/goipp 1.1.0
 andipp-usb 0.9.24 announce
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

On 12/8/23 12:15, Michael Sweet via Printing-architecture wrote:
> Alexander,
> 
>> On Dec 8, 2023, at 11:02 AM, Alexander Pevzner <pzz@apevzner.com> wrote:
>> ...
>> Please note, that fixing Pantum M7300FDW requires the similar patch in CUPS, which is not currently approved (see https://github.com/OpenPrinting/cups/pull/826).
> 
> *No*.  Fixing this printers requires that the printer manufacturer fixes their firmware...  It is one thing if an attribute is using an odd syntax (e.g. name instead of keyword), but quite another thing when they break a fundamental part of the IPP encoding that has known, *previously exploited* security implications.  Think of it as a malicious USB device that causes an issue when plugged into a computer...
> 
> ________________________
> Michael Sweet
> 
I actually have one of those Michael, a usb driven sd card reader/writer 
that kills arm's if plugged it at boot times.  Works fine on wintel stuff.

> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

Cheers, Gene Heskett.
-- 
"There are four boxes to be used in defense of liberty:
  soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)
If we desire respect for the law, we must first make the law respectable.
  - Louis D. Brandeis

