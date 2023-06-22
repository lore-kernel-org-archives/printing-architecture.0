Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAC3983BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3542583BD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1687430290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LGVhsB4MfjLQHHkEtw9zQ780h2NeT2/aDjFnpgxGYyA=;
 b=WUwWiTHgxFIxJE6q4P9/0K8q7cZU5/p4m5LVJ5FphwW+wQCkxy+TVFle5x1g97dyh9N+Aa
 Z2wIF+E6uY2IYkxcTzoKtS5IsF9OBs++3uht7QaJQYHOSfpnzGDRIK/6E340392bujS9ev
 BBTnZHSQLjyJBohk6VbfEXg4Q+R5Kys=
Message-ID: <bc238c7f-859a-e90e-f2c2-196bc853af7a@redhat.com>
Date: Thu, 22 Jun 2023 12:38:06 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 2.4.6 is released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi all!

CUPS 2.4.6 is released to ship the fix for the latest CVE - 
CVE-2023-34241 - and two other bug fixes.

Detailed list:
- Fix linking error on old MacOS (Issue #715)
- Fix printing multiple files on specific printers (Issue #643)
- Fix use-after-free when logging warnings in case of failures in 
`cupsdAcceptClient()` (fixes CVE-2023-34241)

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

