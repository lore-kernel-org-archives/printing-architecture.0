Date: Wed, 23 Apr 2008 20:08:48 +0200
From: Klaus Singvogel <kssingvo@suse.de>
Message-ID: <20080423180848.GA19456@suse.de>
References: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3819@eitc220.eitc.epson.com>
	<480F68C5.4070508@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <480F68C5.4070508@gmail.com>
Subject: Re: [Printing-architecture] LF Collaboration Summit Open Printing
	Minutes from Glen Petrie
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org

Till Kamppeter wrote:
[...]
> > --- Glen is worried of extensibility of the dialog for manufacture.
> >
> 
> Manufacturer extensions cannot be done by means of executable code, as 
> printer drivers run on the server and server and client can be different 
> architectures. Manufacturer extensions can only be done by PPD options, 
> the custom options of CUPS allow extended data formats.
[...]

I agree.

But want to point out that manufacturers should also keep in mind,
that there is no _our_ nor any _single_ printer on _the_ only USB
port.

Means: LSB team should remember manufacturers regularly to avoid using
a direct communication to "/dev/usb/lp*" (or similar) to a printer in
their drivers.

Thanks in advance.

Kindly regards,
	Klaus.
-- 
Klaus Singvogel  -  Maxfeldstr. 5  -  90409 Nuernberg  -  Germany
Phone: +49-911-74053-0
GnuPG-Key-ID: 1024R/5068792D  1994-06-27
SUSE LINUX Products GmbH,  GF: Markus Rex,  HRB 16746 (AG Nuernberg)
