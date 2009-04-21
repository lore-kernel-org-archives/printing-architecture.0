Message-Id: <29BE1E67-4A6A-40D7-86EC-A21E518E756A@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <alpine.LNX.2.00.0904211009120.29424@nelson.suse.de>
Content-Type: text/plain; charset=US-ASCII; format=flowed
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v930.3)
Date: Tue, 21 Apr 2009 11:14:36 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CB8@EEAEX03.us.epson.net>
	<1F40945E-38C1-4ADC-B54C-DEF213F8A625@mmiworks.net>
	<alpine.LNX.2.00.0904211009120.29424@nelson.suse.de>
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
To: Johannes Meixner <jsmeix@suse.de>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

Johannes Meixner wrote:

> On Apr 17 20:21 peter sikking wrote (shortened):
>> for users printing, faxing, scanning, memory card reading are
>> totally unrelated activities. so it follows that faxing, scanning,
>> memory card reading is never going to be seen in a printing dialog
>> and also not in a status/monitoring dialog.
>
> Yes and no - it depends - as always - on the details what
> exactly is meant.
>
> In contrast to separated stand-alone devices where printing,
> faxing, scanning, memory card reading works independent
> of each other, all-in-one devices introduce hardware-dependent
> constraints.
>
> For example when the all-in-one device is busy with
> memory card reading, nothing else might be possible
> so that the device status/monitoring in all dialogs
> (i.e. also in the printing dialog) must display that
> the device is busy with memory card reading.
>
> The crucial point here is whether or not status/monitoring
> is meant regarding the actual hardware device.
>
> In contrast e.g. a print queue status/monitoring belongs
> of course only to the printing dialog.


interesting complication. can this lead to the situation that
when the print dialog comes up (or users Just Print) that
the printer (part) actually looks unavailable/not there
to the desktop computer?

    --ps

        founder + principal interaction architect
            man + machine interface works

        http://mmiworks.net/blog : on interaction architecture



