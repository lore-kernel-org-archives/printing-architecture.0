Return-Path: <todd.fujinaka@intel.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 8 Aug 2006 10:38:06 -0700
Message-ID: <D90275D3D462F94E9B3892626804E08C0182122F@orsmsx412.amr.corp.intel.com>
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: [Printing-architecture] IJS example code causing a segfault
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

I'm trying to use the example code from ijs-0.35 and I'm getting
segfaults. I'll go digging some more, but when I do a


./configure; make; gs -sDEVICE=3Dijs -sIjsServer=3D./ijs_server_example =
-
sOutputFile=3Dtestout -dNOPAUSE -dBATCH example.ps

I get segmentation faults on SLED10 and FC5, but not on RHEL4U3.

Is this the list for this? I tried desktop_printing, but that list is no
longer available.

Thanks,
Todd

