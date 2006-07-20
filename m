Return-Path: <wendy.phillips@sun.com>
Message-ID: <44BFD8AA.8060502@sun.com>
Date: Thu, 20 Jul 2006 12:25:30 -0700
From: Wendy Phillips <wendy.phillips@sun.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

Apparently, this didn't go out to the alias; could be that I fumbled
it on the keyboard. So here tis again ...

I have purposely not included the follow-on discussions about fhs standard;
this is a summary of the meeting as it occurred.

-Wendy

1. Installation path for ppd files

         /usr/share/ppd/<supplier>/<manufacturer>/

2. PPD file naming convention

         <MFGString>-<MDLString>-<driver>-<language>.ppd

3. Installation path for print drivers

         /usr/lib/printdrivers/<supplier>

         The contents of this directory are entirely determine
         by the supplier. The path to a driver is found by using
         an absolute path in the ppd file.

4. It was agreed that install scripts be written in Bourne Shell
without any extensions.

5.  We decided to eliminate /usr/lib/printdrivers/bin

