Message-ID: <CFEE79A465B35C4385389BA5866BEDF00C7839@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Sun, 22 Aug 2004 11:49:25 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Subject: [Printing-architecture] Print Channel Controller, Print Manager,
	Spooler for Reference Mo del
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

Hi,                                                Sunday 22 August 2004

Below are my three subsystem descriptions for FSG/OP Reference Model.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com
----------------------------------------

Print Channel Controller (PCC)

The Print Channel Controller subsystem provides a single subsystem for
opening, managing, transferring data over, and closing Channels (using
datagrams or connections, local or network) between any of the FSG/OP
Architecture subsystems and a Printer subsystem.  There is a single
Application Programming Interface (API) for Channel access.

An FSG/OP Architecture subsystem may open a Channel to a Printer (using
a URI to specify the destination protocol endpoint for portability) in
order to support a job submission, job management, status monitoring, or
other application protocol.

Note:  A single transport connection may simultaneously support more
than one Channel (e.g., IETF BEEP, RFC 3080).

A Channel includes a transport protocol (e.g., TCP or UDP), and may
include a session protocol (e.g., HTTP), a presentation protocol (e.g.,
SOAP), and/or layer security protocols (e.g., TLS).  A Channel is bound
(for the lifetime of the Channel) to a particular Interface.

An Interface includes a communications port (local or network) or an OS
pipe/shared-memory port, and may include a datalink protocol (e.g.,
Ethernet), a network protocol (e.g., IP or IPX), and/or layer security
protocols (e.g., IPsec).

See:  Section 2.2.10 'Print Job Delivery Channels' and Channel group in
      section 6 of Printer MIB v2, RFC 3805, June 2004.

See:  Blocks Extensible Exchange Protocol Core, RFC 3080, March 2001.

----------------------------------------

Print Manager (PM)

The Print Manager subsystem provides a single subsystem for accepting,
monitoring, scheduling, and cancelling print jobs for Applications and
Gateways.  The Print Manager provides an abstraction of Servers, Queues,
Jobs, Documents, and Resources (see ISO 10175).  There is a single
Application Programming Interface (API) for Print Manager access.

An Application or Gateway may open an output stream to the Print Manager
subsystem, send the job/document processing and description attributes,
(optionally) the job ticket, and the job data (by reference or by value)
to the Print Manager subsystem, and then close the output stream.

The Print Manager subystem may use the Spooler subsystem to support
rate adaption across different communications paths and/or additional
temporary job storage for limited Printer subsystems.

See:  Section 1.1 'Simplified Printing Model' and section 2.1 'Printer
      Object' in IPP/1.1 Model and Semantics, RFC 2911, September 2000.

See:  Document Printing Application (DPA), ISO 10175, June 1996.

----------------------------------------

Spooler (SP)

The Spooler subsystem provides a single subsystem for saving (writing)
and retrieving (reading) print jobs on behalf of the Print Manager
subsystem.  The Spooler provides buffering of incoming print jobs
(including job tickets and job data) for later scheduling and forwarding
to other FSG/OP Architecture subsystems.  There is a single Application
Programming Interface (API) for Spooler access.

For each incoming print job, the Print Manager subsystem may open an
output stream to the Spooler subystem (using a URI to specify the
destination file for portability), copy the incoming job to the Spooler
subsystem, and then close the output stream.  Later, the Print Manager
subsystem will schedule the saved job, open an input stream from the
Spooler subsystem for the saved job (using a URI), forward the saved job
to another FSG/OP Architecture subsystem for processing, and then close
the input stream.

See:  Section 1.1 'Simplified Printing Model' and section 2.2 'Job
      Object' in IPP/1.1 Model and Semantics, RFC 2911, September 2000.

See:  Document Printing Application (DPA), ISO 10175, June 1996.

----------------------------------------

