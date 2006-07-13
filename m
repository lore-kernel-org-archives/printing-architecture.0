Return-Path: <till.kamppeter@gmx.net>
Message-ID: <44B6480D.4080005@gmx.net>
Date: Thu, 13 Jul 2006 15:18:05 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
References: <D90275D3D462F94E9B3892626804E08C013E5516@orsmsx412.amr.corp.intel.com>
In-Reply-To: <D90275D3D462F94E9B3892626804E08C013E5516@orsmsx412.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] directory structure / file name
	conventions
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
Cc: printing-architecture@lists.freestandards.org

Fujinaka, Todd wrote:
> After studying the Filesystem Hierarchy Standard, I would like to
> propose two additional directories (/opt/openprinting/share/ppd and
> /usr/local/share/ppd) for addition to the single PPD directory
> structure.
> 
> Section 4.1 describes the purpose of /usr in the following manner:
> 
> "/usr is the second major section of the filesystem. /usr is shareable,
> read-only data. That means that /usr should be shareable between various
> FHS-compliant hosts and must not be written to. Any information that is
> host-specific or varies with time is stored elsewhere."
> 
> In usage, this has been used to mean that an OS can update
> /usr/share/ppd/*, but a 3rd-party vendor must not write to
> /usr/share/ppd/*. This severely limits the ability for vendors to add
> their own PPD files unless they are accepted into the base install of an
> FHS-conforming system.
> 
> The appropriate place for 3rd-party vendors is the /opt hierarchy.
> Section 3.13.1 describes the purpose of /opt as follows:
> 
> "/opt is reserved for the installation of add-on application software
> packages.
> 
> "A package to be installed in /opt must locate its static files in a
> separate /opt/<package> or /opt/<provider> directory tree, where
> <package> is a name that describes the software package and <provider>
> is the provider's LANANA registered name."
> 
> I would suggest that a "provider" name of openprinting be used so any
> additional vendor PPD files would be stored in:
> /opt/openprinting/share/ppd/*
> 
> Additionally, the system administrator is allowed access to /usr/local
> which is described in section 4.8.1 with the purpose:
> 
> "The /usr/local hierarchy is for use by the system administrator when
> installing software locally. It needs to be safe from being overwritten
> when the system software is updated. It may be used for programs and
> data that
> are shareable amongst a group of hosts, but not found in /usr.
> 
> "Locally installed software must be placed within /usr/local rather than
> /usr unless it is being installed to replace or upgrade software in
> /usr."
> 
> Therefore I would suggest an additional /usr/local/share/ppd/* for the
> use of any system administrators.
> 
> In summary, I suggest expanding the locations for PPD file from
> /usr/share/ppd to also include /opt/openprinting/share/ppd and
> /usr/local/share/ppd. This follows the FHS standard while still
> retaining the OpenPrinting group's requirement of strictly defining the
> location of PPD files.
> 
> Thanks,
> Todd Fujinaka

Some questions:

- Should we also have similar alternatives for /usr/lib/print-drivers/?
Theoretically driver could be put anywhere with absolute paths in PPDs,
but for enhanced security environments it is important to have them at
determined places and also for the drivers themselves we must be FHS
compliant.

- Can we use /opt/printing instead of /opt/openprinting, as the
drivers/PPDs do not come from FSG OpenPrinting.

- "/usr is shareable, read-only data" for me would only mean that while
running programs this should not be written, but software packages can
be installed here. Is there another clause in the FHS telling that only
software of the OS distribution can be installed here?

- There is still one problem with integrating these directories with
CUPS: If a printer needs a special backend for the low-level
communication, like for example the "hp" CUPS backend for the HP
printers used with HPLIP, dropping them into something like
/usr/lib/print-drivers/<supplier>/ will not work, as CUPS looks only in
/usr/lib/cups/backend and absolute paths as device URI are not possible.
 How can one solve this problem.

   Till

