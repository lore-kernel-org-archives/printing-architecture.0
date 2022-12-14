Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EED860F60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 284C860E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j4ZIreH9kyn7+e3u00PuQQipDyrM0tSWowj3MKYjMtM=;
 b=Ohg62sOMCYDLSi8d8Pxs1NS93qvQtQ6znMTvWBDYpzlydVMcVF2YmqTPjAwDBePO2f
 85at7CB6LrPK/lMzTkraxKo/gP7qbLKC14aeIclj0l0xkKr01pc1bqyCv4E4Xz4ON/Dn
 qNPHinOxOR6uC6jca4tMswGGJSkuE0oSGNl6qB3/w5kKveTUdp6DfUvIQVtki/megB0M
 mD+NzO0L1A0EIvDxlmMaYFoVgFWo1GcCESEbICZTbigCzZOmY/jaXDrjrSK+DqOzf6Si
 EVE1JB3Hti/wluom9DucsXelZ3Wve6YouXQThh8+KVDNq9CdFNVdDJBhEiuKZbJ3D2PL
 XTCw==
Message-ID: <e556884d-e068-0783-d497-05e94c0f9a0e@gmail.com>
Date: Tue, 13 Dec 2022 23:31:28 -0300
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] First beta of the second generation of the
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>, Frederik Feichtmeier <frederik.feichtmeier@gmail.com>, Michael Sweet <msweet@msweet.org>, Sebastien Bacher <sebastien.bacher@canonical.com>, Ken VanDine <ken.vandine@canonical.com>

Hi,

We are now releasing the first beta of the second generation of the 
Common Print Dialog Backends (CPDB).

As part of making everything ready for the New Architecture of printing 
we have finally added CPDB support to the print dialogs of the major 
desktop environments/GUI toolkits, GNOME/GTK and KDE/Qt. This was done 
in Gaurav Guleria's GSoC project and in the course of his work on the 
print dialogs he also did a lot of improvements on the CPDB framework, 
mainly due to missing features but also to work well in a PPD-less world.

The components we are currently maintaining got all updated and released 
as version 2.0b1:

- **cpdb-libs:** The central library package implementing both ends of 
the D-Bus interface (backend = server, frontend = client) and the APIs 
for frontends and backends.
- **cpdb-backend-cups:** The CUPS backend. It allows the print dialogs 
(frontends) to print with CUPS. It polls the list of available printers 
(queues) from CUPS and also the option/setting list for a selected 
printer, and it passes on jobs with option settings to CUPS. It uses the 
current APIs of libcups for that and does not interact with PPD files at 
all, so that porting the backend to CUPS 3.x will be easy.
- **cpdb-backend-file:** This backend allows the print dialogs to print 
into a file. As most print dialogs have already their own functionality 
for that, this backend will probably not be needed in production. We 
have it at least for sake of completeness, but it is also useful as code 
example for backend developers.

We especially added support for human-readable (user interface) strings 
for option and setting names, better support for media sizes, especially 
also supporting more than one margin variant for the same page size. 
asynchronous functions to query printer details, cpdb-libs completely 
inependent of libcups, ... and many bug fixes.

Here we go:

https://openprinting.github.io/Common-Print-Dialog-Backends-Second-Generation-First-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
