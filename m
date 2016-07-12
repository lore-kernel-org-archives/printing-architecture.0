Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=sRrVq07unlTwWWULfJDnBDIZtT/HhFSZ7eWTLUnoofo=;
	b=abtOemYYAyCol0KZdNoTX2XeUP6/dSY84Do/yx6vRl0q/sHsd+9x/4GgsJHcLL5hYc
	colWOkKJqeeAY1auxLcQCH55VtXj4YVFQtRy8nVl6+v5BW3qDXtTl3H5BmuMrVUtKk+0
	grZC3XoBsBP0A21T8yDlqSe3GiZxKQtatosRWLTMmPm653FTM/9CxNL/xUV5PlXpP35L
	Pm0G3BUW2Zzje7IvGpjWt5rvOAHQ1zwDgwgpumBb7T7YDJlJHziOw3GiBNjwbf587KWN
	siXpt8nh+C0KLTCC+fOCqxsOUSJ+yHWQG5QcSivgZvTTxfVAxb188IyhwwtmkscQtEPJ
	Bz2Q==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <57851B1A.8010700@gmail.com>
Date: Tue, 12 Jul 2016 13:30:18 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Hosting of OpenPrinting
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
Cc: Matthew Morikawa <Matthew.Morikawa@dda.kyocera.com>

Hi,

for the time being until I will (hopefully) come around with the call 
next week, I will give you all something to think about and a call for help.

It is about the web hosting of OpenPrinting. You now that we are hosted 
at the Linux Foundation currently. And with the Linux Foundation there 
are problems, in the form that I do not get any help by the system 
admins any more. The front page (www.openprinting.org) is messed up and 
I cannot change it any more. Therefore I asked the help desk already 
several times and never got an answer.

So for me it seems that the best is to move.

For the BZR repositories I am thinking about converting to GIT and use 
GIThub. CUPS and many other projects are already there. I would also 
handle the bug tracking there.

What does not work on GIThub (or does it already?) is to have a general 
LAMP (Linux, Apache, MySQL, PHP/Python/Perl) server to run the database 
and also the documentation, mailing lists, announcements, ... I think I 
would drop the forums then and go back to mailing lists.

Perhaps the PWG could help me?

A problem would be the domain www.openprinting.org, to get it moved from 
the Linux Foundation to the new place. Or should we perhaps rename the 
project as a last mean.

I appreciate any kind of help.

    Till


