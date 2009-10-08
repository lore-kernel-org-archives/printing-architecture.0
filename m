Message-ID: <4ACE4633.9010803@bredband.net>
Date: Thu, 08 Oct 2009 22:06:11 +0200
From: Per Hermansson <hermansson.per@bredband.net>
MIME-Version: 1.0
References: <4A8BCB46.9070401@gmail.com>
	<200910081041.47887.hvengel@astound.net>
In-Reply-To: <200910081041.47887.hvengel@astound.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Common Printing Dialog: Print to (PDF)
 file
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>
Cc: printing-architecture@lists.linux-foundation.org

Hal V. Engel wrote:
>> we should implement such a "Print to File" queue also in the
>> Common Printing dialog, so that we get it quickly into the distros
>> without having a regression due to this feature missing.
>>
>> For the implementation note that the current dialogs do not send the job
>> into a CUPS queue for "Print to File" (we do not use facilities like the
>> cups-pdf package). "Print to File" opens a "Save as ..." dialog when
>> clicking on "Print" in the printing dialog  Then the user chooses where
>> to put his file. 
>>     
>
> In GTK yes but the Qt4 print dialogs do not open a separate "Save as.." dialog 
> since the regular print dialog has an "Output file:" widget that is activated 
> when when of the print to file queues is selected and there is no need for a 
> separate "Save as.." dialog.  The "Print" button will cause the file to be 
> created/saved.  This seems a little cleaner to me than having a separate "Save 
> as.." dialog.
>
>   
This makes a good motivation for migrating to the real "Print to file" 
dialog when designed.
The CPD isn't designed for exporting to files so the current approach 
offers a good trade off.
If we make the current implementation too good no one will want to 
switch when the new dialog is released :-)

/Per
