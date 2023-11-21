Return-Path: <konstantin@linuxfoundation.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C17D8137C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A47108131E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1700602524;
 bh=oAvjpOMHMXFjjcZ1tkL8zhq7mIj6UWap4aoN/I8ELs8=;
 h=Date:From:To:Subject:From;
 b=o2HGPKRCnQi+FQyf/OLZ+syg7pBSUUe4GgdhJP+WEZM2Yl+xMPA3q+ptvRAmHN/fR
 RX/Lx6cgkqau9vjbMIvZraffTPLnpUWlIiiiGv66IlsWdtQ0i24gW6+2xPCr7vpGiK
 iLqD6rPQDq8C/VHAUa7mh5c5MNr8Wxz+wFgUEfKU=
Date: Tue, 21 Nov 2023 16:35:22 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [Printing-architecture] RFC: Moving the printing-architecture list
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

Hello, everyone:

The mailman-2 system running on lists.linuxfoundation.org is being retired, so
we need to find new homes for all lists that are being hosted there, and this
includes the printing-architecture list.

We have two options when it comes to where to move to:

1. migrate to lists.linux.dev, which is the platform where most linux
   development lists live
2. migrate to groups.linuxfoundation.org, which is a groups.io managed
   platform; it is generally considered more forgiving for non-developers, but
   it is a proprietary closed platform

The main upside of lists.linux.dev are:

- the canonical address will change to printing-architecture@lists.linux.dev,
  but the old address will continue to work, so any ongoing discussions using
  the old address can play out to their end, and any old documentation will
  continue to remain relevant
- the list will be automatically archived on lore.kernel.org

The main downside of lists.linux.dev:

- HTML email is generally given a higher spam score, so it could be more
  forbidding to some participants to join in conversations
- there is no webby management interface and {un}subscribing requires sending
  mail to printing-architecture+{un}subscribe@lists.linux.dev address.

The main upside of groups.io:

- Rich web interface for management and access to archives
- Newbie-friendly for subscribing and unsubscribing

The main downside of groups.io:

- The list address will change to
  printing-architecture@groups.linuxfoundation.org, and the old address will
  no longer work (there will be an auto-responder bounce with instructions
  where the message should be sent instead).
- Proprietary platform

Let me know how you'd like to proceed. We need to figure this out in the next
few weeks, as we have a limited remaining time to shut down the mailman-2
system behind lists.linuxfoundation.org.

Best regards,
Konstantin
