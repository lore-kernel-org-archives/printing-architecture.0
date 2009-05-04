Message-ID: <49FF1792.2080507@gmail.com>
Date: Mon, 04 May 2009 18:28:02 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <49F758CE.5060808@gmail.com> <49F98F67.2040401@gmail.com>
	<DD6046532A44F047ACD45225E9D737B14A3FB6653D@GVW1155EXB.americas.hpqcorp.net>
In-Reply-To: <DD6046532A44F047ACD45225E9D737B14A3FB6653D@GVW1155EXB.americas.hpqcorp.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Fixes and changes on the "cups" output
 device of Ghostscript -Please Test!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Suffield, David" <david.suffield@hp.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gs-devel <gs-devel@ghostscript.com>, Michael Sweet <mike@easysw.com>

Suffield, David wrote:
> Sorry I have not been able to test your patch yet, but *cupsEvenDuplex worked for me with gpl ghostscript 8.63 when testing hplip 3.9.4.

Thank you for the hint. I have removed the *cupsEvenDuplex handling from 
the CUPS Raster output device again as it is already done by pstops and 
pdftopdf.

I have announced the new patch in an earlier e-mail.

    Till
