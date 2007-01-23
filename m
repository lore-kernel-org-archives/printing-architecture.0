Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45B64BF2.5000002@gmail.com>
Date: Tue, 23 Jan 2007 17:54:58 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <45B11475.4080704@gmail.com>
	<d75d8d530701191131o5b0ebdb9k5933705633cd1e49@mail.gmail.com>
	<45B12967.1000504@easysw.com>
In-Reply-To: <45B12967.1000504@easysw.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] FHS extension and CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: printing-architecture@lists.freestandards.org, Dan Kohn <dan@dankohn.com>, Ian Murdock <imurdock@imurdock.com>, lsb-discuss <lsb-discuss@lists.freestandards.org>

I have investigated somewhat more and my recommendations are to do the 
following in the distros:

1. Create directories

mkdir -p /usr/share/ppd (not needed in Ubuntu)
mkdir -p /opt/share/ppd
mkdir -p /usr/local/share/ppd

mkdir -p /usr/lib/printdriver
mkdir -p /opt/lib/printdriver
mkdir -p /usr/local/lib/printdriver

2, Set symlinks for CUPS to find the PPDs:

Ubuntu:

ln -s /usr/local/share/ppd /usr/share/ppd/1-local-admin
ln -s /opt/share/ppd /usr/share/ppd/2-third-party

Other distributions:

ln -s /usr/local/share/ppd /usr/share/cups/model/1-local-admin
ln -s /opt/share/ppd /usr/share/cups/model/2-third-party
ln -s /usr/share/ppd /usr/share/cups/model/3-distribution

These serves for CUPS finding the PPDs in the standardized directories. 
The numbers in the link names make the PPDs being listed in the right 
order, so that when the printer setup tool marks te first suitable PPD 
by default, the precedence rules are fulfilled.

The PPDs must contain absolute paths to the driver binaries. so that 
they get found.

    Till


Michael Sweet wrote:
> Ian Murdock wrote:
>> I'm appending a conversation I had with Tim Waugh of Red Hat about this
>> (posted with his permission). In short, unless it's a very trivial change
>> to make the current RHEL 5, SLE 10, etc. compliant with the printer 
>> driver
>> standard, it is not reasonable to expect this to be in LSB 3.2 (it was
>> my understanding that it would be trivial, as you'll read in the included
>> exchange). It should go without saying that it's not reasonable
>> to expect them to uplift to something that hasn't even been released yet.
>>
>> In short, the only way this will make it into LSB 3.2 is if it's trivial
>> to implement, i.e., a change to the CUPS configuration or the creation of
>> symlinks. If it takes more than that, this will have to wait for LSB 4.0.
>  > ...
> 
> OK, for PPD "paths", I would recommend simply making symlinks in
> /usr/share/cups/model so that CUPS can find the PPD files.  That
> works with current CUPS and all the way back to the 1.0 release.
> 
> Another method would be to provide a separate CUPS driver interface
> program that scans the FHS PPD directories, but IMHO that is
> overkill and completely unnecessary.
> 
> FWIW, I *do not* support the notion of a "relative" PPD name that is
> then looked up in a specific order of directories.  That is, adding
> a printer using a PPD file called "foo.ppd" should always use the
> same PPD file - otherwise you can run into a lot of issues ranging
> from simple confusion to security problems.  The separate system/
> local/vendor directories do not prevent a user/administrator from
> choosing a locally-modified PPD, and part of those modifications can
> be to the NickName so that the local users realize that the modified
> PPD is the one they want, e.g. "HP LaserJet 4000 - Use This One".
> 
> Similarly, LSB printer drivers should specify their install
> path in the cupsFilter attribute unless they are using a
> standard CUPS-supplied driver, currently rastertoescpx,
> rastertoepson, rastertohp, rastertolabel, or rastertopclx.
> 

