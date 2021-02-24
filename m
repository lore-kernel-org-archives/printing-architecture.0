Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9U27YzuX5TvyZwR+8GFTL1ZS3YxBDQZhKIJ92b1ErA8=;
 b=p+Bm+UMJyvboEYvUtvALYMReHLvN/4/Ok9kZCLGPo+k+aZUxtzJmFKT3M78g9oMUxg
 ILMOtWxfPLNxuSoNuPyp2p3bidSCLKLmdG0nMX4Xp2moYNnCztbYxeYd7AEaIwSooPbq
 2+2kLIjeelnfvNrbEl1/OzQoOSh7GncYr54tzbFPAciX+fETqXFSvY+2L7IH9HkfODsD
 UO8Rdf9heLlqYiTphkhrX53PE/+I1KSJc+nzclE7K7fPuYXlTNs1to0RmDLetuS/A8cG
 Sw6YZMjC5JVxgqlxrcz21vlEqgZduBdGbBlnGEkD5Y9XtKOIBVVojw5wlplrjWD/+XsS
 HnBw==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <bcc4538ef1b6e8ef9395dda295f00eac@suse.de>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <4978914c-e66a-3084-251f-4b72ad364eaf@gmail.com>
Date: Wed, 24 Feb 2021 14:51:12 +0100
MIME-Version: 1.0
In-Reply-To: <bcc4538ef1b6e8ef9395dda295f00eac@suse.de>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>, printing-architecture@lists.linux-foundation.org, Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>

On 24/02/2021 13:01, Johannes Meixner wrote:
> 
> if I understand it correctly the basic idea behind is
> that for printer setup inside a container
> (I use 'container' as generic name for any isolated environment
>   that has no direct access to the outer world e.g. also chroot)
> udev-configure-printer acts as proxy for outer world access.
>

No, each container (Printer Application) has access to the printers and 
with the two methods I described can observe whether a printer is coming 
or going.

The central utility is to avoid that each installed container is queries 
a newly connected printer at the same time, overloading the printer, 
having race conditions who gets an answer and who not, ... The central 
utility would query the newly connected printer once and then talk to 
one container to create a print queue.

Note that the containers do are not able to talk to each other to 
negotiate which one gets the printer, they even do not know about the 
presence of their competitors for a given printer.

    Till
