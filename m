Return-Path: <till.kamppeter@gmx.net>
Message-ID: <446B24E3.2080702@gmx.net>
Date: Wed, 17 May 2006 15:28:03 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Building PAPI implementation
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Norm Jacobs <Norm.Jacobs@Sun.COM>
Cc: printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Now I am trying to build the PAPI package from
http://openprinting.sourceforge.net/ I am building the current
Subversion state, rev 164.

There I have encountered some problems:

- At first I needed to patch the build infrastructure a little bit to
make it compiling the Apache support. The patch on the acinclude.m4 file
you can find here:

http://www.linuxprinting.org/till/tmp/papi-1.0-acinclude-m4-apache-apr1.patch

- Then I had a problem building the software, as
source/mod_ipp/mod_ipp.c includes the file apr_compat.h in case of
building with Apache support. According to

http://www.apache.org/dist/apr/CHANGES-APR-1.2

this header file was removed on the transition from APR 0.9.5 to 1.0.0
and I have 1.2.7 on Mandriva's Cooker. So here the Apache module needs
to be updated to the current Apache/APR API.

   Till

