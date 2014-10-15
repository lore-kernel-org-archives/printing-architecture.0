Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <543E9F5F.8090106@thax.hardliners.org>
Date: Wed, 15 Oct 2014 18:22:55 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
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
Content-Type: multipart/mixed; boundary="------------030704090805050702070703"
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------030704090805050702070703
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/14 15:12, Till Kamppeter wrote:
> b) patch cups, namely ppdEmitJCL() in emit.c.
>    As cups does detect PCL as JCL here and sets "JOB NAME", "DISPLAY" or
> "RDYMSG DISPLAY" that would be the best place to add PJL SET COPIES.
>    But this will affect all PPDs with JCL, e.g. when pure PostScript is
> used... and, in case the patch is not accepted upstream, cups-filters
> has to ship it(?)
>
> I will not ship patches for CUPS in the cups-filters upstream package.
> You could post an upstream bug report/feature request on CUPS
> (http://www.cups.org/str.php) to let the ppdEmitJCL() function add "PJL
> SET COPIES=X" with the number of copies taken from the command line
> arguments (4th argument, see "man filter").

Patching upstream would unfortunately require changing the function 
signature of ppdEmitJCL() -- or adding a new ppdEmitJCL2 function. And 
that would be for a deprecated API...

> We must look into whether we
> should generally add "PJL SET COPIES=X", or only under certain
> conditions (is another copy generation method supposed to be used?
> Should we have some PPD keyword to turn it on or off?).

I don't know...?

>
>> c) do not use ppdEmitJCL at all. We would loose e.g. JOB NAME, but have
>> better control over the output...
> Do you mean using the not very elegant method to copy the code of the
> function into cups-filters and modify it there?

Simply put ... yes.


> 2. setting ppd->jcl_ps=concat("...SET COPIES...\n",
> JCLToPDFInterpreter->value)
Attached a (untested) first patch to pdftopdf:
param.deviceCopies will always be 1 for ppd->manual_copies, so SET 
COPIES is only inserted when *cupsManualCopies is not set and more than 
1 copy is requested.

Please review.

> Also make the above-mentioned feature request for CUPS to discuss the
> SET COPIES in the ppdEmitJCL() of CUPS.
>
See my comment above.

   Tobias


--------------030704090805050702070703
Content-Type: text/x-patch;
 name="pjlcopies-v1.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pjlcopies-v1.patch"

--- filter/pdftopdf/pdftopdf_jcl.cc	2012-10-18 17:03:24 +0000
+++ filter/pdftopdf/pdftopdf_jcl.cc	2014-10-15 16:01:41 +0000
@@ -128,6 +128,8 @@
   ppdEmit(ppd,stdout,PPD_ORDER_EXIT);
 
   if (param.emitJCL) {
+     char *old_jcl_ps = ppd->jcl_ps;
+
     /* pdftopdf only adds JCL to the job if the printer is a native PDF
        printer and the PPD is for this mode, having the "*JCLToPDFInterpreter:"
        keyword. We need to read this keyword manually from the PPD and replace
@@ -136,13 +138,23 @@
        "*JCLToPDFInterpreter:". */
     ppd_attr_t *attr;
     if ( (attr=ppdFindAttr(ppd,"JCLToPDFInterpreter",NULL)) != NULL) {
-      ppd->jcl_ps=strdup(attr->value);
-      ppd_decode(ppd->jcl_ps);
+      if ( (param.deviceCopies>1)&&(strncmp(ppd->jcl_begin, "\033%-12345X@", 10)==0) ) { // PJL
+        const size_t size=strlen(attr->value)+1+30;
+        ppd->jcl_ps=(char *)malloc(size*sizeof(char));
+        snprintf(ppd->jcl_ps, size, "@PJL SET COPIES=%d\n%s",param.deviceCopies,attr->value);
+        ppd_decode(ppd->jcl_ps); // will not change SET COPIES
+      } else {
+        ppd->jcl_ps=strdup(attr->value);
+        ppd_decode(ppd->jcl_ps);
+      }
     } else {
       ppd->jcl_ps=NULL;
     }
     ppdEmitJCL(ppd,stdout,param.jobId,param.user,param.title);
     emitJCLOptions(stdout,ppd,param.deviceCopies);
+
+    free(ppd->jcl_ps);
+    ppd->jcl_ps = old_jcl_ps; // cups uses pool allocator, not free()
   }
 }
 // }}}


--------------030704090805050702070703--
