Message-Id: <E6115914-8CC1-4D9F-8068-182867649695@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <49E8ECCF.8050700@gmail.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v930.3)
Date: Sat, 18 Apr 2009 11:57:06 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CB8@EEAEX03.us.epson.net>	<49E8CCB8.4000201@gmail.com>	<484F18A6-7ADF-4878-AD2F-2178B655199D@mmiworks.net>
	<200904171232.16547.hvengel@astound.net>
	<49E8ECCF.8050700@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Till wrote:

> Hal V. Engel wrote:
>> On Friday 17 April 2009 11:54:28 am peter sikking wrote:
>>> Till wrote:
>>>> Sending faxes should be done by a print queue where the printing
>>>> dialog shows an appropriate widget for the fax number.
>>> even that is mind-boggling incomprehensible for users.
>>> I will fight tooth and nail to avoid that solution.
>>>
>>
>> I also agree with Peter here.  A user sending a fax expects to see  
>> fax
>> specific dialogs.  Till however is correct that hidden below that  
>> fax specific
>> UI could be a print queue but the user should NEVER be aware of how  
>> it is
>> actually implemented.
>
>
> So fax should look like this: On the implementation side we have print
> queues for faxes, the PPD files of fax queues contain the following  
> CUPS
> extension:
>
> *cupsFax: true
>
> (see http://www.cups.org/documentation.php/doc-1.4/spec-ppd.html).  
> This
> allows distinguishing print queues and fax queues. Applications are
> supposed to have a "Print ..." and a "Fax ..." entry.

yes. this is the key to making things normal for users.

> If a queue type
> (printing, faxing) is not present, the corresponding menu entry gets
> grayed out.

both will need access installation workflow (the next project...)

> Clicking "Print ..." gives the printing dialog as Peter has
> designed it, but only print queues (and no fax queues) are listed.

yes. excellent.

> Clicking "Fax ..." gives a dialog (slightly) different to Peter's
> printing dialog, for example with an additional "zone" with one or  
> more
>  widgets to choose the fax destination (by typing in, calling address
> book, ...) and only the fax queues listed. The exact design for an  
> ideal
> fax dialog can also be left to OpenPrinting. WDYT?


just like I said for the pdf export dialog: it will be a cousin
of the print dialog, not a twin brother. we can recycle a lot of
good UI concepts and code for these dialogs, but sound UI practice
demands that the design of each is optimised for the particular
activity.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



