Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E88BD40360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDC3940018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701988540; x=1702593340;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=UutH5vB1YwImKx3sIBJqquCY2mfMZ0i98lrmt5GspfI=;
 b=R1Co05I/Xbu2iJ0kj5GKaQYwb7KEPBeQwLWnxZBRdS+E3EUAjuEP6dphjmYRxyldMJ
 WWkBsLpKRWb288To+QOzKSG+orVU3TQT/vr2OuqXfQd4kVkdOacDOyQ9pV5ZN/TTvq8H
 sxUeKrEHZdpGP2eC3v1/rwAzrm00RHHYggXKnyWHj+ZQXfO2jRbqJzz0KFv0eNQKCtMq
 itfhqAoA5Fc1VtKFUpmNHOaxVTDipwE6HdiRCHvHCg9hUM1HUrKIs7kBt9gWZdBW2Tor
 SGrBdyQJAcRKYx4zgJeazrybAh59h3Ce6BabhIwHxrkLPxhoSNDf1gz+mmWZYNeBAs2q
 yoAw==
Message-ID: <65285345-9b51-406e-8387-2ccf874023b2@gmail.com>
Date: Thu, 7 Dec 2023 23:35:39 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
 <C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
	libcupsfilters as GSoC project?
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

On 07/12/2023 18:38, Michael Sweet wrote:
> 
> It is entirely possible.  The ipptransform program (part of the libcups 
> project) shows how to do this, but it is really only necessary if you 
> are doing N-up or other combinations of multiple pages from the input 
> document.  If all you do is copy pages as-is then pdfioPageCopy will 
> handle copying all of the annotations referenced by the Annots key in 
> the page dictionary.
> 

And will pdfioPageCopy() also be enough if I still put a single input 
page onto the output page but scale and/or crop the page? Will the 
annotations or filled in content also be appropriately scaled, moved, 
and cropped?

> (ipptransform needs to be updated to copy/merge the Annots values, and I 
> filed issue #71 in the libcups project to track that change...)

So this issue is for solving the above on the level of ipptransform? 
Would it be then not better to have it in PDFio so that it gets re-used 
in libcupsfilters?

    Till
