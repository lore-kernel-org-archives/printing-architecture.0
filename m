Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=78plhnQ670URx86gOzCbyVBWoTyHxaE2+Q5d+l2YqnM=;
	b=s6IHyWluAtdXnDEI8KISzYd8f8qEL0hu+Sy3LlvCPMnMZ96ZoCBmV4+hCjXt3hWbI3
	2IsfW36FgOF4lNTwk9nyCzIp4lJBGtGpsfOuy9JidaS8bUSvwQTC5lQZGtkncsZHuGq7
	gmmCIECz17TLc3PQWyGsPAH9CYqkdv1ukKG+eyn8qxUW06dpUNb/acgQKp+PeNKJN2hp
	tKTV5WaYskZnpYi5IR7SzJVxJxbsOV1vrn/rYYFeZZTLMg+Bd9hXKsHH3q/rkA+TvZJx
	L6wGwI++foKwv3og2g6FuZayDpQjOdeJ+u2E85QSxtkZ0MxAlw4ZUPK4W/dx/e3MDVqK
	tkSg==
Message-ID: <544570E2.9060405@gmail.com>
Date: Mon, 20 Oct 2014 22:30:26 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
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
	<5441466D.8070003@gmail.com>
	<CA+3RNfiGm6R0SL_VsBoLsocfL-AXQrbxw1zR98HWtBcBFygxGQ@mail.gmail.com>
	<5445384E.6030405@gmail.com>
	<CA+3RNfgLSifDG6sW1x=1yL=hveJ_=mrkVz6Qmf-VdXbkTtXCTg@mail.gmail.com>
In-Reply-To: <CA+3RNfgLSifDG6sW1x=1yL=hveJ_=mrkVz6Qmf-VdXbkTtXCTg@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------050602060809030006040907"
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
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------050602060809030006040907
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

imagetopdf pushed as rev. 7301 to the BZR (patch also attached). Please
test.

   Till

On 10/20/2014 07:28 PM, Alex Korobkin wrote:
> Yes, pdftopdf works nicely!
> 
> 2014-10-20 12:29 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com
> <mailto:till.kamppeter@gmail.com>>:
> 
>     On 10/20/2014 06:23 PM, Alex Korobkin wrote:
>     > Thanks Till.
>     > Will the same patch be added to imagetopdf?
>     >
> 
>     If this is all working for you now I will also add it to imagetopdf.
> 
>        Till
> 
> 
> 
> 
> -- 
> -Alex


--------------050602060809030006040907
Content-Type: text/x-patch;
 name="imagetopdf-jcl-copies.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="imagetopdf-jcl-copies.patch"

=== modified file 'filter/imagetopdf.c'
--- filter/imagetopdf.c	2012-04-04 17:49:42 +0000
+++ filter/imagetopdf.c	2014-10-20 20:26:28 +0000
@@ -1392,9 +1392,39 @@
        the content of ppd->jcl_ps by the value of this keyword, so that
        ppdEmitJCL() actalually adds JCL based on the presence on 
        "*JCLToPDFInterpreter:". */
+    ppd_attr_t *attr;
+    char buf[1024];
+    int devicecopies_done = 0;
+    char *old_jcl_ps = ppd->jcl_ps;
+    /* If there is a "Copies" option in the PPD file, assure that hardware
+       copies are implemented as described by this option */
+    if (ppdFindOption(ppd,"Copies") != NULL && deviceCopies > 1)
+    {
+      snprintf(buf,sizeof(buf),"%d",deviceCopies);
+      ppdMarkOption(ppd,"Copies",buf);
+      devicecopies_done = 1;
+    }
     if ((attr = ppdFindAttr(ppd,"JCLToPDFInterpreter",NULL)) != NULL)
     {
-      ppd->jcl_ps = strdup(attr->value);
+      if (deviceCopies > 1 && devicecopies_done == 0 && /* HW copies */
+	  strncmp(ppd->jcl_begin, "\033%-12345X@", 10) == 0) /* PJL */
+      {
+	/* Add a PJL command to implement the hardware copies */
+        const size_t size = strlen(attr->value) + 1 + 30;
+        ppd->jcl_ps = (char *)malloc(size * sizeof(char));
+        if (deviceCollate)
+	{
+          snprintf(ppd->jcl_ps, size, "@PJL SET QTY=%d\n%s",
+                   deviceCopies, attr->value);
+        }
+	else
+	{
+          snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",
+                   deviceCopies, attr->value);
+        }
+      } 
+      else
+	ppd->jcl_ps = strdup(attr->value);
       ppd_decode(ppd->jcl_ps);
       pdf_printer = 1;
     } 
@@ -1405,6 +1435,8 @@
     }
     ppdEmitJCL(ppd, stdout, atoi(argv[1]), argv[2], argv[3]);
     emitJCLOptions(stdout,deviceCopies);
+    free(ppd->jcl_ps);
+    ppd->jcl_ps = old_jcl_ps; /* cups uses pool allocator, not free() */
   }
 
  /*


--------------050602060809030006040907--
