Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C664C60B54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8D1760750
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661144897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=D2i0V6y0jvEBqlrEOpJusM4ylc93pZbcHVH9sjPQMgk=;
 b=ROfDbn/e2IGyW/twVCu9emdbQ8awB1dibEVlTvAe65xjUX7axZyXnfQHTGX1wRUlVL1j+i
 ZTIL7sdc8Zg790azs8TJAfn+RKS8kDE+6tXEy78iy0hG5z4wt3qJEsC3/+IIWLtuBu7uod
 IuX8Ovpx56GhfKJnXCnWZIzcB6vE4DM=
Message-ID: <865e65a1-20e8-8fa7-892f-0eab109de7c0@redhat.com>
Date: Mon, 22 Aug 2022 07:08:12 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Changing defaults of a driverless printer
	(physical device) via CLI
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, ipp@pwg.org

Hi all,

Fedora user brought up an interesting question for me - whether user has 
some CLI tool for changing default options on the printer itself (which 
supports one or more of driverless standards - AirPrint, IPP Everywhere 
etc.), without going to printer's web interface.

IMHO it might be possible - printer supports IPP 2.0+, CUPS supports IPP 
as well and CUPS CLI tools, which work with CUPS, have an option for 
setting a CUPS server which they want to send the request to. Once the 
local user has the correct permissions (since IPP backend is run under 
root, my guess is root has at least some permissions...) it could be 
possible.

Is my understanding incorrect? Is there a different CLI tool which can 
do the trick? (maybe ipptool?) To be honest I'm interested how is IPP 
usually implemented internally in the printer - is there some CUPS 
version? Or HTTPD (Apache) with proprietary IPP support on the top of 
that? Or  whole HTTP+IPP implementation is written as a new there?

Thank you in advance!


Zdenek

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

