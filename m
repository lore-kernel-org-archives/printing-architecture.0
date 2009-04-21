Message-ID: <49EDFEFA.3050504@gmail.com>
Date: Tue, 21 Apr 2009 19:14:34 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <513682.96359.qm@web23108.mail.ird.yahoo.com>
In-Reply-To: <513682.96359.qm@web23108.mail.ird.yahoo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-summit] Another Common Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Hin-Tak Leung <hintak_leung@yahoo.co.uk>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Johannes Meixner <jsmeix@suse.de>, DavidSuffield <david.suffield@hp.com>, "printing-summit@lists.linux-foundation.org" <printing-summit@lists.linux-foundation.org>

Hin-Tak Leung wrote:
> --- On Tue, 21/4/09, Suffield, David <david.suffield@hp.com> wrote:
> 
>> Hi Johannes,
>>
>>> From: Johannes Meixner [mailto:jsmeix@suse.de] 
>>> Hello David,
>>>
>>> On Apr 17 17:55 Suffield, David wrote (shortened):
>>>>> As far as I know you cannot derect a scanner
>> or memory card unit
>>>>> in a HP all-in-one device on the operating
>> system level, see
>>>>> https://bugzilla.novell.com/show_bug.cgi?id=469721#c9
>>> [...]
>>>> All newer HP all-in-ones with photocard readers
>> enumerate
>>>> as Mass Storage device. Some of the first
>> photocard readers
>>>> required 1284.4/MLC, but not anymore.
>>> How does the scanner unit enumerate nowadays?
>> There is no change with scanner USB enumeration. As far as
>> I know there is no well defined "scanner" interface like the
>> "mass storage" interface.  
> 
> Sorry to catch this thread a little late and missed the earlier exchange... just want to say that the USB specification has an imaging device class (I don't remember the precise name), besides printer and mass storage. The imaging device class is where many usb-capable digital camera/camcorder appears as. I think the class is called ptp but can't remember the name...
> 
> granted most scanners uses twain under windows and sane on linux, (and some sort of twain-sane bridge in wine), but often proprietary - somebody correct me. presumably libsane has a way of enumerating scanner devices, if there is no bus contention between accessing other functionalties 
> such as printing and storage?

As far as I remember libsane considers as scanner what has a 
vendor/product ID pair in the hardcoded list of one of the SANE backends 
(or even a hardcoded overview list which is part of SANE).

    Till

