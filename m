Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C110F813D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76A4F813CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679432416;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IWsV2NQyCLQ6m6UcNwbF5Q6A3EfGheXc1253gtQ+6F4=;
 b=F/09cPStlFsZYYwP389qj1n1YPrglchr1K963ULcwVJXdC4sV6qo6qHBfB2CN4WweV
 IU8k+awm81fKbdjcLPrwtU/Gj/Lsu6Rbq9U3xxP+EJGhFjk7vBT9FTp2JMZYvjexrNaH
 IywnUXadJt6/YQfg2kRF2+l3HR1oOxliDpiM45MdWdUK4nB4xce6sgGBafaWPpb2eaSC
 /c4va6Qn3ikAxsGzFwb3sqA3ukDtdQg9uOHQOOLnrF8uhDXZcDXt+1Ms2/cQ9hUFMrmj
 ZzoBARcGzAPElmWnafQwEkucEr1KFVM10eYoWbAYpjjUmjzVG2dWmbNbWhw9MJz6iqL5
 uM5A==
Message-ID: <35659086-3f0e-11cf-11a1-cf64e010263b@gmail.com>
Date: Tue, 21 Mar 2023 22:00:13 +0100
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>, Frederik Feichtmeier <frederik.feichtmeier@gmail.com>, Michael Sweet <msweet@msweet.org>, Sebastien Bacher <sebastien.bacher@canonical.com>, Ken VanDine <ken.vandine@canonical.com>

Hi,

We are now releasing the forth beta of the second generation of the 
Common Print Dialog Backends (CPDB).

Main addition are build test scripts (make check) for all the three 
components, as they are not only useful for general QA but especially 
required for inclusion of the CPDB packages into Ubuntu Main. Main is 
the core part of Ubuntu, which gets full support from Canonical.

To facilitate creation of test scripts for the backends, for creating 
test scripts which test packages installed into a system (like 
autopkgtests of Debian and Ubuntu), and also for general development and 
debugging use, the demo programs of cpdb-libs (former demo/ 
sub-directory) got promoted to be development tools. Not only their 
directory got renamed (to tools/) but also the programs get built 
together with the libraries by make and get installed by make install. 
And they got also renamed to nicely live in a system: cpdb-text-frontend 
and cpdb-pickle-print.

Another feature to ease writing test scripts for backend packages is 
that now the frontend library does not only look for backend metadata in 
a hard-wired system directory (/usr/share/print-backends/) but one can 
provide an alternative location via the CPDB_BACKEND_INFO_DIR 
environment variable. So a build test of a freshly compiled and not yet 
installed backend is no problem any more.

And while developing test scripts one usually tests the software itself 
a lot. And this revealed some bugs, including crashers, which got also 
fixed with this release.

The components we are currently maintaining got all updated and released 
as version 2.0b4.

Here we go:

https://openprinting.github.io/Common-Print-Dialog-Backends-Second-Generation-Forth-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
