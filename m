Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653546778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JsduEj2edVyaDA9N/VOohox9cjwtwmpONnnd//OYAdY=;
 b=E+QDr8IMLCEi7ZNvdz/7UnXW2kRnTKIE4utmK6KxZgJzJWMrdbdUkguo8jo/jg4zIRvli/
 RW6ZAzFtBUhDQMtD9Rq6MQ1ulasRb+K7XLkzOmYJUtxUJOr+uffiEauH2BEwMV0lQdJCGC
 sKBnngA4Qv5j90s3q4jCQSMVYOsiTKo=
Message-ID: <e9905717-5b97-0665-2e76-65c479d53ba4@redhat.com>
Date: Thu, 26 May 2022 08:32:52 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] CUPS 2.4.2 is released!
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

Hi all!

CUPS 2.4.2 brings the fix for CVE-2022-26691, together with 
LibreSSL/OpenSSL and minimal AIX support. There are lots of bug fixes as 
well, feel free to check the list of changes:

- Fixed certificate strings comparison for Local authorization 
(CVE-2022-26691)
- The `cupsFileOpen` function no longer opens files for append in read-write
   mode (Issue #291)
- The cupsd daemon removed processing temporary queue (Issue #364)
- Fixed delay in IPP backend if GNUTLS is used and endpoint doesn't confirm
   closing the connection (Issue #365)
- Fixed conditional jump based on uninitialized value in cups/ppd.c 
(Issue #329)
- Fixed CSS related issues in CUPS Web UI (Issue #344)
- Fixed copyright in CUPS Web UI trailer template (Issue #346)
- mDNS hostname in device uri is not resolved when installaling a permanent
   IPP Everywhere queue (Issues #340, #343)
- The `lpstat` command now reports when the scheduler is not running
   (Issue #352)
- Updated the man pages concerning the `-h` option (Issue #357)
- Re-added LibreSSL/OpenSSL support (Issue #362)
- Updated the Solaris smf service file (Issue #368)
- Fixed a regression in lpoptions option support (Issue #370)
- The scheduler now regenerates the PPD cache information after changing 
the
   "cupsd.conf" file (Issue #371)
- Updated the scheduler to set "auth-info-required" to 
"username,password" if a
   backend reports it needs authentication info but doesn't set a method 
for
   authentication (Issue #373)
- Updated the configure script to look for the OpenSSL library the old 
way if
   pkg-config is not available (Issue #375)
- Fixed the prototype for the `httpWriteResponse` function (Issue #380)
- Brought back minimal AIX support (Issue #389)
- `cupsGetResponse` did not always set the last error.
- Fixed a number of old references to the Apple CUPS web page.
- Restored the default/generic printer icon file for the web interface.
- Removed old stylesheet classes that are no longer used by the web
   interface.

Enjoy the new CUPS release!

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

