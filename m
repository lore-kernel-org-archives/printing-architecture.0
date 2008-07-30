Message-ID: <4890C378.3070408@gmail.com>
Date: Wed, 30 Jul 2008 21:39:36 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48908DD8.2080405@gmail.com>
	<4890962F.4000305@apple.com>	<489098E8.1050805@gmail.com>
	<4890AD59.6090902@apple.com>
In-Reply-To: <4890AD59.6090902@apple.com>
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
To: Michael R Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Jonathan Riddell <jriddell@ubuntu.com>

Michael R Sweet wrote:
>> If I use number-up or fitplot with PostScript, PDF, or image input, will 
>> the margin settings not be used then to determine the frame into which 
>> the pages get scaled?
> 
> They will not, we use the imageable area from the PPD file and the
> bounding boxes in the corresponding input files.
> 

Thank you, I have updated the specs appropriately, now.

    Till
