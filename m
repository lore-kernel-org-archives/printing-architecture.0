Message-ID: <49026C64.40308@fakenhamweb.co.uk>
Date: Sat, 25 Oct 2008 01:46:28 +0100
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>
	<49021D0B.4040708@apple.com>
In-Reply-To: <49021D0B.4040708@apple.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Hi :)

Michael R Sweet wrote:

> Moreover, a fully data-driven
> Gutenprint has the built-in capability to regenerate a PPD with the
> current data,

Does that include PPDs already assigned to an existing queue? (i.e. 
those in /etc/cups/ppd/)

> The APPrinterPreset PPD keyword can already be used for this and has
> been adopted by OpenPrinting...

So assuming the answer to my previous question is "yes", our 
hypothetical admin tool could be used not only to tune or linearize 
existing Quick Presets from the Common Printing Dialog, but to directly 
create new ones.  That is very cool.

Is the value of APPrinterPreset available to the driver, BTW, or is it 
merely something that is used to set other variables automatically?  If 
we're hoping to fetch tunings or linearization curves based on the 
preset, we would of course need to know which preset was selected!

All the best,
--
Alastair M. Robinson

