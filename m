From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <4CDC9192.5090900@fujixerox.co.jp> (Osamu MIHARA's message of
	"Fri, 12 Nov 2010 10:00:02 +0900")
References: <20101105105012.F03E.5F9CA008@canon.co.jp>
	<4CDC9192.5090900@fujixerox.co.jp>
Date: Fri, 12 Nov 2010 14:39:55 -0500
Message-ID: <m3wroiib4s.fsf@jhcloos.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] OpenPrintig Japan November 2010 Meeting
	Minutes in English
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: printing-japan@lists.linux-foundation.org

>>>>> "OM" == Osamu MIHARA <osamu.mihara@fujixerox.co.jp> writes:

OM> OpenPrintig Japan November 2010 Meeting Minutes
OM> - Till-san is suggesting poppler based "pdftoraster" is preferable
OM> compared with GS based pdftoraster filter.
OM> - Otani-san is woking on modify poppler based pdftoraster in order
OM> to support CUPS extensions such as cupsBackSide.

Has anyone looked at a mupdf-based (aka fitz-based) pdftoraster?

It should be faster and use less ram.

License is gpl, just like poppler and ghostscript.

Git repo is at:

http://mupdf.com/repos/mupdf.git

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
