Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3ADA34013F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E8AA400F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=50Cf2qJ1phoIh+mHzFzEtz8EgvbGj6zdd50waGg+vJQ=;
 b=VO9Pguhd5XtujvO0+4c98ohasz9P8/sZU1FzL9mzma65nlqIumflpSSF++gOkI7ti8
 v81I4r/oTpR+KzFonqXI/RVJjIJYRk6ylUbhwzQ7vNcAa14omHLx67pZ/HV4JH/oRx+C
 /eEDJAAxLjl/ZBQij6fSrGU0dmz5/oynaRVtbhxDa564Eur0Yb5ZlTUDqcNMlwHgFbR/
 ygkXPm3veQLJbjKtxpl0LeENlm30soKlrWV/F4uKX75wu1d2Idgaj5JPJKEteHNoUx/+
 SMecbj1v8hr2CLBJu0/CMX2gNthD34YTunPtrRF5a9pubu8rGI8EZmZfDp1sj9nfE+vh
 MjVg==
Message-ID: <bda56eb2-ee79-d452-9d2a-a73c1013b435@gmail.com>
Date: Fri, 9 Dec 2022 18:27:38 -0300
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] First beta of pappl-retrofit released!
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

After two years of development (first year as part of the PostScript 
Printer Application) I am finally spinning a first release of 
pappl-retrofit, the library to convert classic CUPS printer drivers and 
PPD files into Printer Applications.

With CUPS 3.x (does not support PPDs/classic drivers) around the corner 
and also my plans to switch to the CUPS Snap (does not support 
PPDs/classic drivers) as default printing system in Ubuntu 23.04 
(Feature Freeze Feb 2023) we need to make pappl-retrofit "distro-ready", 
so it needs releases and versions.

Therefore I have released 1.0b1 now and ask everyone of you to test and 
also to start distro-packaging, for Debian, Red Hat, SUSE, ...

Here we go:

https://openprinting.github.io/pappl-retrofit-First-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
