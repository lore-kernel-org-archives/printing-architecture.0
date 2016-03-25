Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=anpQPo7HN3pN0o23psR5QwJp/vsU97WwR0i9Hf5ZarI=;
	b=H33Z8muwYUyl4Gy1Ssvqt0NUDaPxJ1D8WQHeG1IGo0WylnNNMj/iOlNXpNO7mkXAW0
	NF1EhIAL5Q9hhnkqscoOe4X9aoEL557md16URyuWuYgQ8ioJ+VZGfZrfeWpNLkONoNaA
	ld/9KQKK/ZvuzGXtV50jV9alZtTD1sdRHIv++JAqJmhz4myOUknY8hqh+eRSnJsgsoXJ
	Eg/R2zI39DjP7zDxLZHIIXWS942NwgL7HTDki7bOBYFvQ+lVyjm6hOXbuNdjQMizoSAo
	PeiWbyI97cFoXnaoOS7xGLaMDum04PiInLngQSF9RttmY8XpG8bdwSS6XHzdZ97606kN
	uUxw==
References: <56F4266B.4060605@gmail.com> <1943931458892174@web3o.yandex.ru>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <56F5D04A.20506@gmail.com>
Date: Fri, 25 Mar 2016 20:56:58 -0300
MIME-Version: 1.0
In-Reply-To: <1943931458892174@web3o.yandex.ru>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] Google Summer of Code
	2016 - Many new applications
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Evgeny Novikov <novikov@ispras.ru>, Alexey Khoroshilov <khoroshilov@ispras.ru>, "Luis R. Rodriguez" <mcgrof@gmail.com>, Greg KH <greg@kroah.com>, "lsb-discuss@lists.linux-foundation.org" <lsb-discuss@lists.linux-foundation.org>, linux-wireless <linux-wireless@vger.kernel.org>, Open Printing <printing-architecture@lists.linux-foundation.org>, chris holcombe <chris.holcombe@canonical.com>, Chris MacNaughton <chris.macnaughton@canonical.com>

On 03/25/2016 04:49 AM, Evgeny Novikov wrote:
> Hi,
>
> I see briefly all proposals and suggest the following.
>
> Ignore definitely trash proposals for which we even can't expect anything good:
> ABHISHEK KUMAR SINGH - AUTOMATIC GUN FIRING USING ULTRASONIC RADAR - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/6488763748319232/
> Rihab - GirlySpace - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/6439770653720576/
> Abraham Masri - Kedos Operating System - Proposal Draft - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5824313382928384/ (Greg marked this proposal as not valid)
> Wenhui Zhang - LLVM - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5513414914867200/ (Jan-Simon marked it as spam)
> devesh8091 - Penguin - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/4940939340546048/
> Ricky Muhammad - The Linux Foundation - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5458068905132032/ (Greg pointed what to do but the student ignored this)
>

I agree, all ignored now. Either no or no sufficient content or content 
which does not make sense.

> This student suggested two proposals that aren't good and likely the student isn't going to improve them. So I suggest to ignore them if Greg doesn't mind:
> Sandhya - IIO driver - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5372313474170880/
> Sandhya - memory management latency tracing - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5404748865863680/
>

Final PDF contains exactly the same as the abstract, no info about 
school, course type, already acquired knowledge, ... I would ignore 
these. Greg, please confirm.

> This student creates 3 different applications for 3 different projects without providing any particular details. I see his applications a bit and this doesn't look like he really wants and can to implement something valuable. So I suggest to just ignore his proposals:
> Ravike14 - GSOC 2016- The Linux Foundation (Driver Backport) - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5414085923438592/
> Ravike14 - GSOC 2016- The Linux Foundation (Driver Backport) - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/6630431633965056/
> Ravike14 - GSOC 2016- The Linux Foundation (General kernel work) - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/6384381044195328/
>

For me the now revealed final PDFs from Ravike14 look OK. Kernel guys, 
please check.

> Select one of the proposals for the same project if it isn't really required to have two or more students working concurrently/collaboratively:
> Erick 2206 - Diagnose My Ceph Cluster - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5040149662531584/ and penguinRaider - Diagnose my ceph cluster - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/6137977797345280/ (at the moment both are accepted)

Chris (MacNaughton and Holcombe), can you check, you told that you had 
already a student. Please "WANT TO MENTOR" and star the correct CEPH 
applications.

> narendasan - Proposal for work on QEMU API for Rust - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/5184290644033536/ and DrewSidman - QEMU API for Rust - https://summerofcode.withgoogle.com/dashboard/organization/6564234674569216/proposal/6135625933651968/ (at the moment both are accepted although the second application even doesn't have any proposal just the abstract)
>

Chris (MacNaughton and Holcombe), same as for the CEPH applications.

>
> The rest proposals (~9) are either already thoroughly reviewed and accepted or need this ASAP.
>

I am taking care of the 5 OpenPrinting proposals, please take care of 
all the others, mark with IGNORE what you for sure do not want to mentor 
and mark with a star what you want to mentor and also click "WANT TO 
MENTOR" on the proposal page. Please try to get two mentors per student, 
if only one is actually doing the mentoring work, the other is a backup.

Please tell if you are in doubt with something.

    Till

