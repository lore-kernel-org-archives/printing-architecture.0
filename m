Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99C0040146
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C99F40017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692554541; x=1693159341;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZYJcuBN5j3LgpEsoUJA3pVKZ1RiAmVjYQdoP0y5IPWg=;
 b=qwGVCXv/Y2XdeOiexEvaDKG839Yhkd3fQ61atzk4WZC9WS2J5FIUbws2I2vHy+YwKA
 6ICap5eZk8059nrEXlH/6k1u+Zzt3J1s5FqHU61obzPndMUL6GR2zyy3TiwBJ/DoVEkf
 E01kCb4bThHQmh5Bgu12hST5SEecM8Ge8RBLO+Or5d2OlqX4cGYxLOEBfj9oIfmP1m34
 +238RPyVazGW8ww9/++WrOF6IN3LX2to0dfcLx8LGwgEty1/ScQUsCjbM0SQylHlzuqn
 6E3fcmfvm6Wf15ib3u26LVlN3lYZ297sL1QPAdMyrowii0xojrnvwQ+pPR22JdV3djpt
 BG4g==
Message-ID: <928cbe8b-1c02-2593-f446-6141631490a9@gmail.com>
Date: Sun, 20 Aug 2023 20:02:18 +0200
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OpenPrinting - Documentation urgently
	needed!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Kurt Pfeifle <kurt.pfeifle@gmail.com>, Amin Bandali <amin.bandali@canonical.com>, Mohit Verma <b20215@students.iitmandi.ac.in>, Heather Ellsworth <hellsworth@protonmail.com>, Sahil Arora <sahilarora.535@gmail.com>, Dheeraj Yadav <dhirajyadav135@gmail.com>, Monica Madon <mayhens@gmail.com>

Hi,

now, with good parts of the New Architecture of printing and scanning 
done, we see a lot of new code but we are really lacking documentation 
for our software.

We already had some discussion about documentation, different types, 
ways of obtaining, ... on the OpenPrinting micro-conference on the Linux 
Plumbers 2022:

Slides:
https://lpc.events/event/16/contributions/1160/attachments/943/1853/lpc-printing-docs-2022.pdf
https://lpc.events/event/16/contributions/1160/attachments/943/1860/documentation-openprinting-extra.pdf

Recording:
https://www.youtube.com/watch?v=XoNydHus4VU

Now I would like to find some people who could help us in writing 
documentation, making drawings and graphics, ... Therefore I am posting 
this mail on the OpenPrinting mailing list but also direct it to people 
who already have done documentation for OpenPrinting, spoke up that they 
would like to volunteer on documentation, have contributed drawings and 
graphics (or have done nice one in their projects) ...

What we need is documentation for:

- Developers: Library functions of libcupsfilters, libppd,
   libpappl-retrofit, cpdb-libs, ... Documentation for individual
   functions and data strutures is put right into the source code, tools
   like Michael Sweet's codedoc generate the actual documentation from
   that. Requires knowledge about coding.

- Admins: How to configure and set up things in networks

- Users: Easy steps to get printing just work.

Documentation will be posted on our web site but also included in source 
packages.

We need reference manuals, man pages, HOWTOs, tutorials, also teaching 
things in YouTube videos is welcome ...

So everyone who likes to contribute something is welcome to do so! 
Please speak up here and tell what you like to contribute.

I will also run an OpenPrinting Roadmap Sprint on Sep 8, in the IIT 
Mandi in Northern India, on the Opportunity Open Source which I am 
organizing there.

https://events.canonical.com/event/35/

Depending on your answers and suggestions here I will do a session about 
documentation. You could connect by video to it and participate, or if 
you are near Mandi, come in person.

Let us not only have great printing and scanning but also great 
documentation for it!

    Till
