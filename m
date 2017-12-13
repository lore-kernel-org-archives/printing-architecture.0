Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=G2Hv1eQgJ1S0xnujGQRpRYnyybPcQHt2vKqsV21QuGc=;
	b=OwvSUGOnqmVqoNsxsPHu0wcvNCX1hYanKRFLRv2oL0gOvM5gT8FLAM1CUkwAXvJ/q/
	n+EBpozl96TOXI8P7p/Eep0O0LOHJDnCNg5yDr5sy7DfYJ4FKOLYiBkKMghAWPjK+Ubc
	is++9R7qEjuCVAa2GaiwER2cQaApmS5l52YwAAp+S5k+PYJ4BtIns9b8HrtG8BXQkeUi
	yUU1zW08f1eYaLBua/t+AnnLTPfbLKlMwVsCF6HaY6cepcjOYdrYQjoYDCnXbRZCuQ1T
	cWIqfyD+p7x7FymNZ9brsg/8jKAOq6Csy6FMuHwvEn7x2ilfdQKvMV1Zo7JzYEINJpcw
	R66Q==
Message-ID: <1513189960.2462.29.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 13 Dec 2017 19:32:40 +0100
In-Reply-To: <E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
References: <1404294158.28244.1.camel@pascal.home.net>
	<1513184881.2462.20.camel@obry.net>
	<E8206D91-E58D-426A-A666-2186AD8C3047@apple.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS and PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hello Michael,

Thanks for the quick response!

> You can also
> look for the supported "media-type" values with the
> cupsDestFindSupported function, in order to specify it separately.

That's why I was looking for :)

Still a little issue. With the following code:

        ipp_attribute_t *attr = cupsFindDestSupported(hcon, dest, info, "media-type");

        if (attr)
        {
          for (int k=0; k<ippGetCount(attr); k++)
          {
            printf ("   %s\n", ippGetString(attr, k, NULL));

I can list the supported paper, but as code:

   stationery
   epson-inkjet-paper--5
   epson-matte-heavy-archival--5
   fineart-paper-smooth--5
   epson-photo-glossy--5
   epson-premium-glossy-luster--5
   epson-proof-satin--5
   transparency
   kodak-premium--5
   ilford-omnijet--5
   fuji-premium-photo--5
   tetenal-photo-quality-glossy-matte--5
   custom-1002--5

The last one is in fact "Canson Infinity Baryta". How can I retrieve
this human readable name?

Thanks,

-- 
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B
