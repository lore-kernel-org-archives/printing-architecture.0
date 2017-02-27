Return-Path: <samuel.thibault@ens-lyon.org>
Date: Tue, 28 Feb 2017 00:08:11 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170227230811.iyzvbno6qjizmwgq@var.youpi.perso.aquilenet.fr>
References: <20170226185712.jzs2ohpyvugl3dve@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="utjznskophckxxav"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170226185712.jzs2ohpyvugl3dve@var.youpi.perso.aquilenet.fr>
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


--utjznskophckxxav
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Samuel Thibault, on dim. 26 f=E9vr. 2017 19:57:12 +0100, wrote:
> Here is an update for the table list.
> I have contacted the liblouis project for them to include the
> descriptions in liblouis itself. For now we can code these here.

And here is a patch to be applied on top of it, that automatically
selects a table according to the current locale.

Samuel

--utjznskophckxxav
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

--- a/filter/braille/filters/liblouis1.defs.gen.in
+++ b/filter/braille/filters/liblouis1.defs.gen.in
@@ -28,7 +28,12 @@ TABLESDIR=@TABLESDIR@
 
 echo 'Group "Braille/Braille transcription"'
 echo 'Option "LibLouis/Braille transcription" PickOne AnySetup 10'
-echo '  *Choice "None/None" ""'
+echo '  Choice "None/None" ""'
+echo '  *Choice "Locale/Default for language" ""'
+echo '  Choice "Locale-g0/Default for language grade 0" ""'
+echo '  Choice "Locale-g1/Default for language grade 1" ""'
+echo '  Choice "Locale-g2/Default for language grade 2" ""'
+echo '  Choice "Locale-g3/Default for language grade 3" ""'
 
 (
   for i in $TABLESDIR/*.utb $TABLESDIR/*.ctb
--- a/Makefile.am
+++ b/Makefile.am
@@ -297,7 +297,11 @@ filter/braille/filters/liblouis1.defs: f
 	$< > $@
 
 $(GENERATED_LIBLOUIS): filter/braille/filters/liblouis%.defs: filter/braille/filters/liblouis1.defs
-	sed -e "s/Braille transcription/Additional Braille transcription ($*)/" -e s/LibLouis/LibLouis$*/ < $< > $@
+	sed -e "s/Braille transcription/Additional Braille transcription ($*)/" \
+	    -e "s/^  \\*Choice /  Choice /" \
+	    -e "s/^  Choice \"None\//  *Choice \"None\//" \
+	    -e s/LibLouis/LibLouis$*/ \
+	    < $< > $@
 
 pkgppdc_DATA += \
 	filter/braille/drivers/common/media-braille.defs \
--- a/filter/braille/filters/cups-braille.sh.in
+++ b/filter/braille/filters/cups-braille.sh.in
@@ -228,19 +228,53 @@ getOptionLibLouis () {
        ;;
   esac
 
+  LOCALE=${LANG%@*}
+  LOCALE=${LOCALE%.*}
+  LANGUAGE=${LOCALE%_*}
+
   # Check presence of table
-  if [ "$VALUE" != None ]
-  then
-    [ -f "$TABLESDIR/$VALUE".utb ] && VALUE="$VALUE".utb
-    [ -f "$TABLESDIR/$VALUE".ctb ] && VALUE="$VALUE".ctb
-    if [ ! -f "$TABLESDIR/$VALUE" ]
-    then
-      printf "ERROR: Could not find $OPTION table '%s'\n" "$VALUE"
+  case "$VALUE" in
+    None)
+      printf None
+      ;;
+    Locale)
+      if [ -f "$TABLESDIR/$LOCALE.tbl" ]
+      then
+	printf "%s" "$LOCALE.tbl"
+      elif [ -f "$TABLESDIR/$LANGUAGE.tbl" ]
+      then
+	printf "%s" "$LANGUAGE.tbl"
+      else
+        printf "WARN: Could not find $OPTION table '%s.tbl' or '%s.tbl'\n" "$LOCALE" "$LANGUAGE" >&2
+	printf None
+      fi
+      ;;
+    Locale-g[0-3])
+      GRADE=${VALUE#Locale-g}
+      for i in "$TABLESDIR/$LOCALE.tbl" "$TABLESDIR/$LOCALE"*.tbl "$TABLESDIR/$LANGUAGE.tbl" "$TABLESDIR/$LANGUAGE"*.tbl
+      do
+	if grep -q "^#+grade:$GRADE$" "$i"
+	then
+	  printf "%s" "${i//*\/}"
+	  exit 0
+	fi
+      done
+      printf "ERROR: Could not find $OPTION table '%s*.tbl' or '%s*.tbl' with grade $GRADE\n" "$LOCALE" "$LANGUAGE" >&2
+      printf None
       exit 1
-    fi
-  fi
+      ;;
+    *)
+      [ -f "$TABLESDIR/$VALUE".utb ] && VALUE="$VALUE".utb
+      [ -f "$TABLESDIR/$VALUE".ctb ] && VALUE="$VALUE".ctb
+      if [ ! -f "$TABLESDIR/$VALUE" ]
+      then
+        printf "ERROR: Could not find $OPTION table '%s'\n" "$VALUE" >&2
+        exit 1
+      fi
 
-  printf "%s" "$VALUE"
+      printf "%s" "$VALUE"
+      ;;
+  esac
 }
 
 LIBLOUIS1=$(getOptionLibLouis LibLouis)

--utjznskophckxxav--
