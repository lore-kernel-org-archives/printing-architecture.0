Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=znGVwKRpAt8uGsrIW0e3iYO+NFxnY9LCQ1sdraog6sU=;
 b=GZ9YS9Phomm3Mt1lIiZcf9R+qhfqCJ2Ht4KoLIVgDQpAy9Nimzy3qG7Q+VIZ0Ny/wy
 VWEe8DTZlaVI+VG8Ir21iJQc/IMRkd78MsjcVpGL+y+2OSJbVJUylJWOa+bXc+PsOdMU
 41v4RmS3o5tcwofwRdR66kEMZ03rut/HIj6q7nU+fjQMH7qezv0XRd6FO9b5UETSoHHE
 h9m9flBllUZSt8HEe6jjy9iDjC5KGBqeBb6iuUFk1wigEzNIinYhUe6e6rDmNpkXVMlf
 HCvwG/n0MvWaV9uU5N6DBduNfa4nM8SW+AUyvswngUcQNLpwdtS9vqLzaD9+qQUhGi1W
 A9VA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e23a65eb-47b7-5e4b-06e9-1597b7f02595@gmail.com>
Date: Wed, 2 Dec 2020 17:55:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.6 released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

Bug fix release, fixing lots of memory leaks in cups-browsed, fixed 
cups-browsed hanging several seconds when there are local print queue 
with invalid DNS-SD-based URIs, several fixes on the PPD generator for 
IPP printers, taken from OpenPrinting's fork of CUPS, and fixing bugs on 
foomatic-rip

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.6

    Till
