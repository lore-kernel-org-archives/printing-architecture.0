Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 12:26:05 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917102605.2mzzpsvjwu2kqxji@var.youpi.perso.aquilenet.fr>
References: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nv5jihp6xz4pup3v"
Content-Disposition: inline
In-Reply-To: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
Subject: Re: [Printing-architecture] [PATCH] Add braille support for vector
	images
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


--nv5jihp6xz4pup3v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Samuel Thibault, on sam. 09 sept. 2017 21:02:07 +0200, wrote:
> +	filter/braille/filters/vectortopdf \
> +	filter/braille/filters/vectortobrf \
>  	filter/braille/filters/texttobrf
>  endif
>  pkgfilter_PROGRAMS += \
> @@ -994,6 +996,13 @@ if ENABLE_DRIVERLESS
>  endif
>  if ENABLE_BRAILLE
>  	$(LN_S) -f imagetobrf $(DESTDIR)$(pkgfilterdir)/imagetoubrl
> +	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/svgtopdf
> +	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/xfigtopdf
> +	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/wmftopdf
> +	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/emftopdf
> +	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/cgmtopdf
> +	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/cmxtopdf
> +	$(LN_S) -f vectortobrf $(DESTDIR)$(pkgfilterdir)/vectortoubrl

BTW, these need to be installed in the Debian package too, see attached
patch.

Samuel

--nv5jihp6xz4pup3v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

diff --exclude .svn --exclude .git --exclude CVS --exclude .hg -ur /tmp/cups-filters-1.17.5/debian/cups-filters.install debian/cups-filters.install
--- debian/cups-filters.install	2017-08-21 11:33:48.000000000 +0200
+++ debian/cups-filters.install	2017-09-17 12:21:56.006226656 +0200
@@ -28,6 +28,16 @@
 usr/lib/cups/filter/textbrftoindexv3
 usr/lib/cups/filter/textbrftoindexv4
 usr/lib/cups/filter/texttobrf
+usr/lib/cups/filter/vectortopdf
+usr/lib/cups/filter/svgtopdf
+usr/lib/cups/filter/xfigtopdf
+usr/lib/cups/filter/wmftopdf
+usr/lib/cups/filter/emftopdf
+usr/lib/cups/filter/cgmtopdf
+usr/lib/cups/filter/cmxtopdf
+usr/lib/cups/filter/cgmtopdf
+usr/lib/cups/filter/vectortobrf
+usr/lib/cups/filter/vectortoubrl
 usr/share/cups/banners/*
 usr/share/cups/braille/*
 usr/share/cups/drv/*

--nv5jihp6xz4pup3v--
