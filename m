Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=xPkowsYmnJP7/bZVQ8+JBWfJJc/bb2sd16JKiU7ycw0=;
 b=W9cxpulQtBqJekdTcY8DkQ6xtr8o9EsKtnUJia9A7YHtaejtNCYQ23XP9zMeSGXP6M
 lgAK30uX9zBOvzn8iXUG28cwf00iNrrFsxr0uonCCF05QimfJ7Qtj0dVzuws0E7sHiFs
 xicZZVzz1gwC0eUbPnoyEvJzWCaVUbrm0uLDfUTvDYxPBueTBlEwRl6yxQHSrd8cofM9
 vr3Y7jkLVJe196kJXD4mGjMgpNviMzRLr2WFwke2yFSxgvHPgt8rIcgEdAj4JHeai2PE
 RuFuDgzVXH1qZO8/uDmbOthX9HKMMUeibpll8PgZvGok/hEfD2U3ve9vEz2ZSAMHrNhV
 GQMQ==
Message-ID: <7934897f-b69a-8503-96c4-3123296b1ab4@gmail.com>
Date: Sat, 7 May 2022 18:07:02 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
 <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
 <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
 <2613b8ae-3d3f-ed8d-dd9a-8e241976388a@gmail.com>
 <002EC5D2-B6B8-4D82-AD42-D84AABFD6D13@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <002EC5D2-B6B8-4D82-AD42-D84AABFD6D13@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 07/05/2022 16:45, Michael Sweet wrote:
>>
>> Does the GPL2 not require them to then publish the source code of the combined software?
> 
> Only if the software is linked together as a single executable.
>

OK, if it is used only by a filter executable, a piece of code of CUPS 
or cups-filters which is free software anyway it is no problem. The 
caller, like printer firmware, can be closed-source.

>> So I will continue supporting both Poppler and Ghostscript. Poppler as the choice for embedded/IoT and Ghostscript as the choice for the Linux distributions.
> 
> Honestly, using it in a Linux distribution has the same risks since you are deploying cloud services (SaaS, etc.) using those distributions.  But that's far outside the scope of this group here and as long as it is possible to build without Ghostscript I am happy.

OK, we will offer both options. It is not our responsibility when the 
distros accept including Ghostscript, letting the printing stack use 
Ghostscript, and then use the distro for cloud services (and up to now 
no one complains about it). I hope it is at least no AGPL violation to 
use Ghostscript on a regular real-iron computer due to its closed-source 
BIOS.

    Till
