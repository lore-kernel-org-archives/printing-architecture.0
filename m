Message-ID: <4D6D6D45.3070907@gmail.com>
Date: Tue, 01 Mar 2011 23:03:49 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp>	
	<4BD18655.8060000@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp>	
	<4C091F92.7050102@gmail.com> <4C1284F4.3000707@gmail.com>	
	<4C89CF0C.60003@avasys.jp> <4CE55A84.3070006@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>	
	<4D265C61.2000703@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>	
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>	
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>	
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>
	<4D6D5FD5.4010506@gmail.com>
In-Reply-To: <4D6D5FD5.4010506@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Ubuntu Natty the first distribution
 which does automatic download of binary printer driver packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, martin.pitt@ubuntu.com

Saito-san,

for testing the automatic driver download on current Natty, please 
update to the current state of the system, via

sudo apt-get update
sudo apt-get dist-upgrade

and then apply the patch attached to my previous mail using the commands:

cd /usr/share/system-config-printer/
sudo patch -p1 < 
0001-Activated-and-fixed-testing-mode-for-device-ID-drive.patch

Then do tests by running the commands:

cupsctl FileDevice=yes
cd /usr/share/system-config-printer/
python newprinter.py --setup-printer=file:/tmp/printout 
--devid="MFG:Epson;MDL:Stylus NX110;"

Try device IDs of different Epson printers and see whether the 
appropriate driver downloads. Especially test also in environments where 
the internet is only accessible through a proxy.

    Till

On 03/01/2011 10:06 PM, Till Kamppeter wrote:
> On 02/25/2011 10:26 PM, Tim Waugh wrote:
>> On Fri, 2011-02-25 at 13:40 +0100, Till Kamppeter wrote:
>>> Tim, is there a new way to test the driver selection and
>>> automatic-download for a given device ID without needing to modify the
>>> code of system-config-printer and without having the appropriate printer
>>> physically? Or do I need to re-develop this feature?
>>
>> Use: python newprinter.py --with-uri URI
>> (requires current git master... I'll do a 1.3.2 release in a week or so)
>
> Unfortunately, this testing mode does not work. I have fixed it,
> including the possibility to supply device IDs. Patch attached.
>
> Till

