Return-Path: <todd.fujinaka@intel.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Jul 2006 15:16:45 -0700
Message-ID: <D90275D3D462F94E9B3892626804E08C01676159@orsmsx412.amr.corp.intel.com>
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: [Printing-architecture] Questions about Ghostscript and IJS and
	OpenPrinting Vector
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>, lsb-discuss@freestandards.org

Please forgive the simplicity of these questions, but since I'm going to
have to evaluate IJS and OpenPrinting vector and then add them to the
LSB standard, I have a few questions. I'm sure I'll have to dive into
the code, but I thought some pointers would help me so I don't get lost.

First, does the open IJS standard map to the HP standard? The IJS page
on LinuxPrinting.org appears to be just a skeleton
www.linuxprinting.org/ijs.

It looks like both IJS and OpenPrinting vector use ghostscript to
convert Postscript or PDF to API calls, and then a plugin with the API
definition talks to the output device. The APIs are defined but I'm not
quite sure what happens on both sides of that API, so that's just a
guess. It also looks like there's glue code linked into ghostscript that
creates the API calls as well as drivers that consume the calls and then
talk to the output device. Please correct me if I'm wrong.

If that's the case, does the driver have any access back into
ghostscript? If not, can a plugin be provided as a binary with no
source? (This is with the assumption that we're using the GPL version of
ghostscript.)

Thanks for any help.
Todd

