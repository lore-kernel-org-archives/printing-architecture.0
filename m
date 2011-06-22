From: John Layt <johnlayt@googlemail.com>
Date: Wed, 22 Jun 2011 23:49:12 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201106222349.13063.johnlayt@googlemail.com>
Subject: [Printing-architecture] Printing in Qt/KDE
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

Hi,

Apologies for not being very responsive on list to the follow up to the 
printing summit and CPD, other priorities intervened.

You may have heard that Qt have decided the forthcoming Qt 4.8 release will be 
the last in the Qt4 series and will be followed by Qt5, the first release 
under the new OpenGovernance development model.  I've just got back from the 
Qt Contributors Summit where the plans for Qt5 were discussed, including what 
to do with printing.  You can see some notes from the meeting at 
http://developer.qt.nokia.com/groups/qt_contributors_summit/wiki/Printing

In summary, Qt do not have the developer resources to make feature changes to 
printing, but are happy for the community to contribute new features.  For Qt5 
the existing Qt Printing code will moved into a separate module and put into 
support mode to allow the community to develop a replacement printing module 
for inclusion into Qt 5.1 or 5.2.  Basically we've been given a clean sheet 
for designing a new cross-platform api and feature set, but using the old code 
as a starting point.  Obviously CPD will come into consideration in the design 
process.

I plan to start work on this in about 2-3 months after some other Qt5 tasks 
are completed.  If anyone is interested in working on this, or has ideas on a 
nice api and class structure I'd be happy to hear from them.

Moving on to the CPD briefly, I was looking at the api for applications adding 
extra options to the dialog and it looks like it will be insufficent for 
current KDE applications that add complex option widgets.  For an example see 
Gwenview's 'Image Settings' tab.  I'm not sure there's any way such complex 
requirements could be met using a generic DBus api or cross-toolkit dialog.

Cheers!

John.
