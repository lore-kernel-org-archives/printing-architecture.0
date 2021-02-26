Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Fri, 26 Feb 2021 11:03:34 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <YDe6L+I0u65ncSXP@shaftnet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
 <YDe6L+I0u65ncSXP@shaftnet.org>
Message-ID: <821b4df56f518b8d2cc38ce846e8cc48@suse.de>
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


Hello

On 2021-02-25 15:54, Solomon Peachy wrote (excerpts):
> 
> And much like we've seen multiple distinct models with
> identical USB VID/PIDs, I've also seen distinct models
> that share identical IEEE1284 IDs. [2]
> And then there's the iManufacturer/iModel/iSerial strings
> that may or may not match what's in the 1284 data
> or what's silkscreened onto the printer itself..
> ...Like everything else involving printing, it's a complete mess.
...
> [2] They are in the same family, but the PDL is barely incompatible..

for some (older) examples that "similar looking model names"
do not mean "same driver works" see the part about
"It is crucial to have exact model names!" in
https://en.opensuse.org/SDB:Purchasing_a_Printer_and_Compatibility

I do not agree that everything involving printing is a complete mess
but I do fully agree that model->driver matching is a complete mess
from which follows "automated printer setup is a complete mess"
so my personal conclusion is:

Stay away from automated printer setup
(unless you like complete mess ;-)

I am looking forward to the future where proper
IPP (Everywhere) printer devices provide all what is needed
(including spooling and handling many clients simultaneously)
so neither printer drivers (and their setup)
nor spooling services (and their setup)
are needed any longer.
Only clients that properly talk IPP directly to
IPP printer devices that properly provide IPP.


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
