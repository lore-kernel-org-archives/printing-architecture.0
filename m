Date: Fri, 06 Dec 2002 22:04:49 +0900
From: Yasumasa TORATANI <toratani.yasumasa@canon.co.jp>
Message-Id: <20021206205608.CED9.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Bi-di plug-in functionarities
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
Cc: printing-japan@freestandards.org

Hello Mark, Mike, Peter and All,

I appreciate your comment, and I reply this time into the architecture
ML, and please forgive me if it's not appropriate.

In our bi-di plug-in group's opinion, we hope we could design
the bi-di plug-in module and its API like following;

1) Make it simple and small for being used frexibly from any upper
modules, such as PAPI with CUPS backend modules or other
filters, or any daemon modules with Omni / PDC, etc.

2) Make the generic plug-in API  to keep the plug-ins independent
from the implementations.

3) Each bi-di plug-in module for each printer vendor has the
    following functionarities;
  a) Handle the vendor dependent protocol to communicate with
      each vendor's printer.
  b) Obtain the printer status, including error, e.g. ink level,
      paper jam, no cartridge, etc.
  c) Obtain the information of the printer options, e.g. sorter,
      stapler, extended memory, etc.
  d) Printer discovery for both local and network.
  e) No UI. to be simple and generic.
  f) In some cases, receive the printing data from the upper system,
     translate it for eachr device or protocol, and send it to the
     appropriate target.
  g) Send the printer information to the upper system.

All of the above idea is TBD, and I appreciate any comment.
We think we should make a list of all functionarities, use cases and
senario to consider how we should deal with the printer information
and send them back to the upper system.

Regards,
Yasumasa TORATANI.


