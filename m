Message-ID: <4CFD1535.9050009@gmail.com>
Date: Mon, 06 Dec 2010 17:54:13 +0100
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
	<4C89CF0C.60003@avasys.jp> <4CE55A84.3070006@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>
In-Reply-To: <F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Updates for auto-downloadable printer
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
To: yuji.saito@avasys.jp
Cc: printing-architecture@lists.linux-foundation.org, kenji.hagiwara@avasys.jp

On 12/03/2010 07:16 AM, yuji.saito@avasys.jp wrote:
> Hi, Till.
>
> -----Original Message-----
> From: Till Kamppeter [mailto:till.kamppeter@gmail.com]
> Sent: Friday, November 19, 2010 1:56 AM
>>
>> In addition, I have updated "mkrepodeb" fixing some bugs. Please
>> re-download it if you have already used it:
>>
>> http://www.openprinting.org/download/printdriver/debian/mkrepodeb
>
> I checked the fixed "mkrepodeb" script.
> I noticed that the components in the deb repository have been changed.
>
> In the old OpenPrinting deb package repository (and in our current
> repository[1]),
> all driver packages had been included in the "main" component.
>
> But the current OpenPrinting deb package repository[2] has 4 components, and
> driver packages under "main-nonfree" and "contrib" are not included in
> "main".
>    * main
>    * main-nonfree
>    * contrib
>    * lsbddk
>
>  From what you said before, I understood that in OpenPrinting "main" will
> contain all packages (including non-free driver packages). Did the
> specification
> change?
>
> If so, could you tell me the exact meaning of the 4 components above. Also,
> in
> the future, I would appreciate it if we could be notified ahead of time of
> any
> changes that might affect external repository maintainers like us.
>

On the OpenPrinting web server we want to give the possibility to host 
packages in different categories, to make it easier for users and 
distributions to choose the packages to take into account when browsing 
available package repositories, especially to avoid that users get 
offered non-free or unsupported packages if they do not want them. The 
components are the same as distributions usually use:

- main: Fully supported packages under free licenses (on OpenPrinting
   packages without binary executables and signed packages)

- main-nonfree: As main, but non-free licenses

- contrib: Unsupported packages, especially drivers with binary
   executables which are not signed packages. Free licenses.

- contrib-nonfree: As contrib, but non-free licenses

- lsbddk: Only needed for development

As principal selection of drivers for a detected printer by the 
distributions is controlled by the OpenPrinting database, you do not 
need to use this scheme for packages which you host on your server. 
Consider the components.lst simply as an example how packages can be 
sorted into components by rules. You can simply let everything go into 
your server's main component by having a components.lst like this:

.* main

Important is to set the correct bits in the XML files set: free/non-free 
license, manufacturer-supplied, printer device IDs, ... and to have the 
signing correct. This is all correct for your packages. So do not worry. 
The new script is only to overcome a problem which the old one had with 
the Debian repository indexing and also to make it easier to update 
packages in your repository.

    Till

