Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BJDNx0mBrhwbtwTLX7kUZFZCnl0s2VBe/U+TruQKWOo=;
 b=GFrFd2Jh44umxQKYu8t+YgLzG2wMamHkIAkW/yiRnoIf7sLIzc40lpwpENIYuGYLGIfo8R
 0zyFzQRN3eJNk99EuEVEPnMKuGwZocplsi7IQv12U46blhtE1oJr4IjkeBqIIxlAmKwg4u
 SKzEmhBKyf2e1v3DXbJgEFBDzljQZGw=
Message-ID: <99584b04-14fb-de2f-d9c8-c4be82ddf5e7@redhat.com>
Date: Mon, 29 Nov 2021 15:40:58 +0100
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] CUPS 2.4.0 is released!
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

Hi all,

CUPS 2.4.0 is the latest stable OpenPrinting CUPS release. Among the 
changes from beta and release candidate the stable release adds two new 
configuration options for optimizing cupsd setup on servers and several 
other changes.

The detailed list of changes:

- Added configure option --with-idle-exit-timeout (Issue #294)$
- Added --with-systemd-timeoutstartsec configure option (Issue #298)$
- DigestOptions now are applied for MD5 Digest authentication defined$
   by RFC 2069 as well (Issue #287)$
- Fixed compilation on Solaris (Issue #293)$
- Fixed and improved German translations (Issue #296, Issue #297)

Enjoy! :)

-- 
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C

