Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5353060A70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56FF9607BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jct3UmI/6Cus3yyP05EMoSEyk/8NmcjLMZ46WPDYUkk=;
 b=P5YehGUjS3OVwQz7kuSWCNoW6P/6Yg0BAs98cKvk5xWXAndMt+gxrcyf3zMbHPTEtf
 z1Vx0yJ2H3LwNAPkR4AsQbjvVCYKBkCUP7o/W9LzZp1aJk31R3cU6cf0Oap3hKzu03Ny
 KlGHLnJIiTNkeAImdgEXbpvxc2q0NAUSfFFQGdvSXjeEcDwnXVt3za5LvGKAjfR4rNyG
 F2J99oBS4+g0QUfUCZZxAx5d6ontWi5HT5i6ppkZNGKzF1ccUjNxdnHV1XNAbfV8Mdjc
 FANN1F08vac/8QEXFKAcU4giMNopm8eUz/jHQbrwwq2LUEJ7i2H+FOMZzkZ11fE2dWJz
 If6g==
Message-ID: <acf50795-1628-1746-c82a-d8290ffca169@gmail.com>
Date: Mon, 9 Jan 2023 00:29:29 -0300
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Second beta of the second generation of
	cups-filters released!
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

I have done the second beta releases of the new cups-filters components now!

During creation of the Debian/Ubuntu packages for the components of the 
2nd-generation cups-filters and also during the further development of 
the Common Print Dialog Backends (CPDB) some bugs were discovered which 
are fixed now.

Also the adaptation of the source code documentation files to the 
individual components was not yet complete.

So there were many things to fix and these fixes are now available in 
the second beta release.

Here we go:

https://openprinting.github.io/cups-filters-Second-Generation-Second-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
