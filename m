Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=V9YXQ0Nbsl1WXJjndwAlu52FRrIgU16JKgWC39HIUjc=;
	b=DmDicQ/Jp957/qr7hilFjvgJkEc1fR2h8ncWF0NFwm3buoU7uOz2wg8GtyQtdLQPa7
	Z51U8AbjpBqIDdjvwUTzSXclDf9LrERJw43iPYLyUZ6rWCRJx77hiQegvlot1Eu7ePEz
	TJZp61wIMJfRom3ZuhPKzKy3iNAZckYHtDVXoz4sApeB98jD8+TAQ8etU36r9TgapiK/
	GWuzARzytQYS/amXaJR4Bh2VI/6HMMCu00Rbdiq0Vr0jCT29SXkfs4z/3uOjlaOy+4LU
	Q18a0CTzlm9uI8u6ZxVFnq+S9J4B8RKKC8MSqIVx1wAM/0ZgAr2G7IhglelO45ChPuHQ
	Qt/w==
Message-ID: <51B9BFDD.50305@gmail.com>
Date: Thu, 13 Jun 2013 14:49:33 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
	<51967371.5080508@gmail.com>
	<D36BAB03-9A91-42E9-A994-DC0D3C6C254D@apple.com>
	<51B99AD7.1090005@gmail.com>
	<2E6F3E0A-2BC0-42E6-83E9-FFB185353242@apple.com>
In-Reply-To: <2E6F3E0A-2BC0-42E6-83E9-FFB185353242@apple.com>
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

On 06/13/2013 01:39 PM, Michael Sweet wrote:
> 
> The issue here is that the other end will need to support the file formats and options you are passing.  If you supply a local PPD then cupsd will convert into a format that the other end can handle.
> 

Here one could easily restrict the support to printers with standard
PDLs so that a handful of filters is enough. Then one sends always PDF
and tell by IPP attributes which output format and which option
settings. So what one needs is the right IPP attributes to tell CUPS the
output format (instead of needing it hard-coded in a PPD).

Would be great if CUPS is capable of this, but if not, I have an idea.
One would need a pdftoany filter which calls first pdftopdf (if pdftopdf
is installed, we could leave it out on mobile) and then one of
pdftoraster+rastertopwg, pdftops, nothing, gstopxl,
pdftoraster+rastertopcl, depending on what output format was requested
by an option (IPP attribute). Problem is how to make the queue using
this filter without having a PPD with hard-coded paper sizes (perhaps
System V interface script?).

   Till

