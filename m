Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=ybYhNgfNVG3ParNvRdplaS0C2mfxf3VA5g0mwdNwd9w=;
	b=hoWd4dsuSiRxYAwMFRNVTS24E1CHIBcHNECpun/SLrIWnsKLV+ULyyj4ShvFsw8eyP
	ksWRzU4YSavr5ctvS6kTkNJCfU1AlaxiKxOp53y+Bl+diPkLYzslUI4sIg7yrnSjFfG4
	goUMXlzacl/nvAmQk0HIqrRUlFITPoJmRsvAwxe+7B7tBaE/Fa32LpSS3t01MsA5/DJV
	wokzBl+XugmYKBFtBanMjXD50yAEOeD+0RSlOp73lFHeJasaH+nxghyuB6g+HjA0p47j
	l1uRYiVqBAoPB0YaORe4PP11HCJHTQI2sFcHbNbJV6di+uO5TMtvibIobj1UwzpRe80e
	GvaA==
Message-ID: <543E9E08.7080307@gmail.com>
Date: Wed, 15 Oct 2014 18:17:12 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
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
	<543E5168.9010108@thax.hardliners.org> <543E72C7.3090603@gmail.com>
In-Reply-To: <543E72C7.3090603@gmail.com>
Content-Type: multipart/mixed; boundary="------------080006050106000607060200"
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>, Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------080006050106000607060200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On 10/15/2014 03:12 PM, Till Kamppeter wrote:
> 2. setting ppd->jcl_ps=concat("...SET COPIES...\n",
> JCLToPDFInterpreter->value)
> 

I tried this route and got it to actually work with the attached patch.
I have also taken into account to not duplicate "SET COPIES=..." if the
PPD has a "Copies" option (but a ΅Copies" option is not recommended in
the PPD as it is confusing and now not needed any more). The patch is
rather simple.

Please try it out and see whether it works on your printer. If your PPD
has a "Copies" option, try removing it.

And anyone reading this, please tell whether the patch is OK or can
cause problems in certain situations.

   Till


--------------080006050106000607060200
Content-Type: text/x-patch;
 name="pdftopdf-pjl-copies.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pdftopdf-pjl-copies.patch"

=== modified file 'filter/pdftopdf/pdftopdf_jcl.cc'
--- filter/pdftopdf/pdftopdf_jcl.cc	2012-10-18 17:03:24 +0000
+++ filter/pdftopdf/pdftopdf_jcl.cc	2014-10-15 15:58:54 +0000
@@ -135,8 +135,20 @@
        ppdEmitJCL() actually adds JCL based on the presence on 
        "*JCLToPDFInterpreter:". */
     ppd_attr_t *attr;
+    char buf[1024];
+    snprintf(buf,sizeof(buf),"%d",param.deviceCopies);
     if ( (attr=ppdFindAttr(ppd,"JCLToPDFInterpreter",NULL)) != NULL) {
-      ppd->jcl_ps=strdup(attr->value);
+      if (param.deviceCopies > 1) {
+	if (ppdFindOption(ppd,"Copies") != NULL) {
+	  ppdMarkOption(ppd,"Copies",buf);
+	  ppd->jcl_ps=strdup(attr->value);
+	} else {
+	  snprintf(buf, sizeof(buf), "@PJL SET COPIES=%d<0A>%s",
+		   param.deviceCopies, attr->value);
+	  ppd->jcl_ps = buf;
+	}
+      } else
+	ppd->jcl_ps=strdup(attr->value);
       ppd_decode(ppd->jcl_ps);
     } else {
       ppd->jcl_ps=NULL;


--------------080006050106000607060200--
