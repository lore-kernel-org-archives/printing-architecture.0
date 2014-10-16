Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=+KAmD+eGaQmaH1YBFCN8TxoWuuZBzGsVl7OHKaILIKQ=;
	b=i4nh3O1/s09UG+0o6ljDWW/lTofSjtjzxQvw3TVb+d201/sm6bRok50ULdCmyo93/M
	hxR9ziRyLr/LhPUTIdDGm9gCKDOcM2dwCNRU1YVc/HUiTt3HnkiRQxk2b5T8c/HwjYyR
	27/9BRiWvrPwL/9f+pxGZULiw0Wo0bIrgUNg7NLbXevtr2cWKJX4kcxod/bMFsEsfKam
	zJ7yyJHOer6w4PzMUcZ/t9bTNykUrP7xygoG1fmBa2Enhys2BovrM3PCVBrJz7/2pLwf
	zp0Bszysy9nCiHEwMQTN9TSGbxQrgcZnjGGXoHboZVXLFhz1XW18RElpY3I3CfX/qQPN
	MF/g==
Message-ID: <543FEA14.6060509@gmail.com>
Date: Thu, 16 Oct 2014 17:53:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>	<5432910A.4030500@gmail.com>	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>	<54344707.4080604@gmail.com>	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>	<54345EF9.5010405@thax.hardliners.org>
	<54350A8E.1010406@gmail.com>	<54354CDA.50401@thax.hardliners.org>	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>	<5435A44F.7080504@thax.hardliners.org>	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>	<54383C34.6020108@thax.hardliners.org>
	<5438486E.9050201@gmail.com>	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>	<543D9108.6050307@thax.hardliners.org>	<543E5168.9010108@thax.hardliners.org>	<543E72C7.3090603@gmail.com>
	<543E9E08.7080307@gmail.com> <543ECACE.7080108@thax.hardliners.org>
In-Reply-To: <543ECACE.7080108@thax.hardliners.org>
Content-Type: multipart/mixed; boundary="------------060803090901040003060308"
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------060803090901040003060308
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Thanks, Tobias, I have now merged the functionality of our patches and
pushed it into the BZR (rev. 7299). It is basically your patch with
support for the "Copies" option added.

   Till

On 10/15/2014 09:28 PM, Tobias Hoffmann wrote:
> On 15/10/14 18:17, Till Kamppeter wrote:
>> And anyone reading this, please tell whether the patch is OK or can
>> cause problems in certain situations.
> 
> One more thing I forgot:
> In case imagetopdf is called as the last filter, and pdftopdf is not
> used, it will have to be patched, too.
> (imagetops containes explicit code for hardware copies in PS, because it
> could be the last filter -- not sure if that's still the case for PDF).
> 
> And a minor correction to my earlier mail:
>> 2) will only insert @PCL SET COPIES, when jcl_begin uses the known PJL
>> begin sequence (copied from what pstops does wrt. to PCL). 
> To be more precise: Copied from cups/emit.c (which is what pstops uses).
> 
>   Tobias
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture


--------------060803090901040003060308
Content-Type: text/x-patch;
 name="pdftopdf-pjl-copies-2.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pdftopdf-pjl-copies-2.patch"

=== modified file 'filter/pdftopdf/pdftopdf_jcl.cc'
--- filter/pdftopdf/pdftopdf_jcl.cc	2012-10-18 17:03:24 +0000
+++ filter/pdftopdf/pdftopdf_jcl.cc	2014-10-16 15:37:37 +0000
@@ -135,14 +135,35 @@
        ppdEmitJCL() actually adds JCL based on the presence on 
        "*JCLToPDFInterpreter:". */
     ppd_attr_t *attr;
+    char buf[1024];
+    int devicecopies_done = 0;
+    char *old_jcl_ps = ppd->jcl_ps;
+    /* If there is a "Copies" option in the PPD file, assure that hardware
+       copies are implemented as described by this option */
+    if (ppdFindOption(ppd,"Copies") != NULL &&
+	param.deviceCopies > 1) {
+      snprintf(buf,sizeof(buf),"%d",param.deviceCopies);
+      ppdMarkOption(ppd,"Copies",buf);
+      devicecopies_done = 1;
+    }
     if ( (attr=ppdFindAttr(ppd,"JCLToPDFInterpreter",NULL)) != NULL) {
-      ppd->jcl_ps=strdup(attr->value);
+      if (param.deviceCopies > 1 && devicecopies_done == 0 && // HW copies
+	  strncmp(ppd->jcl_begin, "\033%-12345X@", 10) == 0) { // PJL
+	/* Add a PJL command to implement the hardware copies */
+        const size_t size=strlen(attr->value)+1+30;
+        ppd->jcl_ps=(char *)malloc(size*sizeof(char));
+        snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",
+		 param.deviceCopies, attr->value);
+      } else
+	ppd->jcl_ps=strdup(attr->value);
       ppd_decode(ppd->jcl_ps);
     } else {
       ppd->jcl_ps=NULL;
     }
     ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);
     emitJCLOptions(stdout,ppd,param.deviceCopies);
+    free(ppd->jcl_ps);
+    ppd->jcl_ps = old_jcl_ps; // cups uses pool allocator, not free()
   }
 }
 // }}}


--------------060803090901040003060308--
