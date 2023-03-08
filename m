Return-Path: <christoph.beyer@desy.de>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEB1540277
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0523A40111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp-o-3.desy.de EC22F60829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=desy.de; s=default;
 t=1678262581; bh=mhpSaqJjVl6P24MWjMyNlhpw1f5XT1gTcTTPQ3p7FyA=;
 h=Date:From:To:Subject:From;
 b=hDU0wreg3JDuNiSKuW4zUj0+nf25GQJ3mA9JQRjNWGiUGVoC4LrUhyl5WRKWp6xjE
 8uNVsxJjw7YFes2bDSn832QIDpT4NNZKFiUnjhOqd/emYMOKbIedxLZLdev31wRm3J
 x6TbQZAS3Z2TpV6NoXEyh1TtMDV3bbWy9bRGhbb4=
Date: Wed, 8 Mar 2023 09:03:00 +0100 (CET)
From: "Beyer, Christoph" <christoph.beyer@desy.de>
Message-ID: <1694880310.2965478.1678262580752.JavaMail.zimbra@desy.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] driverless clients after cups upgrade and
 general qyestion about larger environment concepts
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


Hi,

I am new on this list and would like to bother you with a (maybe stupid question) right away :) 

I do run a 'large' environment with roughly 1.000 queues pointing to 500 printers, the current setup involves a lpd server as a backend talking to the printers and different cups servers for different departments offering the relevant share of the queues to the LINUX clients. 

I use the factory provided PPD files for the printers and lpadmin to install the printers on the cups server (with an lpd backend pointing to the lpd server) then poll-server <cups-server-of-this-department> directive in cups-browsed.conf on the LINUX client.

After a recent upgrade to CUPS 2.4.1 on the cups servers (coming from ubuntu 18.04- whatever cups version that was)  support for color printing stopped and on the clients desktops I recognize that the printers are visible but tagged as 'driverless' which is probably part of my problem (?)

Maybe the whole concept is also a bit ignorant towards the ideas of cups but for quite a while I did not really see the concept of a client-server model for larger entreprise installations that can not rely on browsing etc.  ? 

Any insight would be much appreciated ! 

Best
christoph
