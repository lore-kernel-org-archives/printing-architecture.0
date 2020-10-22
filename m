Return-Path: <pzz@apevzner.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CU4HJ4tZReTEvWUAsB5ZQWKrJGPT2g5iqjmBXNbFcsw=;
 b=uqatZ/Y8gOJoJ2xEwF4aDOAUIMbbp4c2msVVYBUKEsXyUAlQYJLb7xqnf01GdsbQyC
 gsc3Jl8OMnvcOl5xTlu6EPo1R3RAUA+sSWe//+sz1pXHpWLNnm9bqfxgyfj0WnILZBtQ
 uPQn6/YhdmcqIaKhjWMo9S+T5wG6yEH5I8j+lnxjuXlRQlfDj2d97tAF+2HxdnYaEcRI
 PHRTuK34gOimHEe1DBdCjwStIJiFPjgJVtmMKebmc1Z5aM31bhbPMqrEdrA8siVo1suw
 7lv/fzYH0BIieMsFS3dubRr3iBrnhHJ9bHynvQxF9raxIGRTXFmX4FQXu1pUVc07+QWL
 /DKQ==
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
 <9e45b8ca-0bde-12bb-5555-e469bdd27852@apevzner.com>
 <35F1D87E-67D6-424E-AD36-7F8C035A69E1@msweet.org>
From: Alexander Pevzner <pzz@apevzner.com>
Message-ID: <46318bff-36e7-fcf4-19de-d5ed75fcac35@apevzner.com>
Date: Fri, 23 Oct 2020 00:39:37 +0300
MIME-Version: 1.0
In-Reply-To: <35F1D87E-67D6-424E-AD36-7F8C035A69E1@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Michael.

On 10/22/20 11:33 PM, Michael Sweet wrote:
> Validate-Job is a necessary step in some managed/paid printing configurations - you'll get back a per-job authorization code that need to be used with Print-Job.
> 
> It is also a recommended step in both IPP Implementor's Guides...

Thank you for the explanation. And yet another question, what will CUPS 
do, if printer doesn't understand Expect: 100-continue header?

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
