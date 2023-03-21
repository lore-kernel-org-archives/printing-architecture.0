Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 826B040897
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 435D240357
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679433574;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tWzMEfbfUvdNcD2k8qNnM2YaYoVuJv7OdZqA4vfCnjs=;
 b=ZCcLpS/YS0nSeetGVvGqPRwDGItT1XHUmz+VLkH8jn4ATGgnIaT8S3PDYhq3bBi6yL
 POa3QX4iZ1KN/QUYD3lhm0UnUCXR+4uZZhdbFjdV+zE3sC56ophowoQg/4Q7zsCU/r/t
 rng88bUZ7LHDrjpWok+Z6RuUt0QgdTzvhaBrsHmIfBF1mtKZ+s/349zfx/rElsbPBymF
 iMKwLMIa+zladGNQBfBh327lC6qBP7pNaeFY0Rqc8x3PnZ3ylwo736quOrSd6mTIxGLE
 GQIO+tTxz1i/Fl8GyrOFTk1t637RwyHSV3BfeMWwhc7B60wCeF9ihbk3LTbi0gs/zxyb
 N6BA==
Message-ID: <c56818cd-9ac8-a512-a3da-81ca91ca6230@gmail.com>
Date: Tue, 21 Mar 2023 22:19:32 +0100
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Forth beta of the cups-browsed in the
 second generation of cups-filters released!
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

I have done the forth beta release of the new, separated cups-browsed 
package, one of the new components of the former cups-filters.

Central part of this release isa new test script, to be used both for 
build tests ( "make check") and tests on the packages installed into a 
system (like autopkgtests of Debian and Ubuntu).

This is not only for general QA but also a requirement for the package 
being accepted in the core part ("Main") of the Ubuntu operating system. 
See also

https://openprinting.github.io/OpenPrinting-News-February-2023/#the-new-architecture-is-going-into-ubuntu-and-red-hat

Developing of such a script naturally involves a lot of testing of 
cups-browsed itself, making us find several bugs and fix them. These 
fixes are also included in the new release.

Here we go:

https://openprinting.github.io/cups-browsed-Second-Generation-Forth-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
