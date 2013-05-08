Return-Path: <anton.kirilenko.rosa@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=RHW4jYlmSG186anVX/824GTkP2OJQ1MfSIWxf8fTJno=;
	b=Y9stE+lsMvAV5lGSG8h8K9fKeoHUmnb8yoSD9YYkl4xV4Gg/qtmwVUptH8Xk7g9kgO
	t7aRqzPOfvNY+T6TgvHQCJ9gIDXFQ1JPy2SM3RE9KLng8qXw2H3ZWZOKcqWismPFn7My
	ZQv0SqJVwz7EzlCrlJsGlbemHqhUJBzvNW+fLmq3o5GESzxOeOsLYTXjQro6DB7I7xMN
	+DKt+d15dKaU73qx/hB96pnMp6dVEI5FWgCBrPS9uHvemKjgDCPXGCiOQcKzpSPefVsB
	zWIK9NU9UEuqrNysUMZAKrxWoxLnZo3vUZGCHtDf+1y7pXZxuJPhZY0G7vF9CqfZnZQ7
	eLZw==
Message-ID: <518A70BA.30504@gmail.com>
Date: Wed, 08 May 2013 19:35:22 +0400
From: Anton Kirilenko <anton.kirilenko.rosa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Setting up a local copy of the OpenPrinting
	database
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Printing-architecture@lists.linux-foundation.org

Hi all,

Before my question, let me introduce myself a little - my name is Anton 
Kirilenko, I am currently a student of Moscow Institute of Physics and 
Technology and I have applied for a GSoC 2013 OpenPrinting project 
devoted to Open Printing web site improvements ("web application for 
printer and driver administration").

While selection of the GSoC projects is ongoing, I would like to get 
familiar with the web site code (and hope that my proposal will be 
accepted, but even if it is not - I think such an experience will be 
useful for me).

I've got the current site code from bazaar 
(http://bzr.linuxfoundation.org/openprinting/misc/printing-new-devel/), 
but for proper functionality I need a local copy of the database.

I can definitely see SQL scripts in the "maint/scripts" folder that can 
create the database itself (I guess), but I also need the data. It looks 
like scripts from that folder can be also used to populate the db using 
some data, but are there any instructions how to use them? Or maybe it 
is possible to just get a mysql dump of the database from somewhere and 
use it locally for my purposes?

(I am a newbie in OpenPrinting projects, so sorry if my questions are a 
little stupid - feel free to point me to any documentation if it exists 
but I've failed to find it).


--
Regards,
Anton.
