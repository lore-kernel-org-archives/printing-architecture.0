Return-Path: <miura828@oki.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oki365.onmicrosoft.com; s=selector1-oki365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V1cF1XaJWU+vpmh3y10lLqg9bKGY8WGzUWf2kl2hTR8=;
 b=WUCl47eWVzF7YSnXqOc8FrbX2PLNt+1V+etwY97+fGkc6Yuz3Ns1OSgUUWgB8EdLYxHQ0sMUAxneNSp59JpWCIvqObAv9tiXRffZw2n5XR0Jn/jxz0amEnUJBQJNGlfm3I53R0G+MNOEkdwZWVBtJ9ElNgdFiMbO7sw6WZ8owBk=
From: =?iso-2022-jp?B?GyRCOzAxOhsoQiAbJEI3chsoQi9LZW4gTWl1cmE=?=
 <miura828@oki.com>
Date: Thu, 7 Jan 2021 03:01:50 +0000
Message-ID: <TYAPR01MB203253C6A008CFE80C468F5D88AF0@TYAPR01MB2032.jpnprd01.prod.outlook.com>
Content-Language: ja-JP
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Printing-architecture] Question about libcupsfilters and libppd on
	macOS
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

Hi, everyone.

I am trying to build cups-filters on macOS. (Unfortunately I met some build=
 errors and I am trying to resolve them.)

My current purpose is investigating "filter functions" realized by libcupsf=
ilters and libppd.
Moreover, my final goal is developing Printer Applications using PAPPL for =
both Linux and macOS.

Do you think that trying to use libcpusfilters and libppd on macOS is make =
sense?

Could you give me any advice or comment?

Thanks
Ken Miura
