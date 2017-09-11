Return-Path: <samuel.thibault@ens-lyon.org>
Date: Tue, 12 Sep 2017 00:08:42 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170911220842.lbs4th2765zzyahb@var.youpi.perso.aquilenet.fr>
References: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
	<096ec9d7-7dbb-9d5c-184f-40b4c384bbac@gmail.com>
	<20170911193846.aqrqdtw6ctaf744u@var.youpi.perso.aquilenet.fr>
	<2e1e6295-350d-aa23-74c6-07f163070f57@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wh6tfixxkp6ke75e"
Content-Disposition: inline
In-Reply-To: <2e1e6295-350d-aa23-74c6-07f163070f57@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org


--wh6tfixxkp6ke75e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Till Kamppeter, on lun. 11 sept. 2017 17:09:49 -0300, wrote:
> I have added them now. Please check.

Thanks!

I however realize that trap handling do not pile up and the file
name was incorrect, so the attached patch is needed to avoid leaking
temporary files.

Samuel

--wh6tfixxkp6ke75e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/vectortopdf.in'
--- filter/braille/filters/vectortopdf.in	2017-09-11 20:04:22 +0000
+++ filter/braille/filters/vectortopdf.in	2017-09-11 22:08:01 +0000
@@ -43,8 +43,7 @@ case $0 in
   *cmxtopdf*) INPUT_FORMAT=cmx ;;
 esac
 
-trap -- 'rm -f "$FILE_FORMAT"' EXIT
-trap -- 'rm -f "$FILE_FORMAT_PDF"' EXIT
+trap -- 'rm -f "$FILE_FORMAT" "$FILE_PDF"' EXIT
 FILE_FORMAT=$(mktemp "${TMPDIR:-/tmp}/vectortopdf.XXXXXX.${INPUT_FORMAT}")
 FILE_PDF=$(mktemp "${TMPDIR:-/tmp}/vectortopdf.XXXXXX.pdf")
 


--wh6tfixxkp6ke75e--
