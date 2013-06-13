Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=LJexecIin9Cel6ppBYhZ5VF48appH1EqW52N/0rny50=;
	b=CjQm+HQirO6xlJKqg8m+vW5VCi1dO9kVp530Icdu/ldrpvxDoOz0LgLMwF1jeA/Lq/
	sat1fyF1uc2L3sxYpOC/wEvZ7QotSh6FgCK6zALK3MknlmFCO4/G/YUYXrKoyw6A8TF8
	wsDPbg8Q0WSbf61ugBTOclnSD/Lz3H2cIsiSn5wLU9omdx3kSiI7C7KuC6i26iLCWjfx
	BbUN7pf76YvHMcvwHKvbuDREHI5D4TaQmwdU8zUZnlGtYrzJjXzRfE6V+uHjeu98jURr
	zhOXIE+Y6upfz+FV9RfBJ4sPIdUP9k5d+z4kDWCW8nBSoDegQ2teMNIp0aBsX8q80OmT
	qOHQ==
Message-ID: <51B99888.2040406@gmail.com>
Date: Thu, 13 Jun 2013 12:01:44 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
In-Reply-To: <FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 05/17/2013 07:32 AM, Michael Sweet wrote:
> You need some sort of local spooling, but it need not be cupsd doing the spooling. Consider writing a small DBUS-based spooler that provides UI for monitoring and canceling the job.  This spooler could also handle the basic conversion from PDF to PWG Raster and could despool to cupsd or direct to a printer.

This would mean to resemble large parts of CUPS (spooling, filtering,
but not networking) for a per-user/per-app printing system, needing a
lot of maintenance/development man power, and extra resources on mobile
devices.

   Till


