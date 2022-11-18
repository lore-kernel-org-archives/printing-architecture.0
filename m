Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8ABA840CF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 862C240CEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=btKIlADDuPrd6b7VQ+3U6/w/f/Uwg9YRjQt7Z8atsHU=;
 b=LDIZjT1lp/qKbEnDMXqQdsGyvVO/MNiLwOwDpw+fdc731R2+CnyDzhvL44isNZj+hS
 vq+n8YfwBhGdb3YHFnKA69ihgPPrZ6triY9Xg3kFS0wvtksoBjZd8s0IA5WtwuqarzsM
 mvPyAAUJMYPB86NFyYmGoc4Pq5hFPKq6z7xjBGyg1+0pvFLyQXi9PXgyUVyO0xfH3Gg4
 a4Nm9CuuCFkvHQctvotVyP6PHp0E/Shwd7k5TvHNf48jEBr0SY08NYqonH86EghIiQG2
 8j7AS/lvHRImHOa1JB3TMXJTX5RW7i658d+tp5HwhI7FubXTjpMmKGzkdcsdhQgnCHgy
 93+A==
Message-ID: <1c0aa85e-67d4-ccd5-a303-23afb37f4067@gmail.com>
Date: Fri, 18 Nov 2022 15:01:20 +0100
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] First beta the second generation of
	cups-filters released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>, Didier 'OdyX' Raboud <odyx@debian.org>, Frederik Feichtmeier <frederik.feichtmeier@gmail.com>, Michael Sweet <msweet@msweet.org>, Sebastien Bacher <sebastien.bacher@canonical.com>, Ken VanDine <ken.vandine@canonical.com>

Hi,

I have done another cups-filters release now!

But now it is a special on: After more than 2 years of hard work and 
following the needs of the New Architecture for printing and scanning, 
of the Printer Applications, of the abolishment of PPD file use in CUPS 
3.x, ... I have now completed cups-filters 2.x, the second generation of 
cups-filters!

The cups-filters project is now split into several parts, similar to 
CUPS on its transition to the 3.x series. This way the PPD file support 
for retro-fitting legacy printer drivers is complete separated (in 
libppd) from the core filter code and so the filters (as filter 
functions in libcupsfilters) are conserved into the PPD-less future and 
can be used in Printer Applications for example.

This way we can continue development on the filter code and have the PPD 
support code in maintenance mode for the retro-fitting Printer Applications.

There are the following parts now:

- libcupsfilters: The central library with the filter functions and some
   useful functions for printer drivers, human-readable strings and
   translation handling for IPP attributes, … It does not contain any
   support for PPD files.

- libppd: PPD file support library providing the complete support for
   PPD files from libcups (2.x and earlier, see ppd/ppd.h), the CUPS PPD
   compiler and utilities (ppdc, see ppd/ppdc.h) and functions to convert
   PPD Options into IPP attributes, to add PPD file support to the filter
   functions of libcupsfilters, to handle collections of PPD files, …
   This library is only for legacy PPD and driver support, it should not
   motivate anyone to create new PPD files!

- cups-filters: Legacy CUPS filter/backend executables for CUPS 2.x.
   Uses both libcupsfilters and libppd. Any XXXtoYYY filters, foomatic-
   rip, driverless, …

- braille-printer-app: The Braille embosser driver code plus Chandresh
   Soni’s GSoC work to turn this code into a Printer Application.

- cups-browsed: Daemon to automatically create local print queues for
   network printers and remote CUPS queues and to create printer
   clusters. Will be turned into a Printer Application later (GSoC
   project?).

Here we go:

https://openprinting.github.io/cups-filters-Second-Generation-First-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
