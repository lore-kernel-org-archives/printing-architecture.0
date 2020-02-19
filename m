Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Zw9RF5DMvGvc5NdJSr5MJlChO6nt7uEGhCuSnvudk7Y=;
 b=YPqcJ5En+XEDfR0H/H0/HDgwiLNIIEWpRuMYDlp5BUTZmLsTFtMXD/ksf/CeyW0jr0
 +HBtk+FZlzRqDHFr1SyNjU5YWeLupKzWcPNdoy1XmEtUXZ5KAxnnPHinrwtzNGiIyMMm
 3q7ipKa0r/hOyEFD1CC2nNCWTjOjgSikUoe2SLbtMDD5KWG/AhgTWEYiXpdDjBtFeOBX
 xgDma0izcNVC3DhnWQ9/0lAUEsN3nmyjaiHJsCdT8DZxk97nxy8vYZDZW/otpgZVcyQI
 gEvobiSccMJOycNOgYJMIC81QoYFM81A0htWG6Pb8qjJkp8mjGmLs6kdVML0C0To3DQ9
 bmKQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <0e597998-38aa-2dc8-8688-dcf5db2a4511@gmail.com>
Date: Wed, 19 Feb 2020 13:46:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] ippusbxd 1.34 released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Thierry HUCAHRD <thierry@ordissimo.com>, David Valleau <valleau@chromium.org>, Didier 'OdyX' Raboud <odyx@debian.org>, Alexander Pevzner <pzz@apevzner.com>

Hi,

This release is mainly to improve the DNS-SD advertising to equal the 
one of the network mode of the device and also to advertise its AirScan 
scanning capabilities, but we also have some communication and code base 
improvements.

Thanks to everyone who has contributed!

Here we go:

https://openprinting.github.io/ippusbxd-1.34-released/

    Till
