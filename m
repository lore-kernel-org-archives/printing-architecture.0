Message-ID: <48F8400A.2010703@the-axe-effect.de>
Date: Fri, 17 Oct 2008 09:34:34 +0200
From: Tobias Hoffmann <lprint-list@the-axe-effect.de>
MIME-Version: 1.0
References: <9624da290810162221p57b55292l7f51e1cc155d6fd9@mail.gmail.com>
In-Reply-To: <9624da290810162221p57b55292l7f51e1cc155d6fd9@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Associate printer
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
Cc: printing-architecture@lists.linux-foundation.org

Matt Gessner wrote:
> I'm missing an important detail.  Can someone point me to an example 
> that shows how to tell HPIJS which printer I wish to use?  From the 
> 0.35 hpijs tar ball, I think I have enough information to do other 
> things, but this part is eluding me.
All the communication between your program and the hpijs is done via a
protocol called ijs, for which there is a simple library (libijs) under
MIT license. It can be found either as part of the ghostscript
sourcecode or at http://www.linuxprinting.org/ijs/. It includes the
protocol description and an example ijs_client_example using libijs.

Roughly sketched you do:
   ijs_invoke_server("hpijs");
   ijs_client_{open, begin_job}
   ijs_client_set_param({DeviceManufacturer,DeviceModel,....},"*your
values*");
   ijs_client_{begin_page,send_data,...}
   ... more pages and/or jobs and cleanup

   Tobias
