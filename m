Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBDED60DB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DABAF60D91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nF1RsLJ01ig8XmWwEy322EXpt8r9VhaoHfIk35vbues=;
 b=V3csHZq0J+GxtEe7EPXjWUk12Ml8LXoc9j6yaxsL+ktMCXjLHDLRbk53MzYKpH81Xf
 8OKxjoX8LAxzZgWQKo0/nV9PGG6rJFUWfFoVsyCRffNNdWTG0yKUZPjFSooac4VXtrSl
 Dg8OyLOlAtHgGZylmGG0H1VeLuxlBlyvlHdBYoXvFvp5o7kRpVyvS+3FL65hfHLsHUu9
 B5EID3gP7A8KdmCC0ijdSfp8ly4ZVTZDu79S/of8NwYvgEq7HUL3tsypfgIkKUfRGcCZ
 vGeu4uBbHGVn8+3gy35OVLnfyKvQ6jpYG87J1tMzLkXe3iR25hbFm+ZW25wuHlkB+zeH
 Gdlw==
Message-ID: <4c901f76-d9cc-1283-0741-a78d2f2c9ad7@gmail.com>
Date: Tue, 31 Jan 2023 21:55:27 -0300
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Third beta of the second generation of
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

I have done the third beta releases of the new cups-filters components now!

During creation of the Debian, Ubuntu, and Red Hat packages for the 
components of the 2nd-generation of cups-filters and also during the 
investigation of reported issues some more bugs got discovered and fixed.

Especially in all the component’s source code tarballs the LICENSE file 
was missing, which is a problem for Linux distributions using the 
packages. Now all license- and copyright-relevant files, AUTHORS, 
COPYING, LICENSE, and NOTICE are included in the source tarballs of all 
the 4 components.

Also unnecessary dependencies, remaining from the times when everything 
was only a single repository, and overlooked during the separation, got 
removed, especially in libcupsfilters.

And minor functional glitches and shortcomings, discovered by users 
(using cups-filters 1.x but the problem continued in 2.x) and by 
Debian's and Ubuntu’s automatic testing during package build 
(autopkgtest), got spotted and fixed.

Here we go:

https://openprinting.github.io/cups-filters-Second-Generation-Third-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
