Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=OsfrDt0alsfVs04h/a7Lr0ji4v7wDvhHY/xypKvcU1c=;
	b=vc1ne3tQt/lYHb4WMW8sWwU7xifL82s+o08tvSNa9wOup4ZfRHRuHR1rjwiRFiad1x
	/jII7lM6BXCDKL8O7eKGAzlSdKH4KkuABqG5SPdnKgbr8bkuc8Znx4c7+W98MYTjVt8t
	FZwtWTSmo6d+M5YfwQiozl1t8iC4V+0Ormypw62nntDmSy8D8qCrmT9X9lO8H09xpUxA
	3D4vjl3Dle+xgyRogoB19eB8h4Y1bHX8BawXHXzf4+ODygUm5AT0xFo6V9xFyrelX3E0
	/aiemkf01Pp/zfCFpcF33DSUHQI2QTndKZGiPc/Hp6+h9Z31FqIKTxw/TGrUSL3XEjyU
	tGBQ==
Message-ID: <52001C3B.8090602@gmail.com>
Date: Mon, 05 Aug 2013 23:42:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-browsed - What to do if client.conf
	redirects to remote CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@apple.com>

Hi,

cups-browsed works well browsing printer broadcasts from remote servers 
and auto-adding local raw queues pointing to these printers as long as 
CUPS clients are not redirected to remote servers via /etc/cups/client.conf.

If there is such a re-direction, cups-browsed does not make much sense, 
as it cannot manipulate CUPS queues on a remote server. It can even 
misbehave, as

https://bugs.launchpad.net/ubuntu/+source/cups-filters/+bug/1207203

shows.

What I would like to do is to make cups-browsed always connecting to the 
local CUPS daemon, ignoring any client.conf setting. Is this easily 
possible?

Or should I better simply on the first failed attempt to add or remove a 
print queue make cups-browsed shutting down and enter a stand-by loop 
until the cupsServer() output changes?

    Till
