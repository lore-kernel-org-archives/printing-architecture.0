Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=2azX8TYqF+4fWanh1pkrLMy1/999nfU5szH8b0or0nU=;
	b=HgeiPXjiNIkMjEqDn+8owQ8o5sbP531QIdpuLv+tU3BA1Vh0E30Rs63EBamxcurPms
	hutFkedo5KI7RXJGBaVc9ZYvVv1ZOREP2TZ6Dhd4EQjSUJNWiWy+vgNPwE0nEMsnmCyU
	YH0OMGw8LoceUi6e9cWutOY9oGXsuujmaOkirO/0Bq8drvYhK43oY+H8WUb6HU3cvsch
	T9RD0WtPsfKmTWAasn5vTCetqBTba3BXZ7TvSzrODie8Ei7I1zGEGU2KokhYsoFQBfvf
	CCZBpErTZdWt7WT4XtL01435JA++NF3u2duzps5lgVdojCcFN7OJndEYBysGsk+QK7nC
	m2wg==
Message-ID: <53F39344.1050108@gmail.com>
Date: Tue, 19 Aug 2014 20:11:16 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Last changes on cups-filters
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Below are the most recent changes on cups-filters, mostly this is color
management support by Joe Simon's GSoC project, but there are also many
bug fixes.

IPP Everywhere printer emulation by a shared CUPS queue should be
complete now and should have color management support now.

In the near future color management functionality in the CUPS filters
will migrate into libcupsfilters.

   Till


CHANGES IN V1.0.57

        - rastertopclx: Fixed implicit declaration of
          colord_get_inhibit_for_device_id.
        - Build system: Explicitly link to libm as -lm was dropped
          from cups-config --libs.
        - libcupsfilters, foomaticrip, gstoraster, imagetoraster,
          pdftoraster, rastertopclx, rastertopdf: Handle absence of
          colord or D-Bus gracefully (Ubuntu bug #1356405).

CHANGES IN V1.0.56

        - rastertopdf: Some code polishing and removal of now unneeded
          functions
        - rastertopdf: Reduced color space handling to only
          PWG-supported color spaces
        - rastertopdf: Added colorspace calibration function; included
          optional "/Alternate" PDF key for ICC profile embedding
        - rastertopdf: Colorspace sRGB now embeds srgb icc profile;
          implemented ICC Profile embedding (PDF 1.3 spec)
        - rastertopdf: Added basic color calibration
        - rastertopdf: Implemented ICC Profile creation code for IPP
          Everywhere (from PWG raster)
        - pdftoraster: Added colord handling of ICC profiles
        - kmdevices.cpp/.h: Added interface for Kolor Manager
        - cups-browsed: Do not consider a remote CUPS queue as raw if
          the TXT record is NULL as for queues broadcasted by the
          legacy CUPS method the TXT record does not exist. Now
          consider a queue with NULL TXT record only as raw if the
          domain entry is not empty (which tells that the queue is
          Bonjour-broadcasted (Bug #1223).
        - cups-browsed: Do also not mark a discovered printer as
          already provided by another server when the other server's
          queue has "unconfirmed" status. Mark the other queue with
          "disappeared" or "unconfirmed" status as duplicate of the
          discovered printer so that the new queue for the discovered
          printer does not get removed when the entry for the other
          queue times out.
