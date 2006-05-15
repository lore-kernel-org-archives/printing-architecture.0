Return-Path: <Ide.Kentaro@exc.epson.co.jp>
Message-ID: <8A33346A3922BD4EB48A18128BAB16AB04352539@SWA6204.apo.epson.net>
From: Ide Kentaro <Ide.Kentaro@exc.epson.co.jp>
Date: Tue, 16 May 2006 01:31:18 +0900
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----_=_NextPart_000_01C6783C.FDE824E1"
Subject: [Printing-architecture] Draft idea of PCM's error codes
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_000_01C6783C.FDE824E1
Content-Type: text/plain

Hi, all,

I attach draft idea of error codes for PCM.
These code will be return via fsgpcmIOError();

At the present, printing-japan team start discussion about this error code.
Please reffer PCM draft and this error code, give us comment or suggestions.

regards,
Kentaro Ide


------_=_NextPart_000_01C6783C.FDE824E1
Content-Type: text/plain;
	name="PCM_ERROR_Code_E.txt"
Content-Disposition: attachment;
	filename="PCM_ERROR_Code_E.txt"

PCM_ERROR_PARAM         Invalid parameters
			This error will be return when using un-supported
			parameter.

PCM_ERROR_NOSUPPORT     Invalid control command
			This error will be return when using un-supported
			control command.

PCM_ERROR_NOOPEN        Plug-in is not opened
			This error will be return when other function is
			called before call the function fsgpcmOpen()

PCM_ERROR_NOJOB         Plug-in don't have any Job
			This error will be return when using Job operational
			control commands although don't send Jobs.

PCM_ERROR_NOCONNECT     Error on connection with file descriptor *Fatal*
			This error will be return when can't read/write to
			File Descriptor (FD) with something reason include
			protocol mismatch.

PCM_ERROR_NOMEM         Can't allocate memory.

PCM_ERROR_SIGNAL        Interrupted by signal

PCM_ERROR_BUSY          Plug-in is busy
			This error will be return when Plug-in is busy.
			While this code is returned, Plug-in can't apply
			print data.
			Upper layer must wait certain period of time and
			re-write.



These codes depend on implementation method.

PCM_ERROR_2NDOPEN       If implementation need the error code that occur when fsgpcmOpen
			called although already called fsgpcmOpen.

PCM_ERROR_INTR          When we chose time-out method to PCM spec., this code will be return
			with signal before time-out.

PCM_ERROR_VERSION       *Fatal*
			If the PCM of future version don't have backword compatibility,
			this code will be return when PCM can't start communication with
			older version's Plug-in.
------_=_NextPart_000_01C6783C.FDE824E1--
