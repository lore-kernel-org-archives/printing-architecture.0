Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=7fqy5xhSJLx7ftOD3POaOMDtqSmHT8KsjTPdGVs6kf8=;
	b=g8awi0/tIg5yd1jfwxLeFwOdsnlDhgVLxb4EOwSlbZJAFPDsDy2UMDY6QA4oK7Ao5I
	S8FrN0bW8opXCGJqfmhvWptcz3P8msD4LruHW1k+Q0Xtayofa6GpdYkU+QvQITBf0Ckm
	BMhigsKpyxbeHSfcIQFJJxFkD9s8TtIpsSsBq2rP5m8wT7gd9O04rorC/WVobanNlpqH
	lQlK3mKHZRRAcoeTevzOui9YViuq35yTi/Plo1mG2PPgWhAAjimeZNXyX4/WpNR3CbDQ
	dEIlbcXXSa/N5lEwckzmegNONV0PmLOj/CBMDM5YMRt/qGtdpaxJTAxFw6dF/1b/8dyY
	tcAw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <33d66248-6dd2-5e8b-9068-4232eeeb2b8a@gmail.com>
Date: Fri, 5 Apr 2019 17:10:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

here is the newest development of the last month.

    Till

----------


Google Summer of Code 2019
--------------------------

We are currently in the period of the students submitting their 
proposals to Google. Aveek, me, and other mentors are reviewing the 
proposals and working with the students to make them as good as 
possible, so that we get a good count of slots.


Avahi
-----

I talked with my managers at Canonical and they talked with Trent's 
manager, succeeding that Trent's manager allows him some work time to 
put into the merge of the localhost support.

This resulted in Trent actually starting to work on it.

Trent asked my for some materials and tips for him testing CUPS' 
behavior without needing an appropriate printer.

Finally, he posted some comments on

https://github.com/lathiat/avahi/issues/125

Look at the comments starting from here:

https://github.com/lathiat/avahi/issues/125#issuecomment-477502912

The patch consists of the localhost support itself, (3 lines which I 
have created something like 2 years ago) and of the renaming of the 
hostname to "localhost" in the DNS-SD records originating from the "lo" 
interface (1 line, contributed by Rithvik, one of our former GSoC students).

Trent considers the second part not correct, but instead, CUPS needs to 
work different when evaluating incoming DNS-SD messages from Avahi, 
especially considering from which interface and address family each 
message comes (and so treat "lo" and also IPv4/IPv6 correctly).

I have also asked Trent whether cups-browsed is doing this correctly (at 
least cups-browsed also works without the second part of the patch).

It is possible that the final settlement will get fought out between 
Trent and Mike Sweet after Mike comes back from his vacation on April 12.

Note that Trent has sometimes very urgent work items in his actual job, 
so progress comes in irregular portions.


OpenPrinting web site
---------------------

We have moved the Foomatic repositories from BZR to GIT now and so they 
are in the OpenPrinting GitHub now:

https://github.com/OpenPrinting

With this all active OpenPrinting projects are hosted in our GitHub.

Especially thanks to Dheeraj Yadav (GSoC 2019 candidate student) for 
adding scripts for syncing the database with the GIT repos to the 
Foomatic web app. See:

https://github.com/OpenPrinting/openprinting.github.io/issues/54

This means that manufacturer contributions of PPD files and printer 
entries have to get committed to the GIT repos. I have already informed 
the Ricoh guys.


CUPS
----

No new releases.

Mike Sweet is on vacation until April 12.


cups-filters
------------

Note that due to the fact that we have given GitHub issues of 
cups-filters to students as assignments for the GSoC 2019 student 
selection process I have checked through the issues and (together with 
issues which I have closed and which I have fixed by myself) reduced the 
number of issues from 26 to 18.

I will release 1.22.4 still for Ubuntu 19.04.

Currently released is 1.22.3.

Bug fix release, to fix crashes and hangs on broken GIF files and also 
to improve the documentation of cups-browsed.

1.22.2:

Bug fix release, mainly to a crash bug when using the "Cluster" 
directive in the cups-browsed configuration and to make the printing of 
jobs in printer clusters more reliable. Also improvements on the image 
filters and an update of the man page for the "driverless" utility.

CHANGES IN V1.22.4

	- cups-browsed: Fix broken trailing space removal on
	  "NickName" (Pull request #103).
	- pdftops: Emit PostScript Level 2 instead of Level 3 for
	  Brother PostScript printers as at least some of them
	  report to support level 3 but ontly work with Level 2
	  (Ubuntu bug #1306849, comment #42).
	- bannertopdf: When multiplying the page for N-up or Duplex
	  printing one page too much was generated (Issue #102).

CHANGES IN V1.22.3

	- libcupsfilters: Added error checks for processing GIF, to
	  avoid crashes or hangs on broken GIF files (Issues #81, #82,
	  Pull request #100).
	- cups-browsed: Added hint to the man page and configuration
	  file that with "DebugLogging stderr" the logging output goes
	  to journal or syslog if cups-browsed is running as system
	  service (Issue #28).

CHANGES IN V1.22.2

	- cups-browsed: Let distribution of jobs sent to queues with
	  "implicitclass" backend (usually clusters) be done by a
	  "job-state" CUPS notification and not by
	  "printer-state-changed" any more. The "job-state"
	  notification already contains the job ID. Before we had to
	  poll the job ID from CUPS via IPP which was sometimes
	  unreliable (Issue #97).
	- imagetopdf, imagetoraster, pdftopdf, libcupsfilters: Added
	  new page scaling options: "fill" scales the input page
	  (typically a photo) so that the output page (typically with
	  different aspect ratio) gets completely filled, aloowing for
	  some content of the input page getting lost. "crop-to-fit"
	  allows for easy printing of documents on slightly different
	  output page sizes (A4 <-> Letter) maintaining the size and
	  centering and cropping into the destination page. Thanks to
	  Dheeraj Yadav (dhirajyadav135 at gmail dot com) for the
	  patch (Pull request #92).
	- cups-browsed: Do not do IPP request for printer-is-shared
           option for remote cups queues with CUPS 2.2.x and newer
           (Pull request #91).
	- cups-browsed: Fix crash bug when reading "Cluster"
	  directive from configuration file (Issue #94).
	- driverless: Updated man page as now also Mopria and
	  Wi-Fi Direct printers are supported. Mentioned also
	  ippusbxd.


ippusbxd
--------

No further news.
