Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VJOMuOM8VEsNuS+xXki7DhRBHL8bR9JXmIH9vXX8T3c=;
 b=l7q3MCFh5NLjpnFwBFrBVnB8NM83ntkpXnJlGf6GQ/Wn4wImu2jK8bp3T1lUbzvxcC
 HC/1BCTc4hWhXtdtpwTqC5eT7Ck3KM1UAAbWXZ2bYN0w0o13X7UHdqalcLiJydQtAx6D
 Wz0wKZc6IeWUD11gnuMe4DdHCHAdOc3GN4N22QbF2nRYohv0XOxYkgBhxWkAJX4M/EVR
 QTFBnZecsBQ8Y1vfBYa5oStgKf+J6LjrwqEIOG6DHd4NjsoUw7iVuKHbC1i6X/Ug3b2G
 7W9dTCXY6bar5ki1eC4dRM1rVqkYCmhir8iXZOi8K9EfRyNWLVcbDDHNy9L87AJ4fGsc
 wMaQ==
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <41b2f187-6da3-60bd-8d5b-6dc7969e6c5a@gmail.com>
Date: Tue, 27 Apr 2021 20:10:56 +0200
MIME-Version: 1.0
In-Reply-To: <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Human-readable strings for standard IPP
 options/choices/attributes/propertirs
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

Thank you very much. Then I am going into the right direction with 
cups-filters.

    Till

On 27/04/2021 20:02, Michael Sweet wrote:
> Till,
> 
> The CUPS repository already contains a nearly-complete set of these, and they came from the IPP Registry project's exported strings from the IANA IPP registry.
> 
>      https://github.com/OpenPrinting/cups/tree/master/locale
>      https://github.com/istopwg/ippregistry/tree/master/localizations
> 
> The PWG maintains a copy of the English strings (I've tried a few times to get localizations for other languages without much success) on their FTP server (also served by HTTP/HTTPS):
> 
>      https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.pot
>      https://ftp.pwg.org/pub/pwg/ipp/examples/ipp.strings
