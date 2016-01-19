Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=glND71/EOUkkn/MGOTX/nXxdPQRpEsawDGOryCPTNBU=;
	b=l2JG/QNXoumRTShCSzYrb6klLbLmlMixR09HIfIDovuFw3ihzqwmeMwKl8UGd648Qi
	+Wlzk5GoEbnmcGWGWkoxzb/nBQaNVK0WEmKWYOBInZv40BneXzxWAXMFBBYq62wIgzH2
	z0MSzYWcYxUUHcQsE5Dlheg9vob8z7uBo30x9DduXdx2ngA1HDcQNDJuPmebPFKmA60n
	TCQdOd2QpCPzHg2KDtxEXC/g+HDFVfbncMvHWv54Co1VQMpDOr6wXGLjbUJn51SEMWDy
	H5NwE2KXWBwooUUjrzVUw1rWkcxtPIRfjqK2CQ7pI8c+BKW2LM/OqcGe4phX8vPsyzpm
	TBFQ==
References: <20160119220929.GR3427@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <569EBD80.3040504@gmail.com>
Date: Tue, 19 Jan 2016 20:49:36 -0200
MIME-Version: 1.0
In-Reply-To: <20160119220929.GR3427@var.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] braille: Checking for tool
 presence
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

On 01/19/2016 08:09 PM, Samuel Thibault wrote:
> Hello,
>
> The attached patch makes the braille support check for tool presence, so
> that cups nicely tells the user what is missing, allowing distributions
> to relax package dependencies.
>
> Samuel

Thank you for the patch. I have applied it to the BZR repository now.

    Till


