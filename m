Message-ID: <4CE55A84.3070006@gmail.com>
Date: Thu, 18 Nov 2010 17:55:32 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB03396379@m1a.epkowa.co.jp>
	<4B8241D4.2040207@gmail.com>
	<F30723B8678F584CB6A4269E911255CB034CE4DE@m1a.epkowa.co.jp>
	<4B8E4CEF.8040007@gmail.com>
	<F30723B8678F584CB6A4269E911255CB035D7CF6@m1a.epkowa.co.jp>
	<4BBBA6A9.5050005@gmail.com>
	<F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp>
	<4BD18655.8060000@gmail.com>
	<F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp>
	<4C091F92.7050102@gmail.com> <4C1284F4.3000707@gmail.com>
	<4C89CF0C.60003@avasys.jp>
In-Reply-To: <4C89CF0C.60003@avasys.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Updates for auto-downloadable printer
	packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>, yuji.saito@avasys.jp, hidenori.ishii@avasys.jp, =?UTF-8?B?6JCp5Y6fIOizouayuw==?= <kenji.hagiwara@avasys.jp>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have done some updates and fixes for the auto-downloadable driver 
package creation:

First, I have updated the documentation about creating and uploading the 
driver packages:

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/writingandpackagingprinterdrivers

In the section "Printer driver design"/"Components and purposes" I have 
added that the PPD files are also essential part of a driver package and 
that they need to be designed to comply with Adobe's specs and that they 
also should make use of the PPD extensions for the Common Printing 
Dialog and for CUPS. I have also updated the "Testing" section telling 
that the PPD extension use should be tested with a development snapshot 
of the Common Printing Dialog.

In the section "Setting up the package repositories" I have added a link 
to the component assignment rules file for the (already linked) 
"mkrepodeb" script for creating and indexing Debian package archives.

In addition, I have updated "mkrepodeb" fixing some bugs. Please 
re-download it if you have already used it:

http://www.openprinting.org/download/printdriver/debian/mkrepodeb

You do not need to rebuild or re-index any existing package archives.

    Till

