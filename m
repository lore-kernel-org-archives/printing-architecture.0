Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=PxPdu5vcwhDnMr9FNw4W6pT5LZEPgJN8+Q+N/hReQgE=;
	b=BFJyjQgbNsZYYwVFXvmNUoKe33n7+SrkRbXjPFG0aoEV/8oIuUtB1BJPF9fYc3kjqb
	oRrj9+ln6nCiLivo3VAL+C9RBKsmDr4N7G5XoD4qNyRH/O8GZFHNsWRi3tH09m3NFcIz
	otjEaBOV93DOxvg+Q9wmTK/egdK87ZyDRY+VkkJnAZni0yfqtqHD4syGsGrqZM03tIq8
	DocnzVNupqCnVZY8RC6n/yzpZlGjuokD0R65euloJYrokNR8LI+vh+5Z0Ju0cmx6UUez
	+GtMyCUW8vg0YTjryM5+Kmgw33vZZhPD1fKFclE/61zpKy8POOuq948CictNLeYlCXyL
	ay0A==
References: <57279FA4.4090202@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <5727CB33.4080501@gmail.com>
Date: Mon, 2 May 2016 18:48:35 -0300
MIME-Version: 1.0
In-Reply-To: <57279FA4.4090202@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] README: spelling and grammatical error
	corrections
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Pranjal <bhor.pranjal@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Thank you very much for the patch. I have applied it as BZR rev. 7459 now.

    Till

On 05/02/2016 03:42 PM, Pranjal wrote:
> === modified file 'README'
> --- README    2016-03-31 18:02:45 +0000
> +++ README    2016-05-02 18:36:21 +0000
> @@ -336,8 +336,8 @@
>       utils/cups-browsed.service and utils/cups-browsed-upstart.conf.
>
>       In the examples we start cups-browsed after starting
> -    avahi-daemon. This is not required. if cups-browsed starts first,
> -    the Bonjour/DNS-SD browsing kicks in as soon as avahi-daemon comes
> +    avahi-daemon. This is not required. If cups-browsed starts first,
> +    then Bonjour/DNS-SD browsing kicks in as soon as avahi-daemon comes
>       up. cups-browsed is also robust against any shutdown and restart
>       of avahi-daemon.
>
> @@ -389,7 +389,7 @@
>       duplicates and change the URI of the disappeared queue to the URI
>       of the first duplicate, mark the queue as to-be-created with
>       timeout now-1 sec (to update the URI of the CUPS queue) and mark
> -    the duplicate ddisappeared with timeout now-1 sec. In terms of
> +    the duplicate disappeared with timeout now-1 sec. In terms of
>       high availability we replace the old load balancing of the
>       implicit class by a failover solution. Alternatively (not
>       implemented), if queue with same name but from other server
> @@ -639,7 +639,7 @@
>   Because PDF cannot specify device options in a PDF file, you have to
> define
>   all the device options as JCLs.
>
> -When a printer does not support PS nor PDF, you can use Ghostscript (GS).
> +When a printer does not support PS or PDF, you can use Ghostscript (GS).
>   In this case, you can specify device options like a PS printer.
>   If you want to use the same printer and same PPD file for both PDF and PS
>   printing, when you print a PS file, you can specify that GS handles it,
> @@ -1014,7 +1014,7 @@
>   - Generic-PDF_Printer-PDF.ppd
>   - HP-Color_LaserJet_CM3530_MFP-PDF.ppd
>
> -When a printer does not support PS nor PDF, you can use Ghostscript (GS).
> +When a printer does not support PS or PDF, you can use Ghostscript (GS).
>   In this case, you can specify device options like a PS printer.
>   If you want to use the same printer and same PPD file for both PDF and PS
>   printing, when you print a PS file, you can specify that GS handles it,
> @@ -1310,7 +1310,7 @@
>
>   7.1 Temporally files location
>
> -"pdftoijs" creates temporally files if needed. Temporary files are created
> +"pdftoijs" creates temporary files if needed. Temporary files are created
>   in the location specified by TMPDIR environment variable. Default
> location
>   is "/tmp".
>

