Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54D3E417B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 683A2408C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659623059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SG9OE5mk4IkMguug2ZJYjNsqQ8JQiPnjf9PVrOl674M=;
 b=aOPr7miQjRNNqGbcRvYKiexIsh/rOh3GWnTCgPn3LmmvVM81DDn8p+eEPFD118jcNX1Aor
 QEL1J0uz8BAC4RK10jSGWzWKDNI/2GvKVGQIN+zX6U5LZdv0LN1LMRbx4AkTgZfiFgCnkv
 FabnIxeGybs1XIK229WEagCgTC7kgSE=
Message-ID: <885dd8ac-97fe-3891-22bb-f4904925c400@redhat.com>
Date: Thu, 4 Aug 2022 16:24:15 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Firefox 103 supports temporary queues!
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

I'm happy to announce that Firefox 103 has started to show temporary 
queues in their own print dialog and printing via them works (at least 
on Fedora).

Feel free to test/leave feedback what to improve! I'll pass the feedback 
to Firefox upstream people from Fedora community.

I'm glad the another application added temporary queue support, which 
brings us closer to CUPS 3.0 :)


Zdenek

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

