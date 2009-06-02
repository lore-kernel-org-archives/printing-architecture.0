Message-ID: <4A25AB03.10702@gmail.com>
Date: Wed, 03 Jun 2009 00:43:15 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] pdftoopvp CUPS filter in PDF filter add-on
	for CUPS now!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, OTANI Koji <sho@bbr.jp>, Printing-japan <printing-japan@lists.linux-foundation.org>

Hi,

I have added the new pdftoopvp CUPS filter to the PDF printing workflow 
filter add-on for CUPS now. Please download the newest version here:

http://www.openprinting.org/download/printing/pdf-printing/pdf-filters.tar.gz

and try it with any not too old version of CUPS. Note that you also need 
libpoppler 0.11.0 (or newer), libijs, libfreetype, libfontconfig, and 
liblcms. You can use the libraries of your distribution, but you must 
install the appropriate -dev or -devel packages with the header files.

I have also applied the updated add-on to the BZR repository of the CUPS 
package for Debian. So the pdftoopvp filter will soon appear in the CUPS 
packages of Debian unstable and Ubuntu Karmic.

    Till
