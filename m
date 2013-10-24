Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
Content-transfer-encoding: quoted-printable
Date: Thu, 24 Oct 2013 06:36:29 -0700
Message-id: <8DA43572-C098-4246-8175-8A61F7B45D99@apple.com>
Subject: [Printing-architecture] CUPS 1.7.0
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

All,

CUPS 1.7.0 is now released on cups.org.  Changes since 1.7rc1 and 1.6.4 =
include:

	=95 Updated Japanese localization.
	=95 The lpadmin command did not send the PPD name from the "-m" =
option (<rdar://problem/15264697>)
	=95 Network backends now use the prtMarkerSuppliesClass property =
to determine the direction of supply level values =
(<rdar://problem/14302628>)
	=95 The scheduler did not remove backup PPD files when a printer =
was deleted (<rdar://problem/15065555>)
	=95 The scheduler incorrectly responded to HEAD requests when =
the web interface was disabled (<rdar://problem/15090332>)
	=95 The scheduler did not respond using the hostname specified =
by the client (<rdar://problem/14583574>)
	=95 Fax queues did not work when shared via Bonjour =
(<rdar://problem/14498310>)
	=95 Error messages from the scheduler were not localized using =
the language specified in the client's IPP request =
(<rdar://problem/14128011>)
	=95 Added an Italian localization (<rdar://problem/14481578>)
	=95 Fixed a couple memory leaks in ippfind that were reported by =
Clang.
	=95 Fixed a compile issue on 64-bit Linux with Clang - need to =
use the -pie option instead of -Wl,-pie now (<rdar://problem/14480938>)
	=95 The ippfind utility reported the wrong port numbers when =
compiled against Avahi (<rdar://problem/14508324>)
	=95 httpGetFd, httpGetFile, httpPutFd, and httpPutFile did not =
automatically reconnect if the server closed the connecion after the =
previous response.
	=95 Fixed a compile error in libcups (<rdar://problem/14467141>)
	=95 The scheduler incorrectly did not pass a FINAL_CONTENT_TYPE =
environment variable to the filters or backend =
(<rdar://problem/14355011>)
	=95 The cups-exec helper program could fail randomly on OS X due =
to sandbox violations when closing excess file descriptors =
(<rdar://problem/14421943>)
	=95 The scheduler incorrectly did not use the kqueue interface =
on OS X.

Enjoy!

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

