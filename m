Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=P/5TVfuOnAaZRFBSjSDDmvHXTLydnjbiHIeef6hsauk=;
 b=ZbyROaTFxS0hg8fi8YTExnzLjDHaRBLVqKQgJpGzPDfLy2svFJ5s4FZNpVqQQWxPrR
 8iLAX2WOA+dfEzK8zHqiJ/kbuibhveOSnPdEhH8FLvPK5+3qD61gfYPOGfkzhxCLEYm+
 ImYj/8pSCBTvXId2IjQfXpDEzjuXuigSODiYkVNOTE9n3mM9cEpR6qivZ4AgxD4syBRQ
 +mOfEuRtbz5XverIjIrEDHsTXtxnBXgihwt41VTAHI1wfZPXk13ulkFiPOTCw28VDjd+
 gznqi8K6bczcnUg2tLnflEHkQoqWewt4MzYuNq1UZSxHa3Dri4yWwgMaD06XJn2Q58yG
 lx2Q==
References: <CAN40gSs6Q_b9gn39rQ5w7YY4azD68AgoZ_QT0d1_4NCsA7moAA@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <3a9bf27a-e1f1-93f5-9863-b08bc2e45a83@gmail.com>
Date: Fri, 22 Nov 2019 23:32:33 +0100
MIME-Version: 1.0
In-Reply-To: <CAN40gSs6Q_b9gn39rQ5w7YY4azD68AgoZ_QT0d1_4NCsA7moAA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] LGTM - FREE security scan for open
	source software
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Danny Brennan <brennand@us.ibm.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 20/11/2019 21:41, Ira McDonald wrote:
> Hi,
> 
> As Mike Sweet reported, during today's PWG Virtual F2F meeting, the PWG
> ippsample tools now use automated security scanning of updates by LGTM.
> 
> Mike has been favorably impressed by the competence and professionalism
> of the LGTM staff (e.g., when reporting false positives).
> 
> I suggest that this is worth integrating into the CUPS Filters and GSoC
> projects development processes as well.
> 
> https://lgtm.com/
> 
> WDYT?

I have looked into it, too, and when doing investigations for the implementation 
of driverless IPP scanning I saw it in PWG's ippsample.

Also, all the OpenPrinting projects are on GitHub now, so I think we should 
start to use it.

Is it possible o create an organization account under lgtm, or organizations 
within an account, like in GitHub, where users can be added and removed? This 
way LGTM operation would not get hardwired to a single person.

    Till


