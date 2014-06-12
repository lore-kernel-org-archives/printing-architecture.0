Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=pR6ZtbowYGtx86a+KZJ1BCxHOtskRy2ZbIODuLJxHZw=;
	b=TQbMx51LhfUp3vpfl2+JnuZo7lJCD+sHeCX65JUh8am4mTGHX39IQCKvIugVkgdkFy
	NI0nXeSbpkMynjVmljYU9i5czQawXxOpyDK2H2USxnGG7IAY7yAs1XxxOvwB4s30G9g0
	tpQ7kfG1ET2KkYjWc6zC1KZYFiRN/XQkkbGXeBKjngtH5FiW6POpATl+e/FE0a3Rzkux
	Zb2YYryNWyn25aSqeIFVYIT4r89MazIkRAzAtSITUcwU7bd53xmXDOTWE51C+0mWBFMp
	UZPEBSfUZpNiClR6x4B9/0gYYIfyYyRnhkCDga6KYSSwD/voyL7f0f9kiDqH5qUvoUb3
	VvhA==
Message-ID: <53997D3F.2060803@gmail.com>
Date: Thu, 12 Jun 2014 12:13:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] "no-color-management" not a good idea for a
 name of a boolean CUPS option
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Joseph Simon <jsimon383@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have encountered a problem with the "no-color-management" and
cupsGetOption() not be able to recognize that the user has supplied "-o
no-color-management" on the command line.

If you have an arbitrary boolean option in CUPS filters or backends,
like "xxx" the variants

   -o xxx
   -o xxx=1
   -o xxx=on
   -o xxx=yes
   -o xxx=true

are supposed to let it be interpreted as set and

   -o noxxx
   -o xxx=0
   -o xxx=off
   -o xxx=no
   -o xxx=false

let it be interpreted as not set. To support the "-o noxxx" case
cupsGetOption() seems to split a "no" in the beginning of the name off
if there is no '='. Therefore "no-color-management=" works but
"no-color-management" not. The latter is probably interpreted as
"-color-management=false".

Mike, am I right with this?

So I suggest something like "calibration-mode", "cm-calibration-mode",
"cm-calibration", or similar.

WDYT?

   Till
