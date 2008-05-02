Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3998@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 2 May 2008 08:45:05 -0700 
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog
	an	dits interface - PPD and Foomatic extensions
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, George Liu <george.liu@ricoh-tech.com>
Cc: printing-architecture@lists.linux-foundation.org


Till,

I am finally catching up on email...I have only scanned some them so far

There are a lot of good comments and a lot of information that looks like
requirements and we should capture them.

Can I suggest that you create a wiki page to capture these requirements.  I
would suggest a table like.  Then we as a group can help keep the
requirement table up to date.



Req   Requirement                       Approved        First
No.                                     Pending         Implementation
                                        Removed         Version
----- ------------------------------  --------------  -----------------
1001  Application and Print Dialog      Approved        Prototype
      communication SHALL use DBUS 
      expect for PDF content
----- ------------------------------  --------------  -----------------
1002  Icons for options and choices     Approved        Prototype
      SHALL be UU-encoded.
----- ------------------------------  --------------  -----------------
1003  Application MAY send preview      Approved	  Version 1.0
      of a document page to the print
      dialog
----- ------------------------------  --------------  -----------------
1004  Application SHALL send preview    Pending
      of a document page in PDF         Sending preview as PDF is a burden
      format.				    to the dialog.  Since previews
                                        are scaled down version of the 
                                        actual page a icon graphical
                                        format is sufficient.



acceptable requirement keys word for the requirements should be limited to

SHALL
MUST
MAY

SHALL NOT
MUST NOT
MAY NOT

Key word like SHOULD have no meaning when discussing requirements and are
impossible for determining if the requirement is implemented; either a
required is required (SHALL) or is optional (MAY).  

