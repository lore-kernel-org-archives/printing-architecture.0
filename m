Message-ID: <4DB9EEB7.7090503@gmail.com>
Date: Fri, 29 Apr 2011 00:48:23 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Google Summer of Code 2011: 3 Students
 working on printing-related projects
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

as last year, this year we did not get many student applications again. 
The student projects which we will get worked on are:


Parse XML DB in Perl, replacing legacy C
----------------------------------------

Currently Foomatic uses two C programs to parse the XML DB. The use of C 
instead of perl was necessitated by the use of the XML DB in production 
and thus the need for near real time parsing. The situation which 
demanded the use of C has changed in the intervening decade. Computers 
have gotten faster, XML parsing in Perl has gotten faster, and SQLite 
offers us the possibility of eliminating much of the speed requirement. 
Thus my proposal is two parted, to re-implement the C programs as a Perl Ob

Student: Daniel Dressler <danieru dot dressler at gmail dot com>
Mentor: Till Kamppeter


Ticketed Print Monitoring System
--------------------------------

Implement a monitored print server in CUPS to allow graduate students 
and faculty to print to a network of laser printers with a ticketed 
system hooked up to a monitor server with a front end GUI available on 
all platforms. This is in order to set printing limits and to meet 
budget constraints on toner and paper.

Student: Samantha <firebirdy4 at gmail dot com>
Mentor: Danny Brennan <brennand at us dot ibm dot com>


In addition, one student mentored by OpenICC (Color Management) is 
working on a printing-related project:


Color Management for the Common Printing Dialog (CPD)
-----------------------------------------------------

Until recently, the combination of a print dialog and color management 
has met very little attention in Linux. But given the significance of 
the current progress being made to the Common Printing Dialog (CPD), and 
the potential for more users to take printing on Linux much more 
seriously, there is simply no better time than now to extend CPD to 
include color management. This project hopes to accomplish such a task 
by bridging together the Oyranos CMS with the Common Printing Dialog.

Student: Joe Simon <jsimon383 at gmail dot com>
Mentor: Kai-Uwe Behrmann <ku dot b at gmx dot de>


Congratulations to all the students and all the best for a successful 
summer.

    Till
