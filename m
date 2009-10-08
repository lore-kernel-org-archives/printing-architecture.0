Message-ID: <4ACE1BFA.80106@bredband.net>
Date: Thu, 08 Oct 2009 19:06:02 +0200
From: Per Hermansson <hermansson.per@bredband.net>
MIME-Version: 1.0
References: <4A8BCB46.9070401@gmail.com>
In-Reply-To: <4A8BCB46.9070401@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Common Printing Dialog: Print to (PDF)
	file
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till Kamppeter wrote:
> Hi,
>
> the final design planning is that all applications should have "Export 
> to PDF ..." in their file menus (like OpenOffice.org) with a dedicated 
> dialog, similar to the CPD but yet to be designed by OpenUsability.
>
> As this will take time and the current Qt and GTK printing dialogs 
> contain a "Print to File" facility which appears as an extra print 
> queue, we should implement such a "Print to File" queue also in the 
> Common Printing dialog, so that we get it quickly into the distros 
> without having a regression due to this feature missing.
>
> For the implementation note that the current dialogs do not send the 
> job into a CUPS queue for "Print to File" (we do not use facilities 
> like the cups-pdf package). "Print to File" opens a "Save as ..." 
> dialog when clicking on "Print" in the printing dialog. Then the user 
> chooses where to put his file. This process is completely done by the 
> printing dialog running as the calling user, nothing done by CUPS for 
> it. At least GTK allows to choose between PostScript and PDF for such 
> a file. For your implementation PDF would be the most important, 
> PostScript can perhaps be dropped if it makes it too complicated.
This part has been implemented in the GTK version of the CPD and is 
available in the bazaar repo.
Better late then never :-)
> It would be great if you could implement that in the Common Printing 
> Dialog, ideally with a possibility for the application to suppress 
> this feature (Lars, perhaps this needs an additional boolean parameter 
> in the CPDAPI).
>
No such checks are made yet but it should be easy to fix if we decide to 
update the CPDAPI.

/Per
