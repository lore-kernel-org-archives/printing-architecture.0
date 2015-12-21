Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=gLecGwY0F8C4mfCmUtcCNE4sSMzLOrq3gqEBMKknpM4=;
	b=mQZ0oLb4WlTragCOCoiy6oKlgtiSlIOURoXjDIDsUCflsQnhVfipThPjcqRMEuIxHc
	JaIVCbodK/9gILlRpExr+ed5bzmoWE+EGOMxjdIozZJxbKBfkCYHC6L9ZJP4duvY8T1G
	gYFshVI7anHbbh7vXgxXbAQcpME80lKMB27M0eeqQUb5PGWHHWO6EEB4yhc2ZObuxaQx
	MINB6jz1yTbV0TRCgg/Wyd6jgHCF9ZIhHpRppNUNck6+WwFCG76jyLm9C+nMb/GNFIlx
	epAvgiCvC7DX0y0tFUTCn+CLkWpH8C0JLFmRVhsMay1PRul/I4NDXpfdT8aItPhZxAiI
	/tjg==
References: <20151212083605.GX2764@var.home> <566C0ACD.2040305@gmail.com>
	<20151213024001.GR2765@var.home> <566D5181.6010103@gmail.com>
	<20151221001246.GC4287@var.home>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <56780503.4090005@gmail.com>
Date: Mon, 21 Dec 2015 11:56:19 -0200
MIME-Version: 1.0
In-Reply-To: <20151221001246.GC4287@var.home>
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

On 12/20/2015 10:12 PM, Samuel Thibault wrote:
> Till Kamppeter, on Sun 13 Dec 2015 09:07:45 -0200, wrote:
>> Now please download the BZR of cups-filters and check whether everything is
>> OK. Thanks.
>
> A second change which will be useful is as attached: for now imagemagick
> introduces some header in the produced braille-formatted images.  We
> will however probably want to remove it in the future.  The attached
> patch makes cups-filters cope with both the header being present or not.
>
> Samuel
>

Thank you very much for the two patches I have applied them to the 
cups-filters BZR repository now.

    Till

