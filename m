Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=Us1WglWcnc/1AWplhN4jifCrLOfpVvJE5lKAWntgibA=;
	b=CujXn8SfweIqRwFOkAwOFWaAe0ZkVpIwShSjZF1rcXQ2shkGmLfh7n/KNDNosckYLm
	+1P0qoC3GN+XVS9kZaoUdmpuPpi0F8rHbBoaLNOAsUK8+nkZZ9LdkMO9KjAJ4CE19wQA
	sQekeWuFD1fas3J660PkeYuaC4DzvpTbAwaLndYIa/kSdqUZtaOyqQ7Ooid2BFVnZoGD
	sf9ibo5gw0p1+2uhMgu9so3cv8txVJUgTpxZslyK2ZBLQV/gUhMrhODVxA0AQ6ibBBEC
	/pfPGGgvGAbFBSYdZ2034QN5QVEYF0ytzdtU3aD/Dezi8o2BzeoEfaXHPVv7d2oyDTmp
	bW3g==
References: <CA+3RNfhXqAg06GPPO5w2B2Fv6qMQ5BcfZ+cehUC7mq2sE09zNQ@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <220033f5-fbd2-80e7-c25e-369f6f0ad905@gmail.com>
Date: Thu, 15 Nov 2018 19:08:41 +0100
MIME-Version: 1.0
In-Reply-To: <CA+3RNfhXqAg06GPPO5w2B2Fv6qMQ5BcfZ+cehUC7mq2sE09zNQ@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Default IPP queue name on printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On 15/11/2018 16:19, Alex Korobkin wrote:
> Hi all,
> 
> Do you know what is the default or most common name of the ipp queue for 
> most popular manufacturers? (abs_path in 
> https://tools.ietf.org/html/rfc3510 terminology).
> 
> I'm talking about the last part in the URI: 
> ipp://printer-name:631//queue_name/  <-- this one.
> 
> Looks like it's /ipp or /printer for Ricoh, /ipp/port1 for HP, /ipp for 
> Xerox.
> Does anyone know which one is most commonly used?

Is it not more or less standard to use /ipp/print ?

    Till
