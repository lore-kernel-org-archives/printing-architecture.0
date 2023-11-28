Return-Path: <Shadow_7@gmx.net>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E1156108E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D03156108D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=s31663417; t=1701190767; x=1701795567; i=shadow_7@gmx.net;
 bh=zVy9ULlGs2qTKE149J27nV263Brg4PMCfNUCrYgc9ro=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=EUfwLipdHOsuMjFDkep2ues2gMrcfmOtP3z2yiShVsyxqKVEjJkl7HpfPvUeP9zm
 ht0ut7oFDr6vHrBuHEnQa0agg6x6UBX6yMoyVZG+jZghtfvPvpPMm7GytN0XrI/Gp
 F77oFJj/HY/QsB8cQ7HkKO7hSRHKZoI1FmLG9D137DKJic5OOl20Y320bHXLcDDGc
 jTyEH6z0KBoY72CPgp40fmHVTuJhTOJSLXVSkZcTQLaH+47+mwag16q4oTQeHoVxI
 6QyRzx9HL8oOH8sHCb+/z6T4DX9hSvmaIQHzd68ao/xSRSm96IOlta3ywSh1NOLxc
 PjkyvGSZYPtlFYqFGQ==
MIME-Version: 1.0
Message-ID: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
From: Stefan K <Shadow_7@gmx.net>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 28 Nov 2023 17:59:27 +0100
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] high delay while printing
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

Hello guys,

I hope someone can help me with my problem because I'm a little bit frustr=
ated and I don't have absolutely no clue how to fix that.

I have a Debian 12 based print server running, all printers are connected =
via IPP which works so far but it takes a while if we start printing multi=
ple pages and then for each page, it takes >15s for the next page. It does=
n't matter if we print PDF or simple text files.

For me, it looks like that cups is waiting until the printer says "I'm don=
e". According to the Documentation I tried ?waitjob=3Dfalse&waitprinter=3D=
false at the end of the deviceURI and restart cups, but it's still the sam=
e. This happens on different types of printers eg. HP PageWide Pro 477dw M=
FP or Kyocera TASKalfa 4052ci

I can attach the error_log with debug information.

Ideas or solutions are very welcome ;-)

thanks in advance

best regards
Stefan

PS: I also asked the Debian ML and opened a bug report
