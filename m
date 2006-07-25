Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44C5DD23.1030400@gmail.com>
Date: Tue, 25 Jul 2006 10:58:11 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <D90275D3D462F94E9B3892626804E08C015CE3C2@orsmsx412.amr.corp.intel.com>
In-Reply-To: <D90275D3D462F94E9B3892626804E08C015CE3C2@orsmsx412.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

Fujinaka, Todd wrote:
>>-----Original Message-----
>>From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
>>
>>But third-party CUPS drivers go into /usr/lib/cupss/filter and
>>/usr/share/cups/model. So there is third-party software which goes into
>>/usr.
> 
> 
> Yes, this is wrong, AFAIK. CUPS can have 3rd party drivers /usr (in
> specific places) as long as the distro provides them. Other people (like
> printer manufacturers) are not allowed to add to /usr.
> 
> 
>>So third-party CUPS drivers are violating the standards currently, due
>>to requirements of CUPS.
> 
> 
> Yes. Currently this is what CUPS does. Mike Sweet said he'd change
> things around to allow other directories (correct me if I'm wrong).
> 
> I keep harping on the FHS because it's a requirement of LSB, and I'm
> working on the LSB project. We'd like to have the printing directory
> structure in LSB, but if the printing directory structure conflicts with
> the FHS we'd have ambiguities. Ambiguous standard won't be much use to
> anyone.
> 

Then I would suggest that we settle on

/usr/share/ppd/<supplier>/<manufacturer>/

dor the PPDs which make part of the distribution and

/usr/lib/printdrivers/<supplier>

for the drivers which make part of the distribution.

The third-party PPDs go into

/opt/printing/ppd/<supplier>/<manufacturer>/

and the third-party drivers into

/opt/printing/drivers/<supplier>/

Are more directories needed?

WDYT?

   Till

