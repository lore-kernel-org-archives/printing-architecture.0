Return-Path: <postmaster@tnonline.net>
Message-ID: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
Date: Wed, 13 Apr 2022 22:24:45 +0200
MIME-Version: 1.0
Content-Language: en-GB
From: Forza <forza@tnonline.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] What windows driver to use with a CUPS IPP
	server?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hello,


I have a Ubuntu Server 21.10 with CUPS 2.3.3o installed. I've set up to 
the printers with either socket://printer:9100 or ipp://printer and 
enabled sharing on each queue. This exposes each CUPS queue as an IPP 
printer to all clients.

Now my problem is to determine what driver should be used in Windows.

A little background:

We have several Windows clients ranging from WinXP to Win10 that are 
printing on about a hundred HP printers (LaserJet and PageWide). 
Currently these machines print through a Windows Printer server, but it 
is getting more and more difficult to properly support older clients 
with the HP universal printer drivers. Also from security perspective we 
need to isolate older clients on separate quite restrictive networks and 
generally not enable SMB/Samba access.

There is a built-in Windows driver called "MS Publisher Imagesetter" 
that works pretty well, but it lacks most options such as selecting 
colour/greyscale or duplex output, as well as exposing proper printer 
margins and scaling to the applications.

The CUPS server is not on the same broadcast domain as the clients and 
DNS-SD and similar can not be used. This means that Windows clients 
cannot automatically detect and setup WSD or IPP queues from CUPS.

Someone on IRC said I should use the native HP drivers, but this seems 
wrong to me;
* First there are no updated drivers for older clients
* Isn't the idea of CUPS as a printer spooler to separate the client 
from the printer so that we can use classes etc to direct output without 
the clients knowing?

I'd be grateful for any suggestions and insights.


Forza


