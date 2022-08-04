Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6253241BA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F8F841B59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=kZ93wNoBS+duxm0TJcpwO6EYMHoRwOIemByrsaL/WBg=;
 b=Cm/TkbKNrR/NroRI6tl8j5ZU+zStybq7R0Wdb4hl3wJQ/2zdlGjR9WomAqMTpjKmpW
 oYf+oeN5Fx53K+QFYBkbfJt70/e8swOW36YS86tLeXZGLbfKHm+JUIEwC88nuraQP3AC
 ooI0OaKuVsneh/GLUMESUvntH+H31hJlssIFearvZkS8i/IiqlSUGnan8ZACqO8RE4O/
 cFk6jdM7ndBIYXDW8W3sUYcXKSwbdJpFzWSUiaqaKsV6pHmvajiFLG0gTMUi+XNxsuI4
 Ldws/15XSqMX5tzNMH0r3F41bK09KSwa2jnKIidsbjBSgcjW3nj5yotiw7UEhokdh2cj
 Y+Tw==
Message-ID: <0944e753-eab6-26d7-7aab-995ba2e89b65@gmail.com>
Date: Thu, 4 Aug 2022 17:06:14 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <885dd8ac-97fe-3891-22bb-f4904925c400@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <885dd8ac-97fe-3891-22bb-f4904925c400@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Firefox 103 supports temporary queues!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Thanks for the info, but I have Firefox 103 on Ubuntu 22.04, in Snap format:

$ snap list | grep firefox

firefox                            103.0-1                     1589 
latest/stable     mozilla**             -

$



I connect the "cups-control" interface (Snap is not yet switched over to 
the new "cups" interface):

$ sudo snap connect firefox:cups-control

$

And in Firofox' own print dialog I see only the permanent queues, the 
same as I get with "lpstat -v".

Can it be that RedHat has applied a distro patch to fix the print 
dialog? If yes, could you make this patch available?

    Till


On 04/08/2022 16:24, Zdenek Dohnal wrote:
> Hi all,
> 
> I'm happy to announce that Firefox 103 has started to show temporary 
> queues in their own print dialog and printing via them works (at least 
> on Fedora).
> 
> Feel free to test/leave feedback what to improve! I'll pass the feedback 
> to Firefox upstream people from Fedora community.
> 
> I'm glad the another application added temporary queue support, which 
> brings us closer to CUPS 3.0 :)
> 
> 
> Zdenek
> 
