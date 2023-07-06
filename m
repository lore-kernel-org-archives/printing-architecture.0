Return-Path: <valentijn@sessink.nl>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CE5360FD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 733A460EF2
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sessink.nl; s=201802;
 t=1688661050; bh=4KtQpCyUYMrSuz0c3qrD+zWjsj799P2JDJOM199Qyjk=;
 h=Date:To:From:Subject:From;
 b=XBugLjcWIPO14WYCCenitfE6iB49DQawyl8x/m6q87Tx2hrUuego+tzURl/jnYD3d
 lTnrc2HMZsU94pywy/+93pnH39sLc2jaA6mvz8oVuyKzxgkogzVjVJCCZ5gXh9i8HE
 42P90/31o+0AIjsQAoLrgcckzLCSiUpdHb6ygUPA=
Message-ID: <bbfa3c5b-2c46-ac6a-5b57-079136de38ca@sessink.nl>
Date: Thu, 6 Jul 2023 18:30:49 +0200
MIME-Version: 1.0
Content-Language: nl-NL
From: Valentijn Sessink <valentijn@sessink.nl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] automatically detected printers and duplex
	printing
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

Hi list,

I'm not sure if this is the right list - if not, I hope someone would be 
so kind as to point out where to ask this.

At my (small, 10 persons) office, we have several Linux machines with 
printers connected, most of them being Ubuntu 22.04, some Ubuntu 23.04. 
They all used to print through autodetection - cups-browsed.

Since some time (dunno when exactly), there is a problem with duplex 
printing: auto detected printers won't print duplex. I have to add the 
printers manually to get them to print duplex.

What am I doing wrong? What should I do to debug?

Best regards,

Valentijn
