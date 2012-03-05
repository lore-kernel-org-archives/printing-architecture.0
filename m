Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=bmoQ8gAF4C0M5X1r26FgmkPrtr5UPczh60Autjx72hk=;
	b=t16IlOqgSdQMD007TKEY/ZOXNHLhNVXNQ5igYi9/FIlwHd/pH5ascjX3Brbi7ybRNb
	j+N1UGBnagZXo8eV3eT4BN8GFzIQjoaYgxU5oDrZ+6Udg/tPraHc4BHPT3PAruql5qK2
	J9hX+4/MXKW3Mk4+dirmvUAJa1p0TvosvaiU7XDRli6OtSki8HUJz/GvUopSoC9rlJHu
	95MWb4C52gUlU06HQVx8clXAZ7fuDfOrB0j2ABTjOc1A1uxtuw+mvv4OVn64u1tpfwNx
	VRyGwdUvGvK9u3MGfY8r/EVLEyWqnEEccUbU3HqsgEiSC5HKbH4o5nOahMO+Yqe+ekHG
	DtRg==
Message-ID: <4F54D580.7090608@gmail.com>
Date: Mon, 05 Mar 2012 16:02:24 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp>
	<1330690418.32498.29.camel@rubik>
	<20120303.113354.329374074.sho@bbr.jp>
	<1330949656.9812.8.camel@rubik>
In-Reply-To: <1330949656.9812.8.camel@rubik>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org


Otani-san, for the time being until we succeed to get the Poppler 
developers to expose the additional APIs for implementing pdftopdf and 
pdftoopvp, can you update the duplictaed code to the newest file 
versions available, so that the known vulnerabilities are fixed? Thanks 
in advance.

    Till

On 03/05/2012 01:14 PM, Tim Waugh wrote:
> On Sat, 2012-03-03 at 11:33 +0900, Koji Otani wrote:
>> Sorry, I'm not good at English.
>
> Your English is fine. :-)
>
>> It seemes that poppler provides parsing and rendering PDF.
>> pdftopdf needs modifying PDF such as number-up, duplicating pages ,
>> inserting empty pages, scaling pages, embedding fonts and producing PDF.
>> When I began to develop poppler, I considered about various things
>> such as limited time, cost, etc. And I decided that I developed pdftopdf
>> outside of poppler. (Developing pdftopdf was funded by a Japanese governmental
>> organization)
>> It may be ok for poppler to include these features as you say.
>> I would appreciate it if you put these features into poppler.
>
> Thanks for explaining.  If poppler doesn't currently expose enough to
> allow pdftopdf to do what it needs to then some work is needed to change
> that, in order to avoid duplication of bugs.
>
> Who knows the pdftopdf/poppler code well enough to do this?
>
> Do we know anyone on the poppler development team who could guide us as
> to what sort of changes they will accept?
>
> Tim.
> */
>

