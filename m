Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636700446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=j6bwwueZ9ulUVsjrFGYoW8l0pZoZJdWYqO+9YeXA95o=;
 b=FUBzEOrFY7qPz+81rT/LkroP6BeBN4okq86rUvPxGfO9KHLSfo7bAuqJK7cnz6IUiq88Q7
 n+zImsu/a/RH5buw/+zRjBwa5YFsPKMmDAApxQsV7K22snMVHUfqQFdbSJtb+ZUafEGFti
 dPk/xUktCu4pMIEpyx7pIz/XzAACqUk=
Message-ID: <18984fa4-ddb6-5948-d131-65cc1ac6d8ab@redhat.com>
Date: Fri, 12 Nov 2021 08:00:41 +0100
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] CUPS 2.4rc1 is available!
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

CUPS 2.4rc1 is a release candidate for OpenPrinting CUPS 2.4.0, which 
adds two enhancements before the stable release.

The detailed list of changes:

- Added warning and debug messages when loading printers
  if the queue is raw or with driver (Issue #286)
- Compilation now uses -fstack-protector-strong if available (Issue #285)

Enjoy!

-- 
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C

