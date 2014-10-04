Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <54304ED0.5000809@thax.hardliners.org>
Date: Sat, 04 Oct 2014 21:47:28 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
In-Reply-To: <CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 04/10/14 19:36, Alex Korobkin wrote:
> cups-filters package ships with a couple of sample PPDs [2], [3] that 
> basically allow for inserting PJL commands into the job to change its 
> most common options: tray, duplex, etc.
> I'm trying to find out whether making manual copies via 
> cupsManualCopies is the only way to handle the number of copies. Can 
> pdftopdf or CUPS insert PJL SET COPIES=X into the job?
Yes (for resonably recent versions). But the string "PJL SET COPIES" (or 
whatever the printer needs) has to come *from the PPD*. Also the 
emit-jcl must not be disabled in pdftopdf's arguments (mostly relevant 
when pdftopdf is NOT the last filter).

> Can CUPS set the number of copies via IPP commands? There is also some 
> code in pdftopdf_jcl.cc [4] that is dealing with a Copies directive in 
> a PPD, but I don't quite understand what it does.
If the PPD does not specify cupsManualCopies, then the JCL commands *for 
that particular printer* have to be specified in the PPD.
Also keep in mind that the device might not support deviceCopies for 
certain collate settings; the PPD has to contain the necessary "logic" 
for that, too.

 From [4] it follows that certain PPD Attributes /can/ be necessary for 
deviceCopies:
   *JCLToPDFInterpreter, *pdftopdfJCLBegin, *pdftopdfJCLCopies, Copies

   Tobias
