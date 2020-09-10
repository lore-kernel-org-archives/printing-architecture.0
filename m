Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=SDrHHvcIE7NCsXUqZ6QfkufiA3iAHSL2WrDJxnrIaag=;
 b=t8bbwj3ETj+rBkdSSaIpVPpuU0XugZeeTwCu/7LSPktXhCO64hyQAcxfVhap6YbocW
 O6Qb4gWg10FoVbwA6aCmo+ouhqHkvfVhv88kdqhatJGL9uh1NWmsxQqOJZcBS/s5XxOG
 usSBLX9BKLGPDwTZLhatE+0fy0po94XaA8C3W2/7A9uJiat4VCt2CU1amc53M2zrJM9h
 j/3TshOYbXeKxDuVFJYEPcxe2PDVJMC8+gONjIDhcsDYi6Gs/9J4F3eh1/5Phku0Y+5g
 Vo7Oe6JJgdbYpvhynFaUuWTjrlQu4ZGD6UWGi2c8+piAodAs+f6XFY2Et4kSR11806Eb
 oorw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <dff31737-9004-1663-402f-645e51b3ba9a@gmail.com>
Date: Thu, 10 Sep 2020 22:48:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.2 released!
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

Bug fix release to mainly fix cups-browsed not shutting down and the 
driverless utility being slow when listing available printers/faxes

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.2

    Till
