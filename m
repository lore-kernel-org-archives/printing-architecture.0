Message-ID: <4E4BF67B.8030607@gmail.com>
Date: Wed, 17 Aug 2011 19:12:27 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAN40gSvhq3mPVfDg3teNxQ9WcuBfKmBLyp5KbUXcm-CncN7T1A@mail.gmail.com>
	<4E4A9179.9040900@gmail.com>
	<CAGC3nLCoLcy5adH+ox8TNLCpzH+6FPKKoAwkFDMV=HGKE0a0OA@mail.gmail.com>
	<4E4AB226.7040507@gmail.com>
	<1313572289.2418.2.camel@localhost.localdomain>
In-Reply-To: <1313572289.2418.2.camel@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IN 10 MINUTES: OP US/Europe - Tuesday
 16 August 2011
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org

On 08/17/2011 11:11 AM, Tim Waugh wrote:
> On Tue, 2011-08-16 at 20:08 +0200, Till Kamppeter wrote:
>> Thank you. Using pyppd-compressed PPD archives the listing of the PPD
>> files take well less than a second on my computer and extracting the
>> mentioned PPD file takes the same order of magnitude of time as SQLite.
>>
>> For most CUPS users the pyppd solution is the best due to the speed.
>
> I'm not sure I really understand the purpose of pyppd.  Is it just to
> save disk space?  CUPS implements its own fast indexing of PPD files, so
> performance seems to be covered there.

For ready-made (static) PPDs, like the ones from the printer 
manufacturers for PostScript printers, it is only saving disk space. 
Putting them all into one archive compresses them much more than 
individually gzipping them.

Replacing PPD generators like /usr/lib/cups/driver/foomatic by 
pyppd-generated PPD archives is also a vast improvement in speed. It is 
much faster to grab a PPD out of a compressed archive then putting it 
together from the Foomatic XML data.

    Till
