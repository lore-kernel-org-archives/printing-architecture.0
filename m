Return-Path: <rshepard@appl-ecosys.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1B5B40159
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2676A4000B
Date: Mon, 3 Apr 2023 15:48:42 -0700 (PDT)
From: Rich Shepard <rshepard@appl-ecosys.com>
Reply-To: Rich Shepard <rshepard@appl-ecosys.com>
Message-ID: <c099a123-228a-43c3-2b87-70c39ddd8b34@appl-ecosys.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [Printing-architecture] Correcting 'filter failed' error
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

If this is not the proper mail list for my problem, please point me to the
appropriate one.

I'm running Slackware64-14.2 on a desktop. Installed are:
cups-2.1.4-x86_64-2_slack14.2
cups-compat32-2.1.4-x86_64-1compat32
cups-filters-1.9.0-x86_64-2
cups-filters-compat32-1.9.0-x86_64-2compat32
cups-pdf-3.0.1-x86_64-1_SBo
pycups-1.9.73-x86_64-1

I've no problems with the HP LaserJet 5, but do with the Dell C1740NW color
laser printer. The latter used to work, but a re-installation of the core OS
blew away the driver.

The Dell is a re-branded Xerox 6000B printer and I installed the Xerox
driver.

I can ping the printer's LAN IP address and CUPS sees the printer. But when
I try printing a test page the effort stops with the message "filter
failed." When I look at the printer maintenance menu option "Set default
options" the entire page is in French, but I recall enough to know the only
options to be reset are the two at the top: activate and set paper size to
letter.

How can I find which filter failed and how would I fix the problem?

TIA,

Rich
