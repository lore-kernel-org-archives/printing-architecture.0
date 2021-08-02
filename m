Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627906094;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ua1EJC5KtNqGh7v+pgVEqir3yfjSIIvuvJxE+VhwUKw=;
 b=OdPLzCim2GBA4bZdvFhV8nC/MNWJHzLPHh2ZlTwaV8YyCDTdQGdGTLL8FQ+Ega6jkqSnVN
 rmM5Po4ibpvrhdO5BQG3cvFntYLQEtAKE0AVUcqx3Fofyy4DwIwyuJxbAsDZfYmMVynTgD
 RD0X+HoeYMNoINpqIO0Fer4qN5yWm8I=
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <d0ca08d5-67d3-bd44-0162-6ed913b6a9db@redhat.com>
Date: Mon, 2 Aug 2021 14:08:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
Subject: [Printing-architecture] How to share an IPP print queue from
	Windows to Linux without samba
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: cups@cups.org, printing-architecture@lists.linux-foundation.org

Hi all,

last week I was trying to share an IPP queue from Windows machine to=20
Linux machine on the same network, but without using Samba - I tried it=20
because I wanted to find whether samba printer application will be=20
needed in the future, because IMO it is one of possible outcomes in the=20
future if we remove drivers (manufacturers will not implement a printer=20
application if their printer has advanced features above IPP Everywhere=20
and will say 'use win driver+samba' for advanced features)

But I wasn't lucky - I followed how-to's for windows how to share a=20
print queue (which I set up), turned off firewall on the Windows machine=20
and tried to look for mDNS messages from Linux host, but I haven't seen=20
any... it looks 'sharing' in Windows just enables the queue for sharing=20
via Samba...

Then I tried to create a permanent queue in Linux host, but I'm not sure=20
about on which port Windows printing daemon lives.

Was anyone able to set the printer sharing from Windows without Samba?=20
Is it even possible?


Thank you in advance!


Zdenek

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C


