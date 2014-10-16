Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <544031BA.502@thax.hardliners.org>
Date: Thu, 16 Oct 2014 22:59:38 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
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
In-Reply-To: <CA+3RNfiZRC5yh_shoCvKOCtz54kTXhL3zL8XCfHXMOXECx6qqw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------080801080405050801080307"
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

This is a multi-part message in MIME format.
--------------080801080405050801080307
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/10/14 18:52, Alex Korobkin wrote:
> Turns out, there should be one additional line for collate to work 
> with multiple copies and multiple pages:
> PJL SET QTY=X
>
> Could you please modify your patch to generate two lines at once: PJL 
> SET COPIES=X and PJL SET QTY=X?
The attached patch does that. It's based on BZR rev. 7299, which already 
includes the SET COPIES modifications (Till also posted the 
corresponding .patch, earlier).

I did some research, though... and it seem that (only) "SET COPIES" 
should be used for non-collated and only(!) "SET QTY" should be used for 
collated duplicates.
Please do try whether just SET QTY is enough:
           if (param.deviceCollate) {
             snprintf(ppd->jcl_ps, size, "@PJL SET QTY=%d\n%s",
                    param.deviceCopies, attr->value);
          } else {
          [...]

   Tobias




--------------080801080405050801080307
Content-Type: text/x-patch;
 name="pjlcollate-v1.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pjlcollate-v1.patch"

--- filter/pdftopdf/pdftopdf_jcl.cc	2014-10-16 15:48:05 +0000
+++ filter/pdftopdf/pdftopdf_jcl.cc	2014-10-16 20:45:01 +0000
@@ -150,10 +150,15 @@
       if (param.deviceCopies > 1 && devicecopies_done == 0 && // HW copies
 	  strncmp(ppd->jcl_begin, "\033%-12345X@", 10) == 0) { // PJL
 	/* Add a PJL command to implement the hardware copies */
-        const size_t size=strlen(attr->value)+1+30;
+        const size_t size=strlen(attr->value)+1+60;
         ppd->jcl_ps=(char *)malloc(size*sizeof(char));
-        snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",
-		 param.deviceCopies, attr->value);
+        if (param.deviceCollate) {
+          snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n@PJL SET QTY=%d\n%s",
+                   param.deviceCopies, param.deviceCopies, attr->value);
+        } else {
+          snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",
+                   param.deviceCopies, attr->value);
+        }
       } else
 	ppd->jcl_ps=strdup(attr->value);
       ppd_decode(ppd->jcl_ps);


--------------080801080405050801080307--
