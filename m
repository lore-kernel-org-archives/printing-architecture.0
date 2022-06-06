Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654518411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JzjFB4N6bqjwna8oISBOw1OSJsRMdScYu3lNL5fVqTw=;
 b=dIWcKvPsW6/UcIOS7IpYuRHSEpltktarF5/aMrA/ZdZ9Jn/buUpMtH6LCIcbwg4nGEY+cj
 5aWPEL2M8VjK1I34NRPoqkeZN9WHgazp0ikidkqemHjxgJ/uySU5sNF9lC3du6Cs+Wm9Lb
 NAzPJPtxFPV5KSdpClxRkrl4ftHvqYE=
Message-ID: <3722d77c-bac7-c6d3-8851-bed47902158e@redhat.com>
Date: Mon, 6 Jun 2022 14:26:47 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Major printer vendor 'free' support system
 aka how to get a fix for your printer's firmware as a regular user
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi all,

during my several years as Fedora CUPS maintainer and half a year as 
release manager on CUPS upstream I've encountered several firmware bugs, 
which made the device unusable as driverless device (even if model's 
manual claims it works with Airprint...).

Those bugs are the reason why users switches back to classic drivers, or 
they will migrate to printer application in the future, instead of using 
driverless.

So to prevent this behavior (which basically can change the printing 
stack's future from 'Let's switch to driverless' to 'Switch to printer 
application or buy a new printer') it would be great whether we knew a 
place where we can send those users - like link to support portal, where 
paying customers are preferred, and a best effort is applied on fixing 
firmware issues of regular users. Ideally some aggregated place, so a 
person doesn't have to create account on HP site, then on Canon etc...

Does something like this exist? If it doesn't, do you think it would be 
beneficial to have something like this under PWG github, so PWG members 
(iirc the slide from PWG f2f all major vendors are present) use it as an 
input, regular users would have a place to go with their firmware issues 
and we as CUPS upstream can have a place where to redirect people? Would 
it be possible for PWG members to maintain such issues on github? Or 
will we use the current recommendation to go https://support.canon.com, 
https://support.hp.com - the official business support portals?

It would be good if we had some strategy regarding this, because right 
now I recommend contacting printer's support regarding a firmware issue 
which does not make sense to work around in CUPS and I wouldn't want 
this to be 'an indirect message' for user to buy a new printer to get 
full driverless support, even if the vendor itself advertises it is a 
driverless printer....

WDYT?

Thank you in advance!


Zdenek

-- 
Zdenek Dohnal
Software Engineer
Red Hat, BRQ-TPBC

