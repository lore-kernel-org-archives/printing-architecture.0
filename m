Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D355D@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 1 Apr 2008 08:13:02 -0700 
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] GSoC 2008: JTAPI Library Project:
	Integrating Code and Licenses
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <larsuebernickel@gmx.de>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>

Lars,

There has been some discussion on the mentor mail-list about various
concerns of incorporating external code into a student's project (you don't
want to hear the details...).  My concern is slightly different from those
being discussed about code integration; specifically, maintaining an MIT
license for the JTAPI library.

I do not know if you are intending or find it convenient to integrate
software from external sources; but, I would like have an open dialog on the
"Printing-Architecture" mail-list if any code not licensed as MIT is to be
integrated.

The principle reason is that commercial vendors and print manufactures will
not use code that is not licensed as completely open; as an example,
licensed as GPL.  There are simply too many legal issues for companies to
use or incorporate such code.  (LGPL has the same issues today.)

I do not want to imply that you can not or should not integrate non-MIT
licensed code; but, I would to have a discussion among the
"Printing-Architecture" members before the final release of the code.

[Before releasing any code in a community like LF/OP and deciding what is
license to use, it necessary to ask "who is going to use this code; and how
will they use it".  In the JTAPI case there are variety of possible users
(developers) and instantiations of JTAPI.  1.) CUPS to parse or translate
Job-Ticket -- then GPL is ok.  2.) An Open Source stand alone application to
parse or translate Job-Tickets -- If the intent is for commercial vendors to
add or enhance the code for "their proprietary products" then use an MIT
license -- If the application is end-user generic application bundled with
the OS then GPL would be ok provided you don't need/want vendors to
contribute "their proprietary code"; otherwise use MIT.  3.) As an open
source library that vendors or the community can add a front end to or
another internal processing then use MIT.   Conclusion that I recommend, at
least for JTAPI, is to use and maintain a MIT license since GPL can
incorporate MIT code and you get the widest possible set of developers using
JTAPI.]

gwp 
