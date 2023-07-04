Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8340860D65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73C0A60740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688490033; x=1691082033;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pQ5EnGgkwh99LCGcKy6osI0twE+eLVobTmXvjgkmnCQ=;
 b=or9hpeZe1vS/ETe+1ewiQazsVoRXCagcUCxbP87lTqtehxwjUVMBka28KHz94xqgAk
 TEQK1fzrPxo8pHnepLlrhpLx2s7iU67qn9nVZfo/xdSoXe8G9nSbbLikxzzqJ9a2ATlc
 4kpnoc+ZAYtj6AaOI231zhQlPQpzijaVxnGuU0jdrQhZm6b57XNMQSuWAJukvlTJ4mj+
 OpG0HGz3cVWsEASyVjjuz9DJFBfJQ3g4bfxdJYxR+O+TJzyHKyqKxZmC1LyeoE8CLrCs
 yDS1cBkq+h6tvL/LnH79FTJjhylKOhlW9CGyjouZYTs5F8lDxg+OpXa94wayXf2hhBPl
 KfEw==
Message-ID: <97d1d797-7cf0-c237-f2ad-85ed0cc44da7@gmail.com>
Date: Tue, 4 Jul 2023 19:00:31 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Second Release Candidate of the second
 generation of cups-filters released!
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

I have done the Second Release Candidate of the new cups-filters 
components now!

It covers the fixes of bugs reported shortly after the release of the 
first two distros (Ubuntu 23.04, Fedora 38) including cups-filters 2.x 
(2.0rc1).

Also a fix resulting from testing the fully updated CUPS Snap are 
included, and the fix for our first security vulnerability report.

But I did not yet do the final release and did a second release 
candidate first, as I have synced the libppd code with the PPD file 
support code of current CUPS. The PPD support code of CUPS got spun out 
for starting libppd three years ago and after that there happened many 
changes not being synced during all this time, and therefore there 
should be a little more time for testing.

If nothing severe happens, I will release cups-filters 2.0.0 final in a 
few weeks, so that perhaps we can celebrate it on the GUADEC …

Here we go:

https://openprinting.github.io/cups-filters-Second-Generation-Release-Candidate-2/

There are also GitHub discussions set up for each release.

    Till
