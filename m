Message-ID: <4C3B67C1.8080605@gmail.com>
Date: Mon, 12 Jul 2010 21:06:41 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <OFAE31947E.BEC78AC9-ON4925775B.0030D275-4925775B.00313F52@mta.ricoh.co.jp>
	<4C3A7EF4.5060109@fujixerox.co.jp>
In-Reply-To: <4C3A7EF4.5060109@fujixerox.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	Jul. 2010 meeting minutes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

On 07/12/2010 04:33 AM, Osamu MIHARA wrote:
> *** Reveiw reply from Till-san on June 3. ***
>
> o Plan for Completion of the Common Printing Dialog
>    ->  Till-san has told KDE team.
>    ->  Continue. (need fund...)
>

Unfortunately no new answers about funding the CPD.

> o PWG IPP Everywhere Project Charter (PPD Search function)
>    ->  Till-san proposed an idea to provide PPD search function as a CUPS
>       library
>    ->  If it is difficult to support in CUPS, it is possible to provide
>       as a separate library.
>    ->  In any case, standardize is preferable, possibly under LSB.
>       Need to ask opinions from each distro, lead by OpenPrinting???

LSB standardization only happens if all major distributions have adopted 
the new library.

> o Downloading Binary Printer Driver
>    ->  The first Binary Printer Driver is provided from EPSON and made
>       public by LF!!!
>    ->  Next step is to secure it by Digital Signature.
>

Digital signature support done on the server side, Epson's packages are 
signed, the public key is on the key servers, and the fingerprint is 
available on Epson's https://... site and linked from OpenPrinting. The 
only thing missing is the client site, feature request is up:

https://bugs.launchpad.net/ubuntu/+source/jockey/+bug/604698

>
> *** Action Items ***
> o Confirm CUPS problem: Toratani-san to explain and try persuade Mike
> again.
>

OK.

    Till
