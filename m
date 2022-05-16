Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=wlku8FAZxmvQ3IUEZBX20LG094RzNIwyr7XRgLddtZM=;
 b=FbnTU8QmT4KGQJZTyKrPk+g2BwQIoQ3VofN4jta9JRoWUzbMEJi/3JZzQUKlqqjDs/
 R5W/NntcOZW38nLxZIIW5B5OB/OmrdkRjHgg6HgDIyl5xQ1Uti4zxmU5AHeXW97hZSbk
 5ybrST9eM+Mud0LCWKE3NTdBWBSnAK2VteEEvC/lTSJtclGdC0HK+0k1gJ4HG1HshmDB
 CC2AauEnXM7uh1sDeBb+ALqRVxNif6PWoc1m1QzxHqomELK8/pULJLkE88F9EGUue6l/
 1LmunlYqtmhogo5wN0f+7tlVF9mMHvoTNMd06qYSRqjOwMqPITS6S91x8Axvqq9QbF8S
 gRaw==
Message-ID: <05b501f9-7737-dbc6-603f-1ef242446ef8@gmail.com>
Date: Mon, 16 May 2022 17:11:43 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <04994e7b-3400-0c73-9b6c-be63587775df@gmail.com>
 <7A3378E6-E927-483A-9CD6-7780226A2EF2@msweet.org>
 <099283be-d7a2-c81e-258a-3c90e89ab3ef@gmail.com>
 <A98D57DF-B7E9-4D8D-AEBA-061E1E6013A2@msweet.org>
 <7d62d52d-f7ac-5131-f51c-98a5ad286026@gmail.com>
 <B715B740-C6FA-48FC-8F95-3B92CAF273B7@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <B715B740-C6FA-48FC-8F95-3B92CAF273B7@msweet.org>
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

On 16/05/2022 16:35, Michael Sweet wrote:
> Till,
> 
> The status callback is called as needed, so you basically need to open the printer device, query, and set the supplies from the response.  Look at the "pcl_status" code in my hp-printer-app for a complete example:
> 
>      https://github.com/michaelrsweet/hp-printer-app
> 
> You don't need the "dummy" sample values I include in hp-printer-app (it is still mostly sample code, even if people are apparently using it :) - if you don't get a response, just don't set the supplies.
> 

Perfect, that is what I was looking for. I will apply it to 
pappl-retrofit soon.

Thank you very much.

    Till
