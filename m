Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=69GPAIUt3vMCHZUjJ2Hxl42x8MYQfJfHr3B/lLRQLV4=;
	b=rQ7cUR7L5QJj30BPPIIeUe89t+kFB4DkqzCkK6ekLanhVoE9DvOyhGGfp3DboJW9VF
	2Ov3orlIeyrQ/2DWWovXO4N8aB0KylD3YZSgODBmDaziupq0+KhHk76XmG51FCuq9WRJ
	ucaoDnmRuC5TFBH0dy9gqCQoqBdHyZshCP3abOe+E4aKsK/Bc4CnqL2Ptt0fQe3udKX6
	Lv2I3gl3bS+kyQwcOkP+ChKKTk17A7htv8UToma/DmrGx0v3QSdoeXSTiQrsoYK0TEn9
	hKiTysRM7MDv7KfEH62D0vzscKkZHQIEmtvBnwX5B6+iC37vsVrZ3pH5+WTl6JfSVdnM
	Tekg==
Message-ID: <51BA5E44.4060805@gmail.com>
Date: Fri, 14 Jun 2013 02:05:24 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com>
In-Reply-To: <51BA5B58.3080208@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Michael Sweet <msweet@apple.com>

One additional remark:

This concept does not introduce a D-Bus dependency to cups-filters.
D-Bus is not needed at all for it.

   Till

On 06/14/2013 01:52 AM, Till Kamppeter wrote:
> Hi,
> 
> after some discussion in the "Some suggestions for the DNS-SD (Bonjour)
> printer support in the dialog" thread I have now found a concept for
> printing on Bonjour-discovered IPP network printers.

[...]

