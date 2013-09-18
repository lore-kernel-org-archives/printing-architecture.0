Return-Path: <chanlists@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=ljCDoA8J0VVzj8iefxFcu7o/WtTGtjwPHrphL6edmUw=;
	b=XPpdc1XQGueubTzkCJQmzsmvdq0GDWxn+Em7YqMTqVpJAG52qRTraX0z6droHeiKOV
	Qnt/0OlmzucwhD2XwzAuRMkHGGgj3tOvPg/2vOPywaVdO3sZXs6F4ulUcfLSZYHckckd
	jAE2zMgur4s9uy7PtKWqIJu4LKQZ23VXnM7usQceZcpx9c+rS9mG3WYKiko1a/52lC8q
	0rN207JSiw87jkoo6CWnymUfoWjY3ZmghXAN/BmqmNjD0orlbAZZz2yq/68tGcObcOer
	gfVYKRwkbRK/3GwT/Hk+SGTFvPZvkgFnws+JD+TG5FiJgbXMH1+IgeEvGrdnxMYjEiz1
	4GVw==
Message-ID: <523A2166.8080004@googlemail.com>
Date: Wed, 18 Sep 2013 23:55:50 +0200
From: Christian <chanlists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] windows, samba, cups, color and BW
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

Dear list,

I have CUPS 1.5.3 running under Debian wheezy. I use Samba, cupsaddsmb
and the Microsoft windows postscript printer driver for windows (7)
clients. I have a printer (RICOH Aficio MP C3502, could post PPD) which
is a rather big network multifunction device. From linux, everything
works fine. For windows, printing via samba, I have set up a special raw
queue in CUPS using appropriate Filter definitions in the PPD, and from
the logs, I can confirm that no filtering of the postscript is being
done on the linux side. From windows clients, using e. g. MSWORD, all of
the printer options (staple, B+W vs. color, ...) are available and work
as far as I can tell.

The only exception is printing from Adobe Reader under Windows. Most of
the options are honored, except the "Color vs. B + W" option. Under the
"Paper / Quality" tab in the printer options, there is a set of two
radio buttons with little pictures next to them for Color vs. Black +
White. Those do not work for me.

I can only get it to print B + W from Adobe reader under windows if,
rather than using those buttons, I go into "Advanced..." and then chose
"Color Mode: Black and White" in the list of printer options. I know
this, but it could be confusing to our users...

So I'd like to understand the background better, and why only Adobe
Reader does this, and whether this behavior can be fixed, e. g. by PPD
hacking or other tricks...

Sorry to ask here, but the "forums" link is dysfunctional. Let me know
if I can help. Best,

Christian
