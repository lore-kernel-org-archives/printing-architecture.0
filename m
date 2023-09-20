Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC32783AA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19A5D83AA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695218487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mk+AzLSkr00BNqQ8nkEWYw9RkmHksGiOUVXpeJ080GE=;
 b=LRKqJXaXFE+yp5RSFmr5Oqt6dhT4vRkYWlJCxjDhDxAzrirh3yaVqSiHN05SMTpzkmsQOV
 ItjMx3gks3NY30cGGgtGgjMBn5/ZJqUS2QlR5ME00ngLUP+5gM7H/2Oo8b71tD+ddF/U2U
 ea6zWOeFJWDZxmPH4WFVA2Jracy4EY8=
Message-ID: <4a29849b-f365-db56-f1e5-0ac7a6c3e79e@redhat.com>
Date: Wed, 20 Sep 2023 16:01:17 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 2.4.7 is released!
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

CUPS 2.4.7 is released to ship the fix for CVE-2023-4504 and several 
other changes, among them it is adding OpenSSL support for cupsHashData 
function and bug fixes.

Detailed list:

- CVE-2023-4504 - Fixed Heap-based buffer overflow when reading 
Postscript in PPD files
- Added OpenSSL support for cupsHashData (Issue #762)
- Fixed delays in lpd backend (Issue #741)
- Fixed extensive logging in scheduler (Issue #604)
- Fixed hanging of lpstat on IBM AIX (Issue #773)
- Fixed hanging of lpstat on Solaris (Issue #156)
- Fixed printing to stderr if we can't open cups-files.conf (Issue #777)
- Fixed purging job files via cancel -x (Issue #742)
- Fixed RFC 1179 port reserving behavior in LPD backend (Issue #743)
- Fixed a bug in the PPD command interpretation code (Issue #768)

Enjoy the new release!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

