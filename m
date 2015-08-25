Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=m9KreQNWVedKVmDHMstDIIEuvNCJeSIcnJh36OvazHA=;
	b=wkbz6oB1/9h0FYvkEcMYsVE0ZKusnR4JV3IBfb0Gj1b93MasILYsRagszCI6qvDHs3
	Ay/dPaMdyD93dAdyDt1ocYiEPQ0iEMEBeZUhL1LER8LZmaecOHa0EPLfr9ZFvn5Ksa29
	jR1fdq4AKl1k5fTWS/YTgWGaXjAU9r0xQs4rZ+kjlCxY4t8x6dOrOqP1Sz6Fooi5oXNx
	wakXnLrzlda2hIgbNiaaIzc+uhS7qdM91M2UVeIEWM9vMYKpTPofEx2N1Xlzi6ADtkqb
	zLJcwIm2DVZGE5uE5k9lE0uMLVrkjm9/NvyehM784pEbTlagW5Cp5zpW+Uygu6k0XNNL
	msNw==
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
	<CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
	<FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
	<55DB5430.7000906@gmail.com>
	<CA+3RNfiGkWAYNjOSboBPmeRk=6eaZ=Hv=N+g4PGp4qXLqF_FwQ@mail.gmail.com>
	<246B4DE0-8F4A-426F-B8F7-BA4C8EC1D1B1@apple.com>
	<CA+3RNfhdwB34KNAhXKk6eGCTkFnSXCo0QybnEif_MmRL8PD8uw@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <55DCB84F.7030101@gmail.com>
Date: Tue, 25 Aug 2015 15:47:43 -0300
MIME-Version: 1.0
In-Reply-To: <CA+3RNfhdwB34KNAhXKk6eGCTkFnSXCo0QybnEif_MmRL8PD8uw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
 and Windows clients
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>, Michael Sweet <msweet@apple.com>
Cc: Smith Kennedy <smith.kennedy@hp.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 08/25/2015 03:44 PM, Alex Korobkin wrote:
> Right, this is the case when you connect to the printer via IPP.
> However, when one adds a printer via IPP in Windows, it cannot select a
> driver automatically (or I couldn't figure out that step). That's why
> I'd prefer to connect to it via Samba, but with Samba the job options do
> not work.
>

Windows seems to be missing IPP Everywhere (ask printer/CUPS server for 
PDLs and options via IPP and then present the options in print dialog 
and send the job in one of the PDLs with the users settings as IPP 
attributes) support.

    Till

