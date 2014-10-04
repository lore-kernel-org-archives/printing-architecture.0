Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1412437249; x=2276350849;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PXylhINMTdL0OJEpwPNDoNqUy/ybshHYCSvVaj9yEOU=;
	b=CwjJc1nc/ukx8va02twMA67AeqhTRzKsKAL6AYYM4wKqA9emF82VqJT+T79g82Mf
	1F12r/ALiVLtJE1bkhpwNvA/B6q+OACvquk5WVccYVGKzkjnpqlK9gY5j/lf8Bmf
	WdbfJhl5+vnlOoTWjcmXuJPrlFIdBnRTTYIxFPEPT4QfSsecRdmsZPni8uQHvmof
	zNbTfMgjfN8hA2iz/IWqDAg4NmZK8grTwdT3WEG12PWSJdw7JrXN4MoDWh0ZKx2W
	y9DSW6JJtt+1exYLu5HleT7PBSGepF3hO/4hur0ZsfzyTiJvCvGP1aGevyZReM0o
	7cQ8SQdemP4aVMB/zOshYg==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
Date: Sat, 04 Oct 2014 11:40:47 -0400
Message-id: <5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
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

Alex,

> On Oct 3, 2014, at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:
> 
> Hi all, 
> 
> I'm looking at example PPDs for pure PDF workflow, and all of them have 
> cupsManualCopies: true
> 
> Why is that? Is it impossible to tell printer to print a number of copies with pure PDF workflow? 
> Maybe pdftopdf can inject @PJL SET COPIES=X into the file? 

No, that wouldn't work since the PDF-to-raster filters don't support PJL and (for that matter) most PDF printers do not support PJL.

cupsManualCopies is there because the destination doesn't support generating copies of its own.  If it does, then cupsManualCopies won't be in the PPD - in the case of IPP Everywhere printers the copy count is passed in the job ticket when we create the job from the IPP backend.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

