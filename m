Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06982419CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5AEF419CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695424659; x=1696029459;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nQTHI62qDMJN02EDFifNuoUjOYhkEMR/cbavk69tCdY=;
 b=QTlp7j4bCsjCc2csOCf+7HNN05i4MthEGIAItVYyy5I4QQECWnuB3XRAfAxOl8cb3W
 pP6W1Zr6oY/EzSJCgh31O6elG7PJWLfQqwMoBQWKeLkE7zI469qvHvlxjUMak2xDWAPa
 urU097y18TWY+8Uod4tjCY/C7cE8GeVXbWHowL4Hhk1kkXmBT/1Ay7dfnZk/Slr7TRM6
 4xvGLQNtqJkesR8AMe4mPj7whWncrkYgKMURSxVEcpOUn8c5I0zayUFh+XV6ywZS6Yh1
 sm629/s/muHfYZNhUJhhTKCs1h76gy3eCqDNlEisBM5gbac/Yzrup5aOKFKN0gtGJvdE
 kWPQ==
Message-ID: <5bb9b91b-8854-98bd-3956-09731fe0a366@gmail.com>
Date: Sat, 23 Sep 2023 01:17:37 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Final 2.0.0 release of the second
	generation of cups-filters!
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

I have done the final 2.0.0 Release of the new cups-filters components now!

It contains the fix for security vulnerability CVE-2023-4504 in libppd 
and several fixes for bugs reported after RC2.

Here we go:

https://openprinting.github.io/cups-filters-Second-Generation-Final-2.0.0-Release/

There are also GitHub discussions set up for each release.

    Till
