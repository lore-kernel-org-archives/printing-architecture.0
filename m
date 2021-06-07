Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623047375;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7TM6+Rqz2OzUmcsOSkKsgKHXudPJQ3AI3UTLvOiO2ZM=;
 b=O4SrVzkGZHxlqaW/0DYlC+xXMaz6V8Cdw6TGciYISaSGPfRIFZFWpzzwS8jSo/8x578x9P
 tD0yTStL6PfAQAST/Zttt8OshZCmdFmXULgzVKSnfbd7z6kU2O9+gI/9P5tFk+yfG2r9XV
 vcoIhBBAGsm3T+TuFEWi/H3JKYATFrI=
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <db292bdb-719a-7408-8799-1e1c659c5006@redhat.com>
Date: Mon, 7 Jun 2021 08:29:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
Subject: [Printing-architecture] 'driverless' doesn't find CUPS shared print
 queues - expected or a bug?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: till.kamppeter@gmail.com
Cc: printing-architecture@lists.linux-foundation.org

Hi Till,

I have an bug which I can reproduce in my LAN=20
(https://bugzilla.redhat.com/show_bug.cgi?id=3D1954469) and in that bug=20
Solomon reported a problem which he has with driverless in his setup.

He uses client and server topology in his LAN where server shares print=20
queues in LAN, and 'driverless' on the client machine doesn't return any=20
uris, but ippfind and avahi-browse can see the queues.

Is it an expected behavior or a bug?

AFAIK 'driverless' has never returned remote print queues in the past,=20
and driverless sets '! --txt printer-type' to exclude remote print=20
queues during generating ippfind arguments, so IMO it is the expected=20
behavior. IIUC driverless was introduced to have a way how to install=20
driverless print queue for a printer in cases when GUI isn't able to=20
work with temp queues. And remote CUPS queues were intended to be=20
covered via cups-browsed, so that can be the reason (together with the=20
reason that they aren't real devices) why driverless doesn't report them.

I'm writing this to verify my findings and my understanding of the code=20
with you as the original author, so I will not mystify other people in=20
the future.

Thank you in advance and have a nice day,


Zdenek

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C


