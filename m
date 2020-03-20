Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=6sDl7jlHKL1jk2tuqCA7/f5HuFJO+WUvEh1d5N6jLpk=;
 b=gm0yFBc61p7WUqS2+MKeHw7B4qGlj6q2bQ8v1dTAzsnRoY4tWi6ZruYruMCd7aJt7n
 SXy0C3tDfTPciBta3byYHLK+i0JBW3a5Uk/JbBlnjkreZjSTjte+IJ1Mj1A1N0IA0wUu
 gTaTKbJ288VDK0fddnjPhyviOVZ4OloRqYb5rnVpB2TXY5SAhMvPP0VuXGkzXJos6mdO
 Mew0znBWg3IfjqTYx7Tj5TZVMS1oooBevFCXZxYVR0nUPDFuC7vwOksCHDpIh9RNMMNP
 3F53bI8oiG8XG+MFZ/PltzWeugaB1zrtV334bRB3Yl5siAOLF571M+nG/7+FWaTURonf
 1FJg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <ec5fcaf8-6c98-b65b-879c-50c0723c515b@gmail.com>
Date: Fri, 20 Mar 2020 17:52:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.27.3 released!
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

Hi,

Bug fix release, fixing Ghostscript-based PDF page counting in 
foomatic-rip to work with all Ghostscript versions, building 
libfontembed tests with correct path to test font, re-sharing of remote 
CUPS queues with cups-browsed and others

Here we go:

https://openprinting.github.io/cups-filters-1.27.3-released/

    Till
