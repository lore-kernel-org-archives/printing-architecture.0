Message-ID: <49E8CCB8.4000201@gmail.com>
Date: Fri, 17 Apr 2009 20:38:48 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CB8@EEAEX03.us.epson.net>
	<1F40945E-38C1-4ADC-B54C-DEF213F8A625@mmiworks.net>
In-Reply-To: <1F40945E-38C1-4ADC-B54C-DEF213F8A625@mmiworks.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Another Common Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: peter sikking <peter@mmiworks.net>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

peter sikking wrote:
> Glen,
> 
>> Have you ever considered creating/defining a Common Status/Monitoring 
>> Dialog.
> 
> for printing: sure that is the next project, together with
> printer installation.
> 
>> CUPS may have something already but does it support multi-function 
>> devices sub-units like fax, scan, memory card, etc and can it provide 
>> the status/monitoring information on a sub-unit by sub-unit basis or 
>> as a roll-up for the entire MFD or both????
> 
> for users printing, faxing, scanning, memory card reading are
> totally unrelated activities. so it follows that faxing, scanning,
> memory card reading is never going to be seen in a printing dialog
> and also not in a status/monitoring dialog.
> 

I would say so, too. The scanner should appear in scanning applications, 
memory cards should simply get auto-mounted and appear on the desktop 
(at least for locally connected devices, for network devices they should 
appear when scanning for file system shares in the network). Sending 
faxes should be done by a print queue where the printing dialog shows an 
appropriate widget for the fax number. A dialog to put these functions 
together is not needed. It can even get counter-intuitive if an MF 
device and a scan-only device is connected to the same machine.

    Till
