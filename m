Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=wa7QaAzhHlxzcaE5GNd7d4POwo/R1iJJlmpQAhWx9Kg=;
 b=dYTotPYqnkdlT+TIJTQhiTkXexCt/8mqwUkSNed+nloHvUkEOb6KWtYNHOImbAiTq8
 Yokp7CJiaHMomPspXie8bK4aGG8gNcacLNPbbgKb18l162xIWTPs9CuJS/4XKAB/46iB
 lerPGtGCvjCs+jwt/rYeCG+6YR3sZPPUXLye2F4C0b70+YmqmfizaRCdtIK8ldHwtLHm
 ZGQy/cUkunetkDt7LsPgCMNp9kWRZ469QPM1TT8BEvGnIsRSv93fEhcQ6ZbKmda+2e6w
 s0DO/5mcqU8WV3ul9AuPqhdSA1uVup138eWaRCd3KltesO/ggIVjY9Wa8A7bcRXqp1L0
 Uo3Q==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <09070443-4d49-f477-5b29-cd9cc785f4aa@gmail.com>
Date: Tue, 28 Jul 2020 23:53:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Canceling jobs in Printer Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Jai Luthra <luthrajaiji@gmail.com>

Hi,

what does exactly happen if a job gets cancelled inside a PAPPL-based 
Printer Application? For example if a user or admin cancels a running 
job in the web interface, or if a destination device disappears in the 
middle of the job?

How will filter processes get stopped, for example in the middle of a 
200-page job or in the middle of an A0-sized photo?

I do not see any JobCanceled variable which gets set when the job is 
cancelled and which the filters check in loops or at every page. The 
filters in cups-filters have such facility whereas the filters in the 
PCL sample Printer Application do not have this.

    Till
