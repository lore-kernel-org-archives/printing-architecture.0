DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:content-type:content-transfer-encoding;
	bh=uJ+A7Wfug6rQovGzXEeZjxEoGOB85S+moxPXsIkmAOs=;
	b=on9u3ldVowp+IpfYEgnEiPH+hoLdHxAv9APWvH9+yy1vMYBKXK6rvsNvVTwswCE1SvuOlm5cpLUAbm35+syBFfYN8aPpDEgFaCuUQkBxT41h8+BpXVgXO7ug9BPUSnsriW1qNLyWCF9cO3hTRa+G9QjtfFWMdRHvV8+ThWN6gpM=
Message-ID: <4755A02B.6080105@gmail.com>
Date: Tue, 04 Dec 2007 18:44:59 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printing part of the LSB 3.2
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
Cc: 'Glen Petrie' <glen.petrie@eitc.epson.com>

Below are links to the places where you find documentation and test 
suites for the printing part of the LSB 3.2. The test suite will 
probably already provide good part of the printing path tests.

Here the printing specs are coming in:

http://www.linux-foundation.org/snapshots/books/Printing/

This is a daily build of the test suite for printing:

ftp://ftp.freestandards.org/pub/lsb/snapshots/printing-test

And here you can browse/download the soources of the test suite:

http://bzr.freestandards.org/lsb/devel/printing-test
http://bzr.freestandards.org/lsb/devel/printing-test?cmd=inventory;rev=pqm%40freestandards.org-20071203201005-wyjkf8a24xrqx3u5;pathrevid=pqm%40freestandards.org-20071203201005-wyjkf8a24xrqx3u5;path=

The beta release of the LSB 3.2 is due by the end of this week, the 
final release two weeks later.

    Till
