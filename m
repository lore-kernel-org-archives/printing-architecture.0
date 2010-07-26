Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Date: Mon, 26 Jul 2010 16:44:25 +0900
Message-ID: <F30723B8678F584CB6A4269E911255CB040AFE0D@m1a.epkowa.co.jp>
From: <kota.seki@avasys.jp>
Subject: [Printing-architecture] To unite "Automatic Download/Installation"
	mechanism.
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com, twaugh@redhat.com, jsmeix@novell.com
Cc: kota.seki@avasys.jp

Hi All.

This is my first mail to you.
I work for AVASYS Corporation.

Now we try to realize "Automatic Download/Installation".
<http://www.linuxfoundation.org/images/8/81/Driver-auto-download.pdf>
We build printer driver using LSB.
We've uploaded XML file and link to repository to OpenPrinting DB, and We
public driver's repository.
And now we are checking "Automatic Download/Installation" possible or not.

But we have problems about this.
OpenPrinting proposed a mechanism about "Automatic Download/Installation".

In Ubuntu 10.04, it has some bugs but if correct them using small patch file,
it is work correct.

But in Fedora13, it not works. Because Fedora13 realizes "Automatic
Download/Installation" using own mechanism.
<https://fedoraproject.org/wiki/Features/AutomaticPrintDriverInstallation>

And in OpenSUSE 11.3, Novell say that "Do you sign a legal agreement with
Novell to take responsibility?"
In the above PDF file at page 6 say that "Manufacturers should sign a legal
agreement to take responsibility." But it is not clear. 
 - Who sign with Manufacturers?
 - How do I sign?
 - Is detail decided?

These seems each distribution require each requests. 
(Must we support each distribution mechanism..!?) 
We want to realize this all distributions using same mechanism. 

We want to unite the mechanism in this communication.
Would we have discussion on this mail?

Regards,
 Seki KOTA.
