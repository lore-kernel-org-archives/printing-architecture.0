Message-ID: <49EB9A60.1080900@gmail.com>
Date: Sun, 19 Apr 2009 23:40:48 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] ANNOUNCE: Foomatic 4.0.1 released!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>

Foomatic 4.0.1 is released and now available for download [1].

This is a bug fix release which fixes several bugs leading foomatic-rip 
to crash. This happened especially with PJL commands and if the incoming 
job comes from a Windows client.

In addition, foomatic-rip builds now on Mac OS X and this enables the 
new Foomatic generation also for this operating system.

My special thanks go to Lars Uebernickel who made the Mac OS X build 
working. He also fixed some bugs in the handling of the renderer command 
line.

In foomatic-db-engine some small bugs in PPD file generation, especially 
for CUPS custom options were fixed and the PPDs enable the integration 
of foomatic-rip in the PDF printing workflow of Mac OS X.

Have a lot of fun with the new Foomatic release!

    Till


[1]http://www.linuxfoundation.org/en/OpenPrinting/Database/Foomatic




