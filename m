From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
References: <4D265C61.2000703@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>
	<4D6D5FD5.4010506@gmail.com> <4D6D6D45.3070907@gmail.com>
	<87ei6ndyi8.fsf@avasys.jp> <20110304172254.GF30872@piware.de>
Date: Mon, 07 Mar 2011 10:32:57 +0900
In-Reply-To: <20110304172254.GF30872@piware.de> (Martin Pitt's message of
	"Fri, 4 Mar 2011 18:22:54 +0100")
Message-ID: <87hbbfyat2.fsf@avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
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
To: Martin Pitt <martin.pitt@ubuntu.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, Till Kamppeter <till.kamppeter@gmail.com>

Martin Pitt <martin.pitt@ubuntu.com> writes:

> Hello Olaf,
>
> Olaf Meeuwissen [2011-03-04 18:29 +0900]:
>>         sock = socket.create_connection((self.host, self.port))
>>         self.sock = ssl.wrap_socket(sock, cert_reqs=ssl.CERT_REQUIRED,
>>                                           ca_certs=self.ca_certs)
>> 
>> The ssl.wrap_socket raises an ssl.SSLError.  What puzzles us is that
>> this method creates a connection to the _proxy_ rather than to the host
>> where the fingerprint resides.
>
> That indeed sounds strange. For reproducing this, do you have some
> details about your proxy setup? Is that just a standard squid?

Not quite sure what our IT department uses but I'm pretty sure it's not
just a standard squid.  Actually, I'm almost sure it's not even a squid
at all.

> Anyway, now that Till created a bug report for it, I propose we move
> discussion there, for better record-keeping.

OK.
-- 
Olaf Meeuwissen, LPIC-2           FLOSS Engineer -- AVASYS CORPORATION
FSF Associate Member #1962               Help support software freedom
                 http://www.fsf.org/jf?referrer=1962
