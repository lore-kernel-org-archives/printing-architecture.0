From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
References: <4D265C61.2000703@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>
	<4D6D5FD5.4010506@gmail.com> <4D6D6D45.3070907@gmail.com>
	<87ei6ndyi8.fsf@avasys.jp> <20110304172254.GF30872@piware.de>
	<87hbbfyat2.fsf@avasys.jp>
Date: Fri, 11 Mar 2011 12:03:13 +0900
In-Reply-To: <87hbbfyat2.fsf@avasys.jp> (Olaf Meeuwissen's message of "Mon, 07
	Mar 2011 10:32:57 +0900")
Message-ID: <87r5aefjf2.fsf@avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: Re: [Printing-architecture] [Printing-japan] Ubuntu Natty the first
	distribution which does automatic download of binary printer
	driver packages
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
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com

Olaf Meeuwissen <olaf.meeuwissen@avasys.jp> writes:

> Martin Pitt <martin.pitt@ubuntu.com> writes:
>> Anyway, now that Till created a bug report for it, I propose we move
>> discussion there, for better record-keeping.
>
> OK.

# Sorry about not subscribing myself to the bug report.

Anyway, just wanted to summarize current status here so the OpenPrinting
people remain in the loop as well.

 1. Fingerprint SSL check does not work behind a proxy
    We've checked the latest changes and the fingerprint is fetched
    without any problems.
    -> https://bugs.launchpad.net/ubuntu/+source/jockey/+bug/729185

 2. GPG keyserver access does not work behind a proxy
    This has been reported on the mailing list before (IIRC) but after
    getting the fingerprint correctly, this is the next proxy problem
    that we hit.
    -> https://bugs.launchpad.net/ubuntu/+source/jockey/+bug/733023

 3. GPG keyserver default port blocked by proxy
    IIRC, Saito-san has suggested using a keyserver that listens on the
    HTTP port (rather than the HKP one) on the list and I believe there
    was a mail saying it got fixed, but the current sources refer to a
    keyserver that listens on the HKP port.
    -> https://bugs.launchpad.net/ubuntu/+source/jockey/+bug/733029

 4. Jockey not called by system-config-printer?
    We seen some discrepancies in behaviour wrt the automatic printer
    driver download depending on how the printer was "detected".
    Connecting a USB printer worked fine.  Running newprinter.py from
    the command-line is also okay.  However, when trying to add a USB
    or network printer using system-config-printer nothing happened.
    As in no attempt to have jockey download a driver was made.
    I'll submit a bug report against system-config-printer later as I
    don't have the details handy at the moment.

Hope this helps,
-- 
Olaf Meeuwissen, LPIC-2           FLOSS Engineer -- AVASYS CORPORATION
FSF Associate Member #1962               Help support software freedom
                 http://www.fsf.org/jf?referrer=1962
