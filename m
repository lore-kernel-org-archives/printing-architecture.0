Return-Path: <cliff.brake@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=2EVtNcalVlGjm8iXz6Fl1FYTB2qt5e8JZFr9xabgAPg=;
	b=BNdcCh73vgEiWlJWUBbRK+hoEaMyyOPBhfvEfbE5GnkOk/StSpjC2DZm1r0PDsQ7C1
	CiLJUR+8bgaWoQgIOPxEvB8Lr3KbkefvoqVerCxrS5pf1Zq5UpMXTk5/LrK8VrZwuVn0
	mutFvhi644mNfQ3jsBA2re2qvw20QPN3FuEF0Q20CKjulqmLozEIybXE5AFhbchCbMg9
	tl93zp9wT3HyTRlYMo2agdNCOzUxNUGnYj5h4hwVNcWAufPQbFHg2HJ0aGyR72YfVy3B
	STqxnofrDSmBSvUjmzlI0juGp1Q9QclXaRfwAqemKHhpDVlZFLeOZof2vVGULJZbVKkF
	WkaQ==
MIME-Version: 1.0
Sender: cliff.brake@gmail.com
Date: Wed, 8 Apr 2015 17:46:19 -0400
Message-ID: <CAOd_LFx_Vz3ZKp6bauA6vFRV_gLrXAJX16NFw4tPiMn-eAV0XA@mail.gmail.com>
From: Cliff Brake <cbrake@bec-systems.com>
Content-Type: text/plain; charset=UTF-8
Subject: [Printing-architecture] printing architecture for embedded Linux
	system
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

Hi,

We've been using the hpijs printer driver in an embedded system for a
number of years very successfully.

http://bec-systems.com/site/218/printing-from-embedded-systems

However, it seems that newer printers are not supported by the hpijs driver:

https://answers.launchpad.net/hplip/+question/264258

Does anyone have suggestions for a printing architecture going forward
-- we'd prefer not to ship cups+ghostscript in our system due to size.

Or, are there printer vendors who still use ijs drivers?

Thanks,
Cliff
