Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D916E81D16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 265BB81D11
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A6DCC82016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1665260456;
 bh=G8PhqYbXODqz4QJSnsyAy1cOafc0u2GG8eWAN3eSLlc=;
 h=From:Date:Subject:To:From;
 b=dHpb3xfb1bYQYtx9Wo+cfI7DP7w9fLGwfjML8Luf+jarK7FzIUZtmA0iQ5Cdn9TaD
 nizz2WNTem/rM/zcfs2jHvJXyUuEnN4pa0MycPe76QKbdQzBYQGYlgWJvL9Tx/w68c
 4Q7A6S/KmJiYANoZPc//GLTUxzMlcChEVctmrsEU=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.2\))
Date: Sat, 8 Oct 2022 16:20:45 -0400
Message-Id: <A5F7DA59-A941-44DE-9678-2ECEAC0B9AC6@msweet.org>
Subject: [Printing-architecture] PAPPL 1.2.3
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

PAPPL v1.2.3 is now available for download and is a general bug fix release:

	https://github.com/michaelrsweet/pappl/releases/tag/v1.2.3

Changes in 1.2.3 include:

- Fixed a bug in the TLS upgrade logic.
- Fixed a potential memory underflow with USB device IDs.
- Fixed web interface support for vendor text options (Issue #142)

Enjoy!

________________________
Michael Sweet

