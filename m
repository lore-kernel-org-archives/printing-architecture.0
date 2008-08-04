Message-ID: <48977A53.8000502@gmail.com>
Date: Mon, 04 Aug 2008 23:53:23 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>	<4895C323.7060005@apple.com>	<200808031506.m73F6GPe025447@dsl092-065-009.bos1.dsl.speakeasy.net>
	<200808030932.38287.hvengel@astound.net>
In-Reply-To: <200808030932.38287.hvengel@astound.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD extension specs updated
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel@lists.sourceforge.net

Hal V. Engel wrote:
> I don't think this is off topic. After all the thread is about PPD files 
> and the Common Printing Dialog and Kai-Uwe asked if the cupsICCProfile 
> part of the PPD specification was going to be implemented in the new 
> Common Printing Dialog. In addition, the thread mentioned color 
> management as one of the reasons for a spec change for PPD files. This 
> seems to me to be right on topic. I also want to know the answer to this 
> question. Is the new printing dialog going to support color management 
> and will it be able to make use of cupsICCProfile info from PPD files?
> 
> Hal
> 

It is a good idea to add the color profile support to the dialog. But 
are clients able to download the ICC profile from the CUPS server? Would 
it not be the better solution if CUPS itself already supports color 
management and not to make the dialog apply color profiles? Which 
options would be needed in the Common Printing Dialog to control color 
management?

    Till


> PS: I tried to find info about this project on-line. Other than finding 
> some basic references to the GSoC project I was unable to find anything 
> that had any level of detail like for example specification or design 
> documents or a project wiki or project email list. Is this type of 
> information available and if so where is it located?

Here is the home page of the Common Printing dialog:

https://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialog

There are links to all specs and related pages.

    Till
