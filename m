Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mNvFyD2PzqT+6yJk675I19j0fWL0Ve7KrZkPH61rlYM=;
 b=X1q8PZqNqmv9sogzCI1yU+Pg9wbvJiN241TK9H7ZcOGN4ScjS0mhwqGgOBJD2E8BdZ
 2rKeeLMPf9rvc4fAbmfr7Nr5IR4bGTz8pbW/CBok53NUbxMPBMsMxCAvKCYcFu61KGVb
 6g0WnTCNOZ3KcrfGMiq69S2SsmulHE5X+eg+O0NleBr+dd33yypTm6Vk8h5oboiCUTyQ
 OqnXFtixEfe2Za7dn4EvfSaB+1qeSdMPmBKyBv/sHnlirSY5boP7ROYR/fJHb2Igoi78
 KPMuJsD/J98CyqIrfQ01mB/9T01eDDS8VqLs9XwjUXl9QnLl7t/zlP4btWNKUcCo2XKO
 vO5w==
Message-ID: <7d62d52d-f7ac-5131-f51c-98a5ad286026@gmail.com>
Date: Mon, 16 May 2022 09:05:22 +0200
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
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <A98D57DF-B7E9-4D8D-AEBA-061E1E6013A2@msweet.org>
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



On 16/05/2022 00:31, Michael Sweet wrote:
> Till,
> 
>> On May 15, 2022, at 5:47 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> The answers with the SNMP URI take some seconds, with the DNS-SD URI they are instantaneous.
> 
> That's to be expected - SNMP name resolution is slow... :/
> 
> Have you implemented the status callback or added a call to papplDeviceGetSupplies anywhere in ps-printer-app?
> 

I have a status callback, but without papplDeviceGetSupplies() call. How 
do I call it in this case. As only example I see the code for 
"--get-supplies" in testsuite/testpappl.c. But how does the array with 
the output make it into the web interface page?

    Till

