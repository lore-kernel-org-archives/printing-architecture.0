Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CA1@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: RE: [Printing-architecture] RE: [Printing-summit] RE: where is th
	e  info on driver directories
Date: Thu, 8 Nov 2007 15:11:04 -0800 
MIME-Version: 1.0
Content-Type: text/plain
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org, printing-summit@lists.linux-foundation.org

< ... snip ... >

> > /usr/lib/supplier/pdpca
> >
< ... snip ... > 

> <ira>
> Why do we need a directory pdpca at all?  Why can't a conforming
> pdpca application just have a simple filename that starts pdpca?
> And be in the SAME directory with the driver package?
> </ira>

< ... snip ... >

Ok! But ... the pdpca is not a driver or such software that will be used by
an application, spooler, print-manager or the system; who can navigate to
any predefined directory tree/structure. The pdpca is a tool; and, as such,
to be used by individuals to test the driver; so my motivation was to make
it easy to find but ....

Glen  
