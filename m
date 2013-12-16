Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=CmnuvrqqTaSRHOo9ujg1mxREYbN5EQWgRamV8lb9q+A=;
	b=zDEbElNsBKKsHN4fzBuoMRKgW/lxvjgC5RUA/CZTYaRKYUqPfpH/+D8hvwbC70X0QP
	wZrKDLa5TMPH3SJLTSw4X+/TvZKUPni5qDxWmT9e6W4DwYYvd1bZosmvFLq2E4OkZBNY
	mQc+zbsj9BivbzwVr0DytLwib2jq7BB6MxdDe0r7l2V9JLfRiovscfuuVV4VfoxtwLIQ
	FlF6k6zC443JoTw7W8rQ/EOUrXA8PlaP52mv4JHn2HvztKWORFp0CqrbPDUbhjQpxyFy
	yAFzXL8sho+cohLQ6AkF1FmEFcvmq+lnG59jupvfT99tZnwpdZAWp452KnTXUSD5fPAR
	FKNQ==
Message-ID: <52AF35A2.6060804@gmail.com>
Date: Mon, 16 Dec 2013 18:17:22 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1387213857.12274.26.camel@rubik>
In-Reply-To: <1387213857.12274.26.camel@rubik>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Useful utility: cups-filter-check
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Should we perhaps make this part of cups-filters?

   Till

On 12/16/2013 06:10 PM, Tim Waugh wrote:
> Hi,
> 
> Last week I put together a small program to simply display the filter
> pipelines that would be used for each configured input format and each
> likely output format (CUPS raster, PostScript, PDF).
> 
> This is useful for sanity-checking changes to CUPS filter costs, to
> check whether changes to pipelines are intentional or accidental.
> 
> It's based on testmime.c and is very simple. See what you think:
>   https://gitorious.org/cups-filter-check
> 
> Tim.
> */
> 
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 

