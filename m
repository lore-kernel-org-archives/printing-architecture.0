Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=wMXtW7tyl0Kkl33Svd6N40e85OzYHGwPhK3k63qEXsw=;
 b=dax/KcQzlm0kqOsoIj/VHCxOTFkz/MsJXsqQlqrDkCH6YTfY89hR8kF10fHu0a/nNk
 wyX+25YtgRchBpbIW9MN5oZD8OO8fxhTa4JiDbt5vc/zoIOHMxnIkA+0UImpOvj9dXG2
 9pinPsSMNiJtr3NFGjehJztaUtBh2UYT2zdRpKtrrWud22Y1FmwHzW8iqd5Qypr/YMnt
 KXubGe7SGd2tIbrxo1mjWISVW6i65pARo+jlpgq65HtL64TNG75ox+a5RTsN6iIE9H2P
 36AVn8X5IJLa4bs9IiRU3vn6QYLL4V7hk++tb/fx0Z8rx3JA7wOaWdhX3lFIYfaaut0M
 Ubjg==
Message-ID: <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
Date: Sun, 15 May 2022 16:43:53 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
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

On 15/05/2022 15:53, Michael Sweet wrote:
> Till,
> 
> You need to set the "have_supplies" member of the pappl_pr_driver_data_t structure to 'true'.

Can I do this simply generally for all printers, regardless whether they 
actually support the reporting of supply levels via SNMP and then the 
ones which support it report the levels and with the others nothing bad 
will happen? Or do I need to somehow find out during printer setup 
whether the printer supports it or not? For example by some entry in the 
PPD or querying the printer somehow?

    Till
