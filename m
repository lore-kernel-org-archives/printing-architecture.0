Message-ID: <4C4D78FF.30302@gmail.com>
Date: Mon, 26 Jul 2010 14:01:03 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB040AFE0D@m1a.epkowa.co.jp>
In-Reply-To: <F30723B8678F584CB6A4269E911255CB040AFE0D@m1a.epkowa.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] To unite "Automatic
 Download/Installation" mechanism.
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: kota.seki@avasys.jp
Cc: printing-architecture@lists.linux-foundation.org, twaugh@redhat.com, jsmeix@novell.com

On 07/26/2010 09:44 AM, kota.seki@avasys.jp wrote:
> Hi All.
>
> This is my first mail to you.
> I work for AVASYS Corporation.
>
> Now we try to realize "Automatic Download/Installation".
> <http://www.linuxfoundation.org/images/8/81/Driver-auto-download.pdf>
> We build printer driver using LSB.
> We've uploaded XML file and link to repository to OpenPrinting DB, and We
> public driver's repository.
> And now we are checking "Automatic Download/Installation" possible or not.
>
> But we have problems about this.
> OpenPrinting proposed a mechanism about "Automatic Download/Installation".
>
> In Ubuntu 10.04, it has some bugs but if correct them using small patch file,
> it is work correct.
>

Ubuntu simply accepted the concept and supplied a client software 
(Jockey) to do the downloads.

> But in Fedora13, it not works. Because Fedora13 realizes "Automatic
> Download/Installation" using own mechanism.
> <https://fedoraproject.org/wiki/Features/AutomaticPrintDriverInstallation>
>

Fedora/Red Hat has developed an own concept which is based on purely 
using package repositories without using a centralized database. This is 
mainly intended for Fedora to distribute their own packages of free 
software printer drivers. We are also looking into adding support for 
this concept into our packages as an additional access method.

But note that it has a disadvantage against our concept of using the 
central OpenPrinting database. To find drivers you need the URLs of 
every manufacturer's/driver supplier's repository, with our concept you 
only need to search the OpenPrinting database. To make OpenPrinting a 
one-stop location when using the Fedora/Red Hat concept we would need to 
carry all driver packages on the OpenPrinting server physically (not 
only links to them) and then distributions could make the Linux 
Foundation responsible for the packages.

> And in OpenSUSE 11.3, Novell say that "Do you sign a legal agreement with
> Novell to take responsibility?"
> In the above PDF file at page 6 say that "Manufacturers should sign a legal
> agreement to take responsibility." But it is not clear.
>   - Who sign with Manufacturers?
>   - How do I sign?
>   - Is detail decided?
>

We proceed as described on

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/writingandpackagingprinterdrivers#Signing_your_packages

using method 3 in "Build a trusted path to distributions".

> These seems each distribution require each requests.
> (Must we support each distribution mechanism..!?)
> We want to realize this all distributions using same mechanism.
>

My intention is that all distributions use the same concept and 
therefore I have tried to fulfill all the distribution's need with my 
design, not only providing LSB-based packages in indexed repositories of 
both RPM and DEB packages but also allow selection with criteria like 
whether drivers are free software, whether they contain only PPDs or 
also binary executables, signing, hosting by manufaturer, repository 
info for integrating packages in the distro's auto-update concepts, ...

> We want to unite the mechanism in this communication.
> Would we have discussion on this mail?

Yes, feel free to discuss on this mailing list.

    Till
