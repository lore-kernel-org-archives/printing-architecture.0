Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D6A381409
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B04CC81392
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tG6G+2JAoOdjiQ9NXKhi20k9A6GyNmXXR3cdqzlYmco=;
 b=pjAYBg/Mw33mCX5QB7YIXIRoJZAgHGT8AMtyBsWf/syu8GqSMaRfIAxV10/Ljhvnxo
 pZcne2DIeswS7Y2UwP1oydQWLxWEzrjXiXO1WQMnQPB/BBr+0wK12eJrr6zXstBR+GZL
 KvaSxNszyqaTfBQv9PmbXvOXsA9MJupfZRAJqy92qFg8cKZll0XdfIe11wrWAIJkF3sG
 s0Z/jW9rWFltKAqM/Ix2LVKAob4dOWyFalGAYfZG9eh3hD4PVhEiz4HfI6oUsB9FVmD/
 jRWV/crlJtnkuu3NvV0DTOj3xEgsM8Ob7iRt5eMEFuHQX3hiJLyjJFZ/XwQdgOzHl2+X
 T5bw==
Message-ID: <60a6ed56-49eb-2fcf-89ed-ad442b43fefe@gmail.com>
Date: Sun, 29 Jan 2023 23:17:51 -0300
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
References: <1ea9f7d3-e1c0-2e7c-64fb-7ce18a5202b7@gmail.com>
 <E6D91613-2ADB-40BE-BE4A-3AA462D4E0E1@msweet.org>
 <b137b92a-b1ff-32ea-4831-4c4273b790ad@gmail.com>
In-Reply-To: <b137b92a-b1ff-32ea-4831-4c4273b790ad@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] New issue on GitHub:
	Bug/Feature/Security selection screen
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

On 29/01/2023 22:58, Till Kamppeter wrote:
> 
> But how did you get this selection screen in your PAPPL repo?
> 

I have found the trick with the selection screen now. I have copied

.github/ISSUE_TEMPLATE/bug_report.md
.github/ISSUE_TEMPLATE/feature_request.md

from your pappl repo into the cups-filters repo, committed it and got 
the selection screen. One entry for each of these files and an extra 
entry for security bugs.

Thanks anyway.

    Till
