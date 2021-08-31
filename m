Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=2VkpaLig55B/CEFieekD12LtuawfCvsoTg9YeLW2osA=;
 b=bgXM4DDlo1g99YUbuGpNGqNNpRm794lZizd5NwG0zr9t3ZHQtR1uhVblQ4uX7x+Hwu
 /MIRcfQLWp5wt5Mz0c3yhhPIzxhrPuH+w6wJgMvXyYz3qRPeViX46/zeM73KFwh+IxTC
 EqcJnHsTs9aV3HFTN6U5nGzktsUAdnpkd4NmDaNMsJXBvq7100wIerQUXzCyZX5lDckF
 77Va0pZJFpQvqXbf414Swj1wXK3y4EboyJaZjS5yVUs8xzOKWYMcRXX/UO3Vv1w8jmAZ
 bYuiTy+YLOgssZEPffXbznEQsv4vcZh1d29y3NdNccQ5ZZbOQtkCEZaJNVPxFKolmFnD
 TyPA==
References: <CE67ED23-12F1-42B9-A1A2-790966FB4D72@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <a2a2ada6-4226-fbe7-9336-bf44c6c3e740@gmail.com>
Date: Wed, 1 Sep 2021 01:03:04 +0200
MIME-Version: 1.0
In-Reply-To: <CE67ED23-12F1-42B9-A1A2-790966FB4D72@msweet.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] PAPPL 1.1b1
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

Michael, thanks for the announcement.

Now everyone can test the new PAPPL features on the Ghostscript Printer 
Applications and the PostScript Printer Application.

They are rebuilding now in the Snap Store, using the newest PAPPL as 
announced here and will be ready in 30 min to 1 hour depending on 
architecture (amd64 is fastest).

Then they can get grabbed from the Snap Store and the new functionality 
of PAPPL can be tested. Anyone who already has one or another of these 
Printer Applications installed as Snap will get an automatic updated.

    Till


On 31/08/2021 23:03, Michael Sweet via Printing-architecture wrote:
> All,
> 
> The first beta release of PAPPL v1.1 is now available for download.  PAPPL v1.1 adds support for Wi-Fi configuration, IPP-USB, printer driver lookup and auto-add functionality, improves management of multiple printers, and adds support for Microsoft® Windows® 10 and higher.
> 
> 	https://github.com/michaelrsweet/pappl/releases/tag/v1.1b1
> 
> Changes in 1.1b1 include:
> 
> - Added support for Windows 10 and higher.
> - Added `PAPPL_SOPTIONS_NO_TLS` option to disable TLS support.
> - Added Wi-Fi callbacks to support configuration over IPP-USB (Issue #45)
> - Added buttons and sub-commands to pause and resume printers (Issue #124)
> - `papplMainLoop` now uses a persistent location for state and spool files by
>    default (Issue #128)
> - `papplMainLoop` now supports clients talking to a system-wide server running
>    as root (Issue #148)
> - Added a "set default" button to the web interface (Issue #150)
> - The `drivers` sub-command now reports the IEEE-1284 device ID for a given
>    driver (Issue #157)
> - Jobs can now be canceled and printers deleted when a processing job is trying
>    to connect to a printer (Issue #163)
> - The default media is now updated if the ready media for a given tray is
>    updated (Issue #164)
> - Fixed an issue with the "drivers" sub-command not working if you don't have a
>    system callback.
> - Fixed a deadlock issue on macOS.
> - Added a new `papplJobCreateWithFile` API to allow printer applications to
>    submit print jobs internally.
> - Refactored the `papplSystem` hostname/port APIs to be consistent with the
>    naming used for the `papplClient` APIs.
> 
> Enjoy!
> 
> ________________________
> Michael Sweet
> 
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
