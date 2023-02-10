Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DA24400D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 094EC400BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ArDRqHadDi/rCCC6YWGpP2n6k/F57xLRXiwruPS3Ek4=;
 b=Yp+g2CTh8qkjJj5krbWg5wY4Rzqs2nVWQ8wZooJbcZAB6XQHiLHlKWoIC9twdBlO1L
 SmUTe5IcsYFHFwy6MjWCV0IYkgVoJ3Jedz1VtWjpBDcciXTcgpcsTsCAVfZ68QupXAPt
 IUz4SVtk5apzR4lfhLsJhmrirmScDtwhRALb7XNcv0fxtBQUL0j8QTn4wmtsl1KJ2Z49
 1UzmPmQYOlMD5aWbsm7+QN6hv1AEFMWqMKFKiRo1a6V2SKtl0+Ik4yV64l4mUzgsM1/5
 T+Xy2Fs00+Oze0lfAhvl3onH8aIxYppnxdWsVLLlQKyOjaMLi4c2CjcthL2BfTgXBhY3
 IqAg==
Message-ID: <bcdfc0d7-c368-5b54-3731-053ae1603967@gmail.com>
Date: Sat, 11 Feb 2023 00:54:34 +0100
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

in the course of creating the first Debian package of pappl-retrofit 
(for Ubuntu) I have done some fixes and improvements on the 1.0b1 
version and released them in version 1.0b2.

Besides many little fixes in the source code documentation I have added 
support for the Legacy Printer Application being run permanently as a 
system daemon. So distros can opt for this mode via a simple command 
line option to the ./configure call.

This way a user who wants to continue using a certain CUPS printer 
driver, which is installed as classic driver, only needs to install 
their distro's Legacy Printer Application package, and create a printer 
in the Legacy Printer Application's web interface.

Here we go:

https://openprinting.github.io/pappl-retrofit-Second-Beta-Release/

There are also GitHub discussions set up for each release now.

    Till
