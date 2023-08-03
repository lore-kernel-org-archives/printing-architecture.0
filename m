Return-Path: <smf.forum1@ntlworld.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCD57612C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CE2761321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
 s=meg.feb2017; t=1691055007;
 bh=hLYZOoiSkqTNFDIOpOt1OoKPp+HWvFGiIV7fh/zsnes=;
 h=Subject:From:To:Date;
 b=tHBp3x0YynBxqvSLhZFd0h+sOfzS5a2/XvCnGOoBsgaT03wvT9BPt/5u4M7T8ImXZ
 RqW2BLlqsCprx6BkXFxFE7vWSEzse8vL8c75ZgDFMZt6IoxRyqhIB1eUJDctHh8pwx
 cK8ZAdu1tanktkCBnBLL8nrRi9kW+/51Wt14z0m/ME4pIwn9Zs6LMZ/nGCXLgF6Dny
 ljF119dRNZSpGe0CE+nKUOETYAR7yuhGykrPMsYZqWfz+B0A8si7bQqkVc9jJd51m6
 kg+FD6BCMaYvl2gFXkk/o3creLKoXiEWml5t4RwCWxPzzauEdNnviXCZXw+Hb+r5qk
 2t7UKF9SMQawg==
Message-ID: <efc40e7ef936568188852c896a15be0727eac05d.camel@ntlworld.com>
From: SMF Forum 1 <smf.forum1@ntlworld.com>
Date: Thu, 03 Aug 2023 10:29:47 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Printing-architecture] CUPS Printers not being recognised
	correctly on client machines
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

Version cups 2.4.6. LFS/BLFS Version 11.3 Linux Kernel 5.15.120

I have a firewall system (moira) that hosts a cups server.
The cups server is configured with 3 printers.
1 HP5550 on a Windows 10 machine on my internal network.
2 HP7760 a USB printer on the firewall machine (moira).
3 HP6020e a wifi printer accessed via my internal network.
There are two problems:

The three printers print fine from applications run on the firewall
(moira).
On client machines the printers are shown to exist but the names are
wrong.
Also they report as "Getting Printer Information Failed" when
attempting to print on them.

All the machines report a phantom printer which appears to be a direct
connection to the wifi printer:
HP_ENVY_6000_Series_726F10
All machine report it as "Off line".

In addition to the Cups software the firewall machine has hplip-3.23.5
installed for printer and scanner access.

So my questions are how do I get the client systems to use the correct
access to the print services on moira
and how do I get rid of the phantom printer.

Thanks
