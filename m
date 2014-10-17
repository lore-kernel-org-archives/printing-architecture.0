Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=/Mdf9hIqQgrZFcsstIqPgzez9elI7QwiHgSWqZa7b1g=;
	b=uF8aT667+5Cb4zyALgJdJ4ED62RrWu1DDCw+5BmzSf4FfeudLk6Rj6o7S7DEiJOxsC
	BgVluPP0j3mblF8X+gkEjtfzm9YNK9hEjjomdNCpmMYDUex5U2FEx6I8lenmIg3ObcXB
	9y7pTQ8kP86/Mt6Muqr74vqjnJsJjEKclmcS54ckhD9DbVa+mA+CDoj3npyMmDtvzxnM
	uNlTF6DYIUxAMfMxv80rZR6LN9FpIHzAtlBi2OfAKaTApotAOt7PmpsZWMMKA/XEd8QR
	zmxmrY5o0Ji9zX4Ut6vYRkioDM6mzT27d1kzforjT+nE37dW4jsUvmnGNd1mKLNkUNTU
	3PXQ==
Message-ID: <5441466D.8070003@gmail.com>
Date: Fri, 17 Oct 2014 18:40:13 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
	<543D9108.6050307@thax.hardliners.org>
	<543E5168.9010108@thax.hardliners.org>
	<543E72C7.3090603@gmail.com> <543E9E08.7080307@gmail.com>
	<543ECACE.7080108@thax.hardliners.org>
	<CA+3RNfiZRC5yh_shoCvKOCtz54kTXhL3zL8XCfHXMOXECx6qqw@mail.gmail.com>
	<544031BA.502@thax.hardliners.org>
	<CA+3RNfic7_2J2DZ9TKZWKAK_CEGQfiTQ7k1sMFoL23YCsyKHzQ@mail.gmail.com>
In-Reply-To: <CA+3RNfic7_2J2DZ9TKZWKAK_CEGQfiTQ7k1sMFoL23YCsyKHzQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------090102070800070109040804"
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>, Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------090102070800070109040804
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Thank you very much.

Pushed the attached additional patch to the BZR repo (rev. 7300).

   Till

On 10/17/2014 06:22 PM, Alex Korobkin wrote:
> Works beautifully, thank you. And thanks for digging up the exact rules
> of QTY and COPIES application. 
> 
> 
> 2014-10-16 16:59 GMT-04:00 Tobias Hoffmann
> <lprint-list@thax.hardliners.org <mailto:lprint-list@thax.hardliners.org>>:
> 
>     On 16/10/14 18:52, Alex Korobkin wrote:
> 
>         Turns out, there should be one additional line for collate to
>         work with multiple copies and multiple pages:
>         PJL SET QTY=X
> 
>         Could you please modify your patch to generate two lines at
>         once: PJL SET COPIES=X and PJL SET QTY=X?
> 
>     The attached patch does that. It's based on BZR rev. 7299, which
>     already includes the SET COPIES modifications (Till also posted the
>     corresponding .patch, earlier).
> 
>     I did some research, though... and it seem that (only) "SET COPIES"
>     should be used for non-collated and only(!) "SET QTY" should be used
>     for collated duplicates.
>     Please do try whether just SET QTY is enough:
>               if (param.deviceCollate) {
>                 snprintf(ppd->jcl_ps, size, "@PJL SET QTY=%d\n%s",
>                        param.deviceCopies, attr->value);
>              } else {
>              [...]
> 
>       Tobias
> 
> 
> 
> 
> 
> 
> -- 
> -Alex


--------------090102070800070109040804
Content-Type: text/x-patch;
 name="pjlcollate-v2.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pjlcollate-v2.patch"

=== modified file 'filter/pdftopdf/pdftopdf_jcl.cc'
--- filter/pdftopdf/pdftopdf_jcl.cc	2014-10-16 15:48:05 +0000
+++ filter/pdftopdf/pdftopdf_jcl.cc	2014-10-17 16:37:10 +0000
@@ -152,8 +152,13 @@
 	/* Add a PJL command to implement the hardware copies */
         const size_t size=strlen(attr->value)+1+30;
         ppd->jcl_ps=(char *)malloc(size*sizeof(char));
-        snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",
-		 param.deviceCopies, attr->value);
+        if (param.deviceCollate) {
+          snprintf(ppd->jcl_ps, size, "@PJL SET QTY=%d\n%s",
+                   param.deviceCopies, attr->value);
+        } else {
+          snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",
+                   param.deviceCopies, attr->value);
+        }
       } else
 	ppd->jcl_ps=strdup(attr->value);
       ppd_decode(ppd->jcl_ps);


--------------090102070800070109040804--
