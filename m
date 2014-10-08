Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=86sH+uNX7L6YSwI3eSFRYI6LEEPOr+nF/4A/kDtY+6I=;
	b=hh6BLpdm6iEGdF2KNbrwYdchwRsAE/+GNI9tv1Mq9YuqJNkGhkESmSiL7/jx8MhwcD
	CvucyWdj1poNlG0oDQodQTKMUagp27ATBj3t51USiJuxk2rnk0Wx5W//HJdM7VGWJROm
	84J4DH6EAaFiG9r4S2bGcyc00gT5LN0cI44WplSuFv2lnVFMv+fAsAe1kJMnTxiF4E+y
	UZD7aQSlp4DCwyhXqUMuAFfANvqqzNy88hWLRROPhqx0tJlfClwTRrHNcpEt5W4kOJI5
	PDBZZzppFaT1FLIsFH8gvb8awbd2blKRXty0dZDLgkCWlqJbevqhJlZh9JMqdvSxwKfD
	9yQg==
Message-ID: <54350A8E.1010406@gmail.com>
Date: Wed, 08 Oct 2014 11:57:34 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org>
In-Reply-To: <54345EF9.5010405@thax.hardliners.org>
Content-Type: text/plain; charset=utf-8
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>, Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 10/07/2014 11:45 PM, Tobias Hoffmann wrote:
> I'm not sure what exactly is happening in your setup.
> Maybe your PPD is missing something (- and I'm not an expert for PPD/PJL)?
> Maybe you don't have a recent cups-filters (>= 1.0.34)?
> Maybe you're hitting some edge-cases that are not handled correctly in
> the current code?
> 
> AFAIK no-one else has reported a problem with PJL in a pure pdf
> workflow, and I can't find an obvious flaw in the code which deals with
> PJL in pdftopdf. The code is also basically copied over from the old
> pdftopdf implementation (cups-filters <=1.0.20); if your PPD does hw
> copy with the old implementation, but not with >=1.0.34, I will probably
> be able to fix that.
> 

Tobias, do you know for what the call

emitJCLOptions(stdout,ppd,param.deviceCopies);

in the emitPreamble() function in pdftopdf_jcl.cc is good for? For me it
looks like that it serves for inserting JCL options, but inserting JCL
options is already done by

ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);

I can even comment out

emitJCLOptions(stdout,ppd,param.deviceCopies);

and the output stays the same.

What I want to have is that if param.deviceCopies is not 1 (= multiple
hardware copies) that

@PJL SET COPIES=...

is added.

Currently all works fine for PPDs with "*cupsManualCopies: True" as
pdftopdf generates software copies then. Without this entry pdftopdf
sends only one copy of the PDF content and adds only a comment for
subsequent filters. It does not add anything to generate the copies on a
PDF printer.

   Till

