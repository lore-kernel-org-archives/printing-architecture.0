Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=icBwuMe2JWBexIpGKQtRLt3eVQ6WY/ucfn6a8OW3A7U=;
	b=rqNYm3Z+xkKZLuGASU95R5trMxG/fkOSxIFwcfKlQTI0vhhhBupOAuNO9zWICbWuUh
	sFNxhy/VuYSsHUiYaAEejj526uN3zyymPZYJ2lwHqqecjiCGnZLCixtDIZjxMYfWvbIA
	0Z6DF5CAVEmz1zSLgf2d5k5AV8blxyo6ImKCc6k82pnF3rb+4YUYNHWX5QNlwXVvDwNp
	S1804ySPsoqshPzqeInb7prftCe9Nx+61yrTxn243VzRbkgGcquIDUVm+pqu+A4qETvI
	9UMPPYL18SJBsu/EjtnOH6JExXl6FH3FCn5Dnccj2heTrZiTiK6G/sj7TTfSDYkUGafd
	4oFw==
Message-ID: <51BE39B8.6060704@gmail.com>
Date: Mon, 17 Jun 2013 00:18:32 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com> <m3d2rl67uu.fsf@carbon.jhcloos.org>
In-Reply-To: <m3d2rl67uu.fsf@carbon.jhcloos.org>
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
To: James Cloos <cloos@jhcloos.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 06/16/2013 11:52 PM, James Cloos wrote:
> I need to read that through after dinner, but my initial question is,
> does it work with (cups’) lp(1) and lpr(1)?
> 
> -JimC
> 

Yes, it works with lp and lpr. Only problem is that you cannot display
the available options with the lpoptions command. If you simply send a
job without supplying options, the job gets printed with default
settings, if you supply standard IPP options with choices actually
available for your printer they will get obeyed.

So it works but is not very comfortable on the command line, but the
main use case for this are mobile devices, where you usually do not use
the command line and apps show printing dialogs and option screens with
options and choises polled from the printer.

   Till

