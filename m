Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C19A41573
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67217408D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691018394; x=1691623194;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Srd8bGgsUpvMur8dSbucqYhDNFzkC9dfqcBgmZMzCh0=;
 b=o3OB9iNK/0SPqfWamFVbFOMoumTog+ZS29tE6cK8TddUmGMGYBv6O+/HSv4wxjcnEe
 Dch+ddM/pa0ajtRy3qGyUENfadOtumVIZYzfickOGLlhB2M/6OpiFChOoNa0M8YofSwX
 6lE32hknYVu5OBuCR9ZY1Lu4+EIe/ES3/edv2jN8XWeUVN8ErY9d0PUpffyrYdw2epcj
 kqKPSEQLG0EUV2S0PI6s2PCDjWPfrVjfkjwGxA5/txDzeVnAgV5ZmV/wsnmw72Sh2j72
 +qrg9Ikux/E1y9YoTOU8J9JapssKTwHCwVG1Ko9/qB/mnw+TPhcU24bpbP6dN+I2/AqJ
 iEQw==
Message-ID: <19de2dd0-1f1b-2b0b-6b15-f3c608ab6908@gmail.com>
Date: Thu, 3 Aug 2023 01:19:51 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Forth beta of the second generation of the
 Common Print Dialog Backends released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>, Frederik Feichtmeier <frederik.feichtmeier@gmail.com>, Michael Sweet <msweet@msweet.org>, Sebastien Bacher <sebastien.bacher@canonical.com>, Ken VanDine <ken.vandine@canonical.com>, Tim Holmes-Mitra <tim.holmes-mitra@canonical.com>

Hi,

We are now releasing the fifth beta of the second generation of the 
Common Print Dialog Backends (CPDB).

Main change is the removal of the backend info files, in a standard 
installation in the /usr/share/print-backends/ directory. They are not 
actually needed, all containing the D-Bus object path /, which we can 
simply hard-code, and we also cannot use the files to determine which 
backends are there, as both the frontend and the backends can be 
provided in a sandboxed package, like a Snap or an OCI container 
(podman, Docker, …), and so cannot read each other’s file systems.

So frontends communicate with backends purely by D-Bus, not any more by 
the file system.

In addition, we have fixed several bugs, especially security 
vulnerability CVE-2023-34095, a buffer overflow due to unlimited 
scanning of input strings by scanf() and fscanf() calls, some crashers, 
and a bug breaking make install.

The components we are currently maintaining got all updated and released 
as version 2.0b5.

Here we go:

https://openprinting.github.io/Common-Print-Dialog-Backends-Second-Generation-Fifth-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
