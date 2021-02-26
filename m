Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Fri, 26 Feb 2021 10:17:25 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <9b91cd9c-2766-dcd8-89e2-f7fed0072319@gmail.com>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org> <9d87166cb02c637e30e7d165c8293275@suse.de>
 <9b91cd9c-2766-dcd8-89e2-f7fed0072319@gmail.com>
Message-ID: <226dd237ebac1b695eec291314ae22e3@suse.de>
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


Hello,

On 2021-02-24 18:23, Till Kamppeter wrote:
> On 24/02/2021 15:01, Johannes Meixner wrote:
>> 
>> I took me some longer time of experience what works
>> reasonably well in practice out there in real world
>> how to auto-match based on the manufacturer & model
>> strings which is the only data that is always there.
> 
> I go a similar way, matching by make and model
...
> What I do is taking the observed make and model,
> normalizing it to some form
...
> The names in the list of supported models
> I normalize the same way.

I did same i.e.
normalizing make and model what the system reports and
normalizing make and model in the PPDs in the same way,
then some "fuzzy match" to get a list of PPDs
that "somehow match" the reported make and model
with some "special sorting" to put the "somehow best match"
on top of that list and
finally show that list to the user so he can select one.

In automated setup case the topmost entry of that list
is used.

I vaguely described that in
https://en.opensuse.org/YaST_Printer#Driver

By the way 1:
For my general point of view about
"Automated Printer Configuration" see
https://en.opensuse.org/YaST_Printer#Automated_Printer_Configuration
versus the subsequent section
"Manual Printer Configuration with the YaST Printer Module"
therein.

By the way 2:
In practice the current "YaST Printer Module" is dead code, cf.
https://bugzilla.suse.com/show_bug.cgi?id=1175341#c1
I wished those who make the decisions would finally let it RIP.


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
