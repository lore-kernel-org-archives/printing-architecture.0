Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=5HfcXyLc0NEeBvzbm/Wfpgoo+vF1t7JNgOLqv6ZrTmg=;
	b=mOc6VwP2n3T+GCTdM7asgbfdGIjOBO71RtFxktBcRFbZ9ZZ9olJfHKZZF+rwe1u91Z
	U6QI69QoT5QBWNnS+K+fGdaT/M4Xs5+iTAIWv+J9vNf6bLL1RMms9bLfw7YG89DGn5b5
	UY5ZfaUfqaRzdoKOAzLulthYYfo8mEHEL1LA7TZ6FWLAQuh87J1R+8wiiDnZC0P0kKgz
	bkJBRBnNsh8bqDlIkFlnopsFd88H5T1i95Pza3c0F8HF9KkfXzDIqTgbaqgkWm0w1NWR
	Iy+dDJTJc6k78mqiGhFCLZdRr/34mAGbomYu6yvpS8O2irNk6dZFe1855mjXmpLoJP2k
	uMBw==
Message-ID: <51CA141F.2060609@gmail.com>
Date: Wed, 26 Jun 2013 00:05:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
	<m3txktzpf2.fsf@carbon.jhcloos.org>
	<55D4A897-5D56-4ADB-B183-379512FB2631@apple.com>
In-Reply-To: <55D4A897-5D56-4ADB-B183-379512FB2631@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
 Workflows
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, James Cloos <cloos@jhcloos.com>

On 06/20/2013 03:29 PM, Michael Sweet wrote:
> James,
> 
> Please file a bug against the OpenPrinting filters:
> 
>     https://bugs.launchpad.net/ubuntu/+source/cups-filters
> 
> When submitting a PostScript file to a PostScript printer, the preferred filter should be pstops.  The PDF filters should only get involved for non-PostScript print jobs.
>

James has filed it as

https://bugs.linuxfoundation.org/show_bug.cgi?id=1138

and I have fixed it now in the BZR repo. Will be included in
cups-filters 1.0.35.

> 
> Till,
> 
> Can you update the OpenPrinting landing page to provide some common links near the top, including things like:
> 
>     Reporting Bugs
>     Downloading the current version
>     Documentation
>     Mailing lists
> 
> Right now everything is pretty buried and I can't even say whether the link I've provided above is correct for reporting bugs...
> 

Done:

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/cups-filters

and linked from appropriate places on the front page

http://www.openprinting.org/

   Till

