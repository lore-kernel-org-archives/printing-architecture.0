Message-ID: <4D71186C.6040108@gmail.com>
Date: Fri, 04 Mar 2011 17:50:52 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp>	<4BD18655.8060000@gmail.com>	<F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp>	<4C091F92.7050102@gmail.com>
	<4C1284F4.3000707@gmail.com>	<4C89CF0C.60003@avasys.jp>
	<4CE55A84.3070006@gmail.com>	<F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>	<4D265C61.2000703@gmail.com>	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>	<20110131104358.GC4406@piware.de>
	<4D662705.9020803@gmail.com>	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>	<4D67A34D.4020008@gmail.com>
	<1298669202.5347.0.camel@worm.elk>	<4D6D5FD5.4010506@gmail.com>
	<4D6D6D45.3070907@gmail.com> <87ei6ndyi8.fsf@avasys.jp>
In-Reply-To: <87ei6ndyi8.fsf@avasys.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Ubuntu Natty the first distribution
 which does automatic download of binary printer driver packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, martin.pitt@ubuntu.com, michael.vogt@ubuntu.com

Thank you very much, Olaf. I have created a bug report about this on 
Launchpad now:

https://bugs.launchpad.net/ubuntu/+source/jockey/+bug/729185

pitti, can you fix this?

    Till


On 03/04/2011 10:29 AM, Olaf Meeuwissen wrote:
> Hi Till,
>
> Saito-san and I have been looking at how well the automatic download
> works when behind a proxy.  Short story: it doesn't.  The long story
> follows below.
>
> Till Kamppeter<till.kamppeter@gmail.com>  writes:
>
>> for testing the automatic driver download on current Natty [...]
>> apply the patch attached to my previous mail [...]
>> 0001-Activated-and-fixed-testing-mode-for-device-ID-drive.patch
>
> We upgraded Natty on 2011-03-03 and applied your patch to
> system-config-printer.
>
>> cupsctl FileDevice=yes
>> cd /usr/share/system-config-printer/
>> python newprinter.py --setup-printer=file:/tmp/printout
>> --devid="MFG:Epson;MDL:Stylus NX110;"
>
> That's what we did.  We've been looking at jockey debug logs, wireshark
> network traffic captures and the jockey code trying to figure out where
> things went wrong.  According to the logs, the query of the OpenPrinting
> DB went just fine.  It's getting the fingerprint that bombs.  Using wget
> to fetch the fingerprint in the same environment works fine.
>> From the jockey debug logs:
>
>    2011-03-03 13:04:49,904 DEBUG: Querying openprinting.org database...
>    2011-03-03 13:04:49,904 DEBUG:    ... querying for MFG:Epson;MDL:Stylus NX110;
>    2011-03-03 13:04:56,203 DEBUG: OpenPrintingDriverDB: driver driver/epson-stylus-nx110-series info: {'nonfreesoftware': True, 'name': 'epson-stylus-nx110-series', 'license': 'LGPL and SEIKO EPSON CORPORATION SOFTWARE LICENSE AGREEMENT', 'url': 'http://avasys.jp/english/linux_e/', 'thirdpartysupplied': False, 'supportcontacts': [{'url': 'http://avasys.jp/english/linux_e/contact/', 'name': 'AVASYS Corporation', 'level': 'voluntary'}], 'recommended': True, 'functionality': {'text': '100', 'lineart': '100', 'photo': '100', 'graphics': '100'}, 'manufacturersupplied': True, 'licensetext': u'License agreement fo..', 'supplier': 'Seiko Epson Corporation', 'freesoftware': False, 'packages': {'i386': {'epson-inkjet-printer-stylus-nx110-series_1.0.0-1lsb3.2_i386.deb': {'url': 'http://linux.avasys.jp/drivers/lsb/epson-inkjet/stable/debian/dists/lsb3.2/main/binary-i386/epson-inkjet-printer-stylus-nx110-series_1.0.0-1lsb3.2_i386.deb', 'pkgsys': 'deb', 'repositories': {'apt': 'deb http:
//linux.avasys.jp/drivers/lsb/epson-inkjet/stable/debian/ lsb3.2 main'}, 'version': '1.0.0', 'fingerprint': 'https://linux.avasys.jp/drivers/lsb/epson-inkjet/key/fingerprint', 'release': '1', 'realversion': '1.0.0'}}}, 'shortdescription': 'Epson Inkjet Printer Driver for Linux', 'patents': False}
>    2011-03-03 13:04:56,252 WARNING: https://linux.avasys.jp/drivers/lsb/epson-inkjet/key/fingerprint has invalid certificate, ignoring driver: Host 172.xx.xx.xx:8080 returned an invalid certificate (_ssl.c:499: error:140770FC:SSL routines:SSL23_GET_SERVER_HELLO:unknown protocol)
> 	
>    2011-03-03 13:04:56,252 DEBUG: Ignoring driver as it does not have a valid GPG fingerprint
>    2011-03-03 13:04:56,253 DEBUG: openprinting.org database query finished
>
> We've chased the WARNING statement down to the connect method of
> _CertValidatingHTTPSConnection in jockey's verified_https.py
>
>     def connect(self):
>          sock = socket.create_connection((self.host, self.port))
>          self.sock = ssl.wrap_socket(sock, cert_reqs=ssl.CERT_REQUIRED,
>                                            ca_certs=self.ca_certs)
>          cert = self.sock.getpeercert()
>          hostname = self.host.split(':', 0)[0]
>          if not self._validate_certificate_hostname(cert, hostname):
>              raise InvalidCertificateException(hostname, cert,
>                                                'hostname mismatch')
>
> The ssl.wrap_socket raises an ssl.SSLError.  What puzzles us is that
> this method creates a connection to the _proxy_ rather than to the host
> where the fingerprint resides.  The wireshark capture for a wget went
> straight to the latter host and negotiated TLSv1 with the proxy on the
> fly.
>
> We've also played with passing different ssl_version parameters to
> ssl.wrap_socket but that didn't help.  We're not sure whether this
> method negotiates a usable version but if it doesn't that something that
> probably needs fixing as well.
>
> Hope this helps,

