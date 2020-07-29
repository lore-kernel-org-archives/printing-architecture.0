Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=o8tIaVM9PJi445uJc4hsMmQeVS8Jr+AEz1CVZqfIbf0=;
 b=BuFcfZwCa0ecQxAAEA8NDJWR5GDO7SZg6NrP+inukbO85nPNErDzmu+TtzoQESTkKJ
 VjdLJ/klZNEmOL4RWjJwcjqET7KKX1XNTiwzja4KaoPvzZj4fbAfP3J8/0usDWvwGFrD
 XYZ9odckmFpzDW+Z192R8q1yGk7pLicgzjazoExwQADLyodovSmkVljAqol1fRPkWoAl
 P996ZaX3LVxm31lkqpl+flfkkCYGEKQfTRT3BZSt7UVIang5IWirwVtIpa7eg7cejhGa
 i5FLEPg9k49TKUfb4sZvcaA+ZPITmIrwGYVAl5BbgwnJbf0R53retSQh6D+jtGnh+wt6
 tXmg==
References: <09070443-4d49-f477-5b29-cd9cc785f4aa@gmail.com>
 <1DC62161-5712-4FEB-B249-4C11F5834539@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <d362974b-a7f0-d023-e076-57f8cc684b61@gmail.com>
Date: Wed, 29 Jul 2020 21:41:31 +0200
MIME-Version: 1.0
In-Reply-To: <1DC62161-5712-4FEB-B249-4C11F5834539@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Canceling jobs in Printer Applications
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 29/07/2020 21:28, Michael Sweet wrote:
> 
> So it is up to the PAPPL filter functions to check the papplJobIsCanceled value and clean up accordingly.  In the case of the JPEG and PNG filters, we'll stop mid-page as needed courtesy of the papplJobFilterImage function, which they both call to handle the actual conversion of the source image to the destination color space...
> 
> Similarly, the PWG/Apple raster processing path will cancel mid-page.
> 

Thank you very much, I will take this into account in my filter function 
design.

    Till
