Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE4C760FC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1F3E60DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661875497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=OpNED/NKXlhmSq6g5vOu/6qkN09gifta8uUekafPYFw=;
 b=Fe4BlFzYknh537KoVuiSIIrpU3MfqhrpnZQJvqIi1+sRxoqg5ZCBwDhXeAwxTOUhHSOUIy
 gFuL2Chw+JzoWNGcaliih6QMjAKWJJBalu6STlI4pE+BDSP+6TKSS5CjcI/mUbsErPUVB2
 sfIOuHS1+T4euVFyC3AZsq3XkFdplOM=
Message-ID: <4955cff8-2fac-1845-9fe0-c6f9ee65cf30@redhat.com>
Date: Tue, 30 Aug 2022 18:04:03 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] system-config-printer 1.5.18 is released!
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

Hi all,

I bring a new bug fix release which fixes system-config-printer on 
non-GNOME desktops (which don't have libhandy installed). Here is the 
complete list of fixes:

- Add <launchable/> into the .appdata.xml file (#269)
- Accessiblity improvements (#244)
- system-config-printer couldn't be uninstalled vi GNOME Software (#273)
- system-config-printer crashes due missing libhandy (#283)
- Updated config.sub and config.guess to fix configuration error on RiSC 
(#282)
- Use pkg-config or --with-cups-serverbin-dir for finding SERVERBIN (#234)

Enjoy!

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

