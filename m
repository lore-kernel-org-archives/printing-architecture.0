Return-Path: <johnlayt@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=sender:from:to:reply-to:subject:date:message-id:organization
	:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:content-type;
	bh=VcPtqcL/LzdxFdCPeXP1vWff9KWmCjPN0jMPON7rB6o=;
	b=iA3oJSf5qE8i4juMKDQlDXfQpwZm3ojItdV32is5S26iu5PCxUbJ28WY51q1kXZE1q
	RQlQ6z6HxKs9CDWE3KZTY0BPI36u3456ZHkzswdRAYfEUGNUPbtxc1oaJlGqpGHaMvuy
	jbTUv2faQNNDJkXhcayYJbOYnC0ityZo5rtF8=
Sender: John Layt <johnlayt@googlemail.com>
From: John Layt <jlayt@kde.org>
Date: Tue, 01 Nov 2011 22:06:36 +0000
Message-ID: <2886050.TkBJ9qcumF@argo.layt.net>
In-Reply-To: <E8C3B9E653C80C48B0951F8494C049A9026786@EEAEX02.us.epson.net>
References: <201106222349.13063.johnlayt@googlemail.com>
	<1923986.CutFMD6I4E@argo.layt.net>
	<E8C3B9E653C80C48B0951F8494C049A9026786@EEAEX02.us.epson.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Printing-architecture] Printing in Qt/KDE
Reply-To: John Layt <jlayt@kde.org>
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On Monday 31 Oct 2011 09:56:11 Petrie, Glen wrote:
> Hi John,
> 
> I reviewed the QPrinter Class Reference information.  While it appears
> that most of the objects, attributes and values needed for printing are
> present; I don't see that they align with existing and emerging
> standards today; specifically, the PWG.
> 
> The PWG has had IPP and is now creating the PWG: Job Ticket (which
> contains the objects, attributes and values) for printing.  Companies
> like Google, Apple, etc have stated or hinted they will be supporting
> the PWG standards and the Job Ticket.  Therefore, an area for
> consideration is for QPrinter to align and extend the current printing
> specific enum's to be more inline with the PWG Standards/Specifications.
> I have not check if any new QPrinter enum's or functions are needed to
> support the above standards; but it is another area for consideration.
> 
> Next, the print paradigm is shifting from print/printer drivers to print
> services.   This further implies that a print service now receives a
> "print job" which consist of a print job ticket and print content (print
> document, if you like).   Like Adobe's Acrobat application which can
> generate a JDF Job Ticket, another area of consideration is for QPrinter
> to generate a "print job"; consisting of a print job ticket and print
> content.   This also helps to support Cloud Printing.   I do understand
> that the QPrinter::paintEngine could provide this functionality but
> having the functionality built directly in to QPrinter, eliminates
> developer having to recreate it.
> 
> Glen

Thanks Glen.  Yes, the plan for the new printing support in 5.1 or 5.2 is a 
completely new api and class model around modern standards, the IPP, Job 
Ticket and OSX api are high on my list of models to investigate.  As Qt is a 
cross-platofrm toolkit, and CUPS is on two of the three official reference 
platforms, supporting that model will be our primary target, with Windows 
printing being mangled to fit as best as possible.  Devices and the Cloud are 
also of great interest to Nokia and KDE.  And of course there is the CPD to be 
integrated if installed so the api of that will be influential too.

I'll certainly be asking the list for feedback on the design, but that design 
process probably won't start until next year.

Cheers!

John.

