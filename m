Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=XIhcRMYr68CvXdny6XpiBcV2m5tXBi7wZC6UZMedCDI=;
	b=axqEsi7A5IfXzUtuIaNYbN66mpHugI1H+SLbIvaWHDBW+OS5Vf32oOu0Rs78UteDVJ
	d+6LdqUXxj09SEoHxermW+BkuzmDK/caWOrik687V+x/tDecrSpt0vbnswX3SRWOiR51
	7qkQ6xmnF1Nm1W9Zc7cvj7EiWBJG8/K78TUK2JwV16p0r/AB5Lwwm1Q/tt94aiPwkyQ/
	M9nRvVK6iw5m0fjCtNCumYNy8xgKnkd0IRpwNNNVRbG5smvg5Ofik3Z/RVqQWbAdaUQw
	JNcypy7MHDiBgqnTEOUgp9Ke5KBRqDIX0NIj8v6rf8U8WJwFIYjISrpcDuuDoU4+8wWx
	FFBQ==
References: <20151209102736.GC16751@var.bordeaux.inria.fr>
	<5669E0B4.9040009@gmail.com> <20151210204505.GJ2905@var.home>
	<5669E84B.2090400@gmail.com> <20151210213147.GK2905@var.home>
	<566A16AA.7080602@gmail.com> <20151211003126.GB2905@var.home>
	<566B8652.6050805@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <566B9A46.7020703@gmail.com>
Date: Sat, 12 Dec 2015 01:53:42 -0200
MIME-Version: 1.0
In-Reply-To: <566B8652.6050805@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Contributing braille embosser support
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

On 12/12/2015 12:28 AM, Till Kamppeter wrote:
> - There are three files which I have dropped as they do not get used (no
> reference to them in the other files): drivers/generic/fr.po,
> drivers/index/fr.po, and drivers/index/ubrlto4dot.c. For what are these
> files used, especially what does drivers/index/ubrlto4dot.c do?
>

I have found out for what the fr.po files are good for: If I put them 
into /usr/share/cups/ppdc/ directory, the on-the-fly-generated PPD files 
get a French locale added. Only problem is that only one fr.po can be 
placed in /usr/share/cups/ppdc/, so I will look into renaming them and 
add the two renamed files to cups-filter. I assume I have to rename the 
references in the *.drv files appropriately then.

Is this correct?

So the only file staying unclear to me is drivers/index/ubrlto4dot.c. 
For what does this file serve?

    Till

