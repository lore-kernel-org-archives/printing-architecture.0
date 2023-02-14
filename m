Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A0A860BD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE31860F63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YysMxychcqI5nsjsOYYOKtcoZpjaogd1ThXPeyZuBcw=;
 b=BdkXj49dplWMp5w7yV04+copPMz/fcOpXCBqveQPlEq67ca2tRIvqey7n+JWFBEhdO
 EtEyKBhVCmcUgew3klPqgilC8Rg91zWiF2HOzdmRI0dFbSGmoQd4XSgOwZi5vA7lRCrE
 fuKS8UwWHn9Cl161VXu1xrnr3ezJdNfrMd2JUrCwqqdhrhjUjGTbQfMCLqwLYZ3qUQti
 OFyHJLu8nyBKsJ+rrdZe919HpQi1BJ1Sch1djhiYPA/8jsP2usdyerw5RTnuluyaJgWD
 k5Qhr1WYIfakJOLVO2/v1IIijepwY1bdtkq/8ND2VU4HRy5HX99W8KQoMhGkhzjpo8M1
 dwvg==
Message-ID: <df7baa01-4dfe-33aa-c7fc-fc4c50d25e1a@gmail.com>
Date: Tue, 14 Feb 2023 18:36:04 +0100
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Second beta of the second generation of the
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

We are now releasing the second beta of the second generation of the 
Common Print Dialog Backends (CPDB).

In the 4.9.4 version of GTK the Merge Request [1] for Gaurav Gulerias 
GSoC work [2] on adding CPDB support to GTK’s print dialog got finally 
accepted. To reach this goal, Gaurav also needed to do a lot of 
enhancements on CPDB itself, and when his merge request got accepted 
into GTK, CPDB 2.0b1 was already 2 months old and after that a lot of 
changes have been done, ending up with GTK’s CPDB support not building 
with any released version of CPDB [3]. Therefore we have now released 
version 2.0b2 of all the three components of the CPDB to allow easy 
building of the first CPDB-supporting GTK.

[1] https://gitlab.gnome.org/GNOME/gtk/-/merge_requests/4930
[2] https://github.com/TinyTrebuchet/gsoc22/
[3] https://gitlab.gnome.org/GNOME/gtk/-/issues/5589

The components we are currently maintaining got all updated and released 
as version 2.0b2.

We especially added support for starting print the dialog with a 
complete list of available printers and keeping the list up-to-date 
while the dialog is open. We also added support for option groups (like 
"Media", "Color", "Finishing", ...) and translations for option, choice, 
and group names, letting in the first place the backends obtain the 
translations from the printing system and/or the printer, before the 
frontend uses translations for standard names. And, as usual, there are 
many bug fixes.

Here we go:

https://openprinting.github.io/Common-Print-Dialog-Backends-Second-Generation-Second-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
