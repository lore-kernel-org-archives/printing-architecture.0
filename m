Return-Path: <computersforpeace@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vroE1oFvIVAOkYkzVEGaFRhT8EVsoWw1p0IOdVMvH8Y=;
	b=Z64pIX8ugF9iLfRkMGXmlZOi2dHtr07CjLxmR1SrUGt5MfE0xHcapgbpmXuqQCGI0u
	aclfYhWhs/yto5sgcuQlIPZKFde5uCpVdJjsN4rBT6f3rFBG7ak2xE9os77UX2apZs1a
	JvEin2QUBa6EA4qOpbBykKtIgzRdNYQIpmBd3x0CoVmbtGe0eqPRmA4io6/n98Q7cntS
	TCVhHROME/kBKp76uaOy9c71aTDZtL9PETyNP1Q1q0cxBirfjd8CI+JX56t7XN4OO02+
	IyBTsL3/kKw751N0PjMCoXUTWHSZ6sJBz19N36CBOBpdJdghk8WD0LG6xqXlSSpUcC7u
	0Zeg==
Date: Mon, 11 Apr 2016 09:51:43 -0700
From: Brian Norris <computersforpeace@gmail.com>
Message-ID: <20160411165143.GA15308@localhost>
References: <20160322204034.GA96488@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160322204034.GA96488@google.com>
Subject: Re: [Printing-architecture] [cups-filters] using cups-browsed for
	DNS-SD/IPP discovery
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: till.kamppeter@gmail.com

Ping? Should I just file a bug for these sort of questions?

On Tue, Mar 22, 2016 at 01:40:34PM -0700, Brian Norris wrote:
> Hi,
> 
> I'm looking at the features of cups-browsed to see if I would want to
> use it for my purposes, and I ran across a really confusing piece of
> logic in the source code:
> 
>     if (!pdl || pdl[0] == '\0' ||
>         (!strcasestr(pdl, "application/postscript") &&
>          !strcasestr(pdl, "application/pdf") &&
>          !strcasestr(pdl, "image/pwg-raster") &&
>          ((!strcasestr(pdl, "application/vnd.hp-PCL") &&
>            !strcasestr(pdl, "application/PCL") &&
>            !strcasestr(pdl, "application/x-pcl")) ||
>           ((strncasecmp(make_model, "HP", 2) ||
>             strncasecmp(make_model, "Hewlett Packard", 15) ||
>             strncasecmp(make_model, "Hewlett-Packard", 15)) &&
>            !strcasestr(make_model, "LaserJet") &&
>            !strcasestr(make_model, "Mopier"))) &&
>          !strcasestr(pdl, "application/vnd.hp-PCLXL"))) {
>       debug_printf("cups-browsed: Cannot create remote printer %s (%s) as its PDLs are not known, ignoring this printer.\n",
>                    p->name, p->uri);
>       goto fail;
>     }
> 
> First of all, can anyone explain exactly what the block about HP is
> really supposed to be doing? I can't honestly figure it out.
> 
> But at any rate, I don't see how it could be correct. Particularly, this
> clause is always true (at most one of the comparisons will return 0), so
> why is it there?
> 
>            (strncasecmp(make_model, "HP", 2) ||
>             strncasecmp(make_model, "Hewlett Packard", 15) ||
>             strncasecmp(make_model, "Hewlett-Packard", 15))
> 
> Seems like at a minimum, this block should be corrected to actually
> produce the status of "is this an HP model." e.g., does the following
> diff make sense?
> 
> === modified file 'utils/cups-browsed.c'
> --- utils/cups-browsed.c	2016-02-10 14:18:28 +0000
> +++ utils/cups-browsed.c	2016-03-22 20:25:19 +0000
> @@ -2784,8 +2784,8 @@
>  	 ((!strcasestr(pdl, "application/vnd.hp-PCL") &&
>  	   !strcasestr(pdl, "application/PCL") &&
>  	   !strcasestr(pdl, "application/x-pcl")) ||
> -	  ((strncasecmp(make_model, "HP", 2) ||
> -	    strncasecmp(make_model, "Hewlett Packard", 15) ||
> +	  ((strncasecmp(make_model, "HP", 2) &&
> +	    strncasecmp(make_model, "Hewlett Packard", 15) &&
>  	    strncasecmp(make_model, "Hewlett-Packard", 15)) &&
>  	   !strcasestr(make_model, "LaserJet") &&
>  	   !strcasestr(make_model, "Mopier"))) &&
> 
> But I still don't feel like that's really what's intended, so an answer
> to my first question would be the most helpful.
> 
> Now, besides the correctness of this logic, is this aspect of the daemon
> something that people regularly use? I see that it's installed on many
> Linux distributions, but it seems like it isn't really exercised for
> Bonjour/DNS-SD discovery unless someone modifies the default
> cups-browsed.conf to have 'CreateIPPPrinterQueues Yes'.
> 
> Regards,
> Brian
