Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sat, 4 Mar 2017 22:13:16 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170304211316.ja5eyuv3733qadyo@var.youpi.perso.aquilenet.fr>
References: <20170226185712.jzs2ohpyvugl3dve@var.youpi.perso.aquilenet.fr>
	<20170227230811.iyzvbno6qjizmwgq@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3dguy4lt2gafgduv"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170227230811.iyzvbno6qjizmwgq@var.youpi.perso.aquilenet.fr>
Subject: Re: [Printing-architecture] Complete table list for braille
	embosser support
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


--3dguy4lt2gafgduv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

It seems the encoding of the patch wasn't correct (unfortunately I had
set my mailer to use latin1 whenever that's enough, I have now disabled
that).

The attached patch fixes the encoding of
filter/braille/filters/liblouis1.defs.gen.in

Samuel

--3dguy4lt2gafgduv
Content-Type: text/plain; charset="utf-8"
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: 8bit

=== modified file 'filter/braille/filters/liblouis1.defs.gen.in'
--- filter/braille/filters/liblouis1.defs.gen.in	2017-03-03 22:08:47 +0000
+++ filter/braille/filters/liblouis1.defs.gen.in	2017-03-04 21:09:58 +0000
@@ -110,9 +110,9 @@ echo '  Choice "Locale-g3/Default for la
       "fi-fi-8dot")	LANGUAGE=Finnish DESC="8dot" ;;
       "fi-fi")		LANGUAGE=Finnish DESC="6dot" ;;
       "fr-2007")	LANGUAGE=French DESC="2007" ;;
-      "fr-bfu-comp6")	LANGUAGE=French DESC="Braille Fran�ais Unifi� computer 6 dots" ;;
-      "fr-bfu-comp8")	LANGUAGE=French DESC="Braille Fran�ais Unifi� computer 8 dots" ;;
-      "fr-bfu-g2")	LANGUAGE=French DESC="Braille Fran�ais Unifi� grade 2" ;;
+      "fr-bfu-comp6")	LANGUAGE=French DESC="Braille Français Unifié computer 6 dots" ;;
+      "fr-bfu-comp8")	LANGUAGE=French DESC="Braille Français Unifié computer 8 dots" ;;
+      "fr-bfu-g2")	LANGUAGE=French DESC="Braille Français Unifié grade 2" ;;
       "fr-ca-g1")	LANGUAGE=French LOCATION=Canada DESC="grade 1" ;;
       "Fr-Ca-g2")	LANGUAGE=French LOCATION=Canada DESC="grade 2" ;;
       "fr-fr-g1")	LANGUAGE=French LOCATION=France DESC="grade 1" ;;
@@ -236,7 +236,7 @@ echo '  Choice "Locale-g3/Default for la
   	fr_FR)	LANGUAGE=French ;;
   	hu_HU)	LANGUAGE=Hungarian ;;
   	it_IT)	LANGUAGE=Italian ;;
-  	nb_NO)	LANGUAGE="Norwegian Bokm�l" ;;
+  	nb_NO)	LANGUAGE="Norwegian Bokmål" ;;
   	nl_NL)	LANGUAGE=Dutch ;;
   	nn_NO)	LANGUAGE="Norwegian Nynorsk" ;;
   	pl_PL)	LANGUAGE=Polish ;;


--3dguy4lt2gafgduv--
