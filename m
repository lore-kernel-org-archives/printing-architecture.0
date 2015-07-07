Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=qbOv6BLu/qv4eCcLEBYSnNRM909rwQ/h0omB1RxgHfo=;
	b=h1ef6Hq4GVRZ4HT9OhEvjR5vP7dItFGcYj8/9QWY8L/jk6kCt744vQVUlbkP1tdiGp
	HLutrGhBn/V47j2W5U6UYNSddBq2PRBx3ditqZD3yjWU9buU7qdL6hSeNYGVk6h1kzDR
	/pVseiEyxnd4jVpOtRidtQ6jEpUXGLfnmqyLXOztb4W+hhZBJn72b2DemaFY2fno0Un7
	JR2oBStIjoBL7RFn5SeilCwF7Xp/rHo8a7HZpTMVda6LcYAU1sAgEjh/atOynGrFbV5e
	P01zdXbqlCxEzrAOX8y8yAuZaHo0kMdCmMBgjX5opEIAACq53MnkOF26KvaK4TewgTrX
	oHoQ==
Message-ID: <559B2849.7060907@gmail.com>
Date: Mon, 06 Jul 2015 22:15:53 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Upstream future of ippusbxd
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Debian-printing@lists.debian.org, "twaugh@redhat.com" <twaugh@redhat.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

ippusbxd is a daemon to support IPP-over-USB printing, a standard for a 
packet-based USB protocol for printers, which especially adds full IPP 
and HTTP functionality to a USB-connected, non-networked printer: Web 
interface of the printer for configuration (especially also the 
printer's WiFi if it does not have a front panel) and for using the 
built-in scanner, IPP querying of printer properties, and even 
driverless printing via IPP Everywhere.

The daemon was developed by Daniel Dresssler as a GSoC project. Now 
Daniel has no time any more to maintain it and upstream maintainership 
is going over to me (and so to OpenPrinting).

I am thinking about joining it into the cups-filters upstream package to 
not have too many tiny packages to make up the complete printing stack 
and cups-filters contains all manufacturer-independent software for 
communication with printers which is not part of CUPS itself. It will 
usually be used with CUPS anyway as there are no other maintained 
printing environments. You will simply have as manufacturer-independent 
part of the printing stack CUPS, cups-filters, and at least one PDF 
renderer (currently Ghostscript or Poppler, in the future perhaps also 
MuPDF) plus the manufacturer-dependent drivers (foomatic-db, HPLIP, 
Gutenprint, ...).

WDYT?

    Till
