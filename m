Message-ID: <OFC9AAF355.096AA195-ON85256C8E.006B3739@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Fri, 13 Dec 2002 14:32:51 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
Subject: [Printing-architecture] Lower level diagram update (bidi update)
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: printing-architecture@freestandards.org
Cc: toratani.yasumasa@canon.co.jp

All,

I have put an updated version of the lower level architecture
diagrams in the pwg site.

ftp://ftp.pwg.org/pub/pwg/fsg/architecture/arch1-121302.jpg
ftp://ftp.pwg.org/pub/pwg/fsg/architecture/arch2-121302.jpg

I realized when I looked at them the points that Michael
Sweet was making because the bidi drawing had a connection
directly to the printer which was incorrect.  I updated page
2 to more accurately reflect what the thought was.  Sorry
for any confusion.

As far as the notification and event management scheme,
we have been looking at http://evlog.sourceforge.net/  for
starters.  It would have to be able to handle large volumes
of information though along with a lot of additional function
that we haven't even started discussing yet.

Capabilities is another subject altogether.  Since using .ppd
files is the current implementation under CUPS, nobody has
really started to discuss how to tie in dynamic capabilities
from either a printer or a driver into the system.

Dynamic capabilities would definitely require additional function,
possibly processes, to enable the system (most likely a local
store of sorts) updated with the latest device information.  Of
course there are other ways to do this but I would worry that
if we don't have a current configuration cached, in some instances,
the amount of time to initiate a print job may become too large,
especially if we are going to populate dialogs for the user based
on the current settings.

It would be nice if our solution didn't need to have multiple
drivers configured between systems and worry about keeping them
all in sync. if wanted to get the properties in a networked
environment. This will likely be up for debate when we start
working out the issue of client vs. server side rendering though.

Just a couple of thoughts on dynamic capabilities.

Thanks,


Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com



