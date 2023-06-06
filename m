Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF6B1402B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5227140121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686057703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ledM4fSII8/LhlOCv9jwHM/CCy76eT5pNV078Y6kHhA=;
 b=c8zsbVyXtEQFUKiPBbBg5PLfRcImkUVrOyj3AKD6zG6tccCLR5IFE4QqsXMscQKtY6Bz70
 TCKyI28cUEwXWdUdvkkULk821s0ygU2Au8/JqaELpFCEUYk0IXgsOisnkCEkmTzUgEUXFU
 2gm/WExs8/dhEXjIaZoVT6WxWTZmNk4=
Message-ID: <ebda7360-8741-9793-b1bc-474f76359a38@redhat.com>
Date: Tue, 6 Jun 2023 15:21:39 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 2.4.4 hotfix release is out!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi all,

there was a major bug discovered in `cupsGetNamedDest()` (Issue #719 on 
OpenPrinting CUPS Github), which led me to release 2.4.4 early as a 
hotfix release.

I'm sorry for inconvenience and enjoy the new release!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

