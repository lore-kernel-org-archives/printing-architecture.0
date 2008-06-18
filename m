Message-ID: <48597E4E.8090301@gmail.com>
Date: Wed, 18 Jun 2008 23:29:50 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080616181240.3FB0.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20080616181240.3FB0.TORATANI.YASUMASA@canon.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	June Meeting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-japan@lists.linux-foundation.org
Cc: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>, printing-architecture@lists.linux-foundation.org

Hi,

I have a small status report for the OpenPrinting Japan Meeting here:


Common Printing Dialog
----------------------

Lars Uebernickel and Peter Sikking have updated the specs for the 
dialog. They are nearly ready now and they are devided in

- UI specs (for desktop developers)
- CPDAPI (Common Printing Dialog API) specs (for application developers)
- PPD and Foomatic extension specs (for printer driver developers)

See the Wiki of the Common Printing dialog with links to all specs, to 
the BZR repositries, and to other interesting information here:

https://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialog

Discussion happens on the printing-architecture mailing list:

https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

See the archives;

https://lists.linux-foundation.org/pipermail/printing-architecture/2008/date.html


Distribution-Independent LSB-Based Driver Packages and PostScript PPDs
----------------------------------------------------------------------

Last week I have started the first test of indexing the package 
repositories. Now all packages are available as RPM and Debian packages 
and they are indexed for installation and auto-update via yum and 
apt-get. Signing will be done soon.

The Debian packages are auto-generated from the RPMs. To supply driver 
packages it is enough to make LSB-compliant RPMs.

Currently I am working with a GSoC student and an additional volunteer 
on the server infrastructure, like automatization procedures for package 
and PPD uploads and also on handling the license texts.

Especially license texts can now reside in separate files as some 
manufacturers can have problems with embedding them. In addition, the 
original, legally valid English license texts can now also get easily 
queried when a non-English UI language is used.

The PostScript PPDs of the printer manufacturer will now be managed with 
several different driver XML entries and there is a new 
foomatic-db-nonfree package. This allows also the upload of non-free PPD 
files.

See also

http://www.linuxfoundation.org/en/OpenPrinting/Database/DriverPackages
http://www.linuxfoundation.org/en/OpenPrinting/Database/Query

Discussion happens on the printing-foomatic mailing list:

https://lists.linux-foundation.org/mailman/listinfo/printing-foomatic

See the archives;

https://lists.linux-foundation.org/pipermail/printing-foomatic/2008/date.html

    Till


TORATANI Yasumasa wrote (Japanese version removed):
> This is a riminder of the OpenPrinting Japan June meeting.
> 
> Date: 6/19 14:30 -  (Postponed from June 5th to June 19th)
> Place: The Linux Foundation Japan meeting room
>     http://www.linux-foundation.jp/modules/tinyd0/index.php?id=10
> 
> Agenda:
> - Check progress of action items
> - Agenda discussion for the OpenPrinting/LFJapanSymposiumTokyo
> - Japan side status report discussion
> - CIM implementation suggestion from PWG
> 
> If you have any items for agenda, please let us know.
> 

