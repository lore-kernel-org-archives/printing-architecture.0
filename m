Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=eTf1bRUkySBRXViuVYu22Dce+oZtFhAWsrDSrWfFEJM=;
	b=MEmsLSQQtlfRoLTzyJRh47aJFYOoYmySw0pytzLMoVMIIm8yZ9gStqF8sRAGlbrLAA
	KH4e9IOuQD1b8X3k/rE4mwNpLLgjeTmvxUSEBU1PAkkU7rQcptpIDNAUmR/7NMuHMPJZ
	rj1XVum0fBdYEnk5d+imawE2FFsZlnT7TchAjZ2zB+WIaR4s+mh9EWaDwrG/9ULz2xHQ
	a/QkXREH1FRZkyBhlwt/qvF7zmvYwz+Kq06p8hftgDSmWCAwyGYfwW57I/QcBa94XTXF
	a2KVpHa3AUf+pJzs5Cbi/6YfKEneQENMru6isodE0dLIsZx9nuFcQ5lAgaKTLip/ID2Q
	PfDA==
References: <20171029212554.volqq54tg5a7gmhz@var.youpi.perso.aquilenet.fr>
	<bf03f307-1bcd-ca24-dae8-02eaca6cad83@gmail.com>
	<20171105165813.7frmcojb7unbvaxz@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <dc5a8551-29d3-a9f5-7476-cf8fa0afa65e@gmail.com>
Date: Sun, 5 Nov 2017 15:18:43 -0200
MIME-Version: 1.0
In-Reply-To: <20171105165813.7frmcojb7unbvaxz@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] braille: fix computation with
 old bash
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

On 11/05/2017 02:58 PM, Samuel Thibault wrote:
> Hello,
> 
> Till Kamppeter, on dim. 29 oct. 2017 21:15:22 -0200, wrote:
>> On 10/29/2017 07:25 PM, Samuel Thibault wrote:
>>> Old bash does not like quotes in $(("123" + 0)) , the attached patch
>>> removes these unneeded quotes.
>>
>> Applied, thank you very much.
> 
> I don't see it appearing on bzr http://bzr.openprinting.org/cups-filters/ or
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/changes
> 
> Did you perhaps forget to push, or is there perhaps some staging phase?
> 
> Samuel
> 

Forgot to tell you that I moved to GIT. The repo is now here:

https://github.com/OpenPrinting/cups-filters

    Till

