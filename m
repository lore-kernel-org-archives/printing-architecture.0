Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371516431;
	bh=HyILCc2sYJnvQoFAic35lYsdQXlQqtbCc/dillRUJh8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=pApP7GmYhDkYEOYNzaK8hlyJ/oKRzpxgG/mW7MK/hJT8RNAxufbW1jTPQZhIfI+Eb
	9DXLcZGpWy3bdKFOrM1SduhnAyUx/NIojDdF8up++UQy2qkT4BnToAMxkrqZdjYjEM
	3VxluD1lsyds7RCVxvLYSOw7Ekyy+0upP0BL8AzCnlA==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <51BE39B8.6060704@gmail.com> (Till Kamppeter's message of "Mon,
	17 Jun 2013 00:18:32 +0200")
References: <51BA5B58.3080208@gmail.com> <m3d2rl67uu.fsf@carbon.jhcloos.org>
	<51BE39B8.6060704@gmail.com>
Date: Mon, 17 Jun 2013 20:42:29 -0400
Message-ID: <m3y5a82qr5.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
	printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:

TK> Only problem is that you cannot display the available options with
TK> the lpoptions command.

So, in other words, it doesn't support lp/lpr.  ☹

The cli remains vastly more useful than most GUI.  It is often the only
way to get work done.

And one must know the available options in order to use lp/lpr.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
