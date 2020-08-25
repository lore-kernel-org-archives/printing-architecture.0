Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=u8IJ5WdgwjWu2JvJ/rdYUD7yuDywLZgneZbVjim5guw=;
 b=M/8FKwumxt6kYi/VJ7CqRrdpHDVWOsWBWE0UwmnJPlABTNnfV6JYhcmHSQZWNQfab8
 QT3Pq4O+bOl3N/9mA/6oJ2vebuVMjDIjuDPuB/GrLISbK6VPRKiV/F2MKTzpYq+3S9NE
 aOEAX6DqGMSiIRJ0Ml3SM84CpdWkoSIA1lLXKBOXqzsf9lYtR8wErkuvPaJw3z8qjjuy
 V5Gk485e5BjzbWCfa74CGLD0Z+vjO9AsdRHqArQNwanZRe6xFr8aSaE8RiihPZQi6ZbN
 KAGGmvxCbD6iRlJLD2DrItsuYiR9NeXUyDK+ciF1Q+Kw9t0F2EZ1vsttBF9Rx5ngsPoH
 z4vw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <05c8d2b3-b4be-1983-aaf8-6848dd516757@gmail.com>
Date: Tue, 25 Aug 2020 19:44:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] cups-filters 1.28.0 released!
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

Feature release (probably the last one before 2.0.0) which adds IPP Fax 
Out support, IPPS support, and a command line option to reveal satndard 
IPP URIs to the “driverless” utility, added log file size limitation and 
command line options to control what happens to generated queues on 
shutdown to cups-browsed, fixed several bugs when printing PostScript 
input files, several bugs and memory leaks in cups-browsed, crashes on 
the presence of certain fonts, and many more fixes.
ontributors

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.0

    Till
