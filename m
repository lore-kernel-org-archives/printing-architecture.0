Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Roosq7OeEozC+MQ6k5VAXPxJ++wrrRZ5yYpia/A/yfo=;
	b=yunZp9f1i7zMUHfhVvcmjW0ZQiA9588KYdK5s9kd/Fw6pOFGVkuNPznkxqCvGT/QCt
	DJjLpSIq28XZtIVaymAZBy5g9vU+zSXM9Tat3wVU7SiOuyJPgdpvetEP/KC38GowyN/g
	Xcte7jG8JS4AOyxLBnmkJRTVYTdjnhcGEXWE/uDDLu5Tv3GEpRLwEtXSQaCRWADJlPGd
	zs56/VZOkwwBCW+ToUEOufaszhDqjqbyEN5g+3L7+F2nrUqs4yBwBjsIUaUsU5rDG5D0
	T8sZbEU2Yt1rNgKvmAXGfbbluAL57BjsU35FDv1jy5HK+ikjNL9WJpgU5vFqB+H4tQx9
	JaoA==
Message-ID: <51378924.7000208@gmail.com>
Date: Wed, 06 Mar 2013 19:21:24 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51378495.4020500@gmail.com>
	<CAD2FfiGn+BLDeNNMeLc4Cojxuv6EnVQFWGy2gnxv0nk9N3HDuA@mail.gmail.com>
In-Reply-To: <CAD2FfiGn+BLDeNNMeLc4Cojxuv6EnVQFWGy2gnxv0nk9N3HDuA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Changes in Ubuntu
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Richard Hughes <hughsient@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 03/06/2013 07:04 PM, Richard Hughes wrote:
>> The RIP on mobile will be Poppler, as Poppler is already there for the
>> PDF viewer, mobile apps will never send PostScript jobs, color
>> management is not yet implemented on mobile
> 
> I guess Canonical is going to do the work to make Poppler color managed, right?

One of my work items of the UDS session is asking CM experts about the
way to get Poppler color-managed. Canonical has no color managers
aboard, unfortunately.

What's on currently at Poppler is that there are patches for color
management available but under the Poppler developers there are no color
managers able to review them. So I ask you and all the other CM experts
to review the patches so that they make it quickly into a Poppler
release. This does not only help for mobile but also to get a more
reliable PostScript printer driver on all form factors.

See also from minute 31:00 onward in the session video.

   Till

