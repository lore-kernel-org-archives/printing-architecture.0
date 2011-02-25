Message-ID: <4D67A899.8090506@gmail.com>
Date: Fri, 25 Feb 2011 14:03:21 +0100
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
In-Reply-To: <F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>
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
To: yuji.saito@avasys.jp
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, martin.pitt@ubuntu.com

On 02/25/2011 08:00 AM, yuji.saito@avasys.jp wrote:
> On Feb 18, I upgraded the system and tested automatic-download in the
> proxy environment.  But it failed. When I checked the cause of
> problem, it seems to be the problem not only in the system but also in
> my test environment.  Now I am still investigating.
>
> By the way, system-config-printer became 1.3.1, and it disabled debug
> option "-setup-printer" and "--devid". (It's not a bug but inconvenience
> for developer, I think.) Therefore I tested with the actual printer.
> But system-config-printer didn't start when I plugged the printer.

The printer recognition not working for your printer(s) is a bug and so 
we need to fix it. So I need all details about the detection process. So 
please go to

https://wiki.ubuntu.com/DebuggingPrintingProblems

and follow especially the instructions of the sections:

- USB printer
- CUPS error_log

If the printer is network-connected (LAN, WLAN) you have to start 
system-config-printer manually (System -> Administration -> Printing), 
click the "Add" button, and choose the printer on the first screen of 
the add-printer wizard (open the secion for network printers and wait 
~15 sec for the network scan).

Independent whether the printer is on USB or on the network, also run 
system-config-printer from the command line with

system-config-printer --debug

click "Add", choose the printer and click "Forward". Complete the 
add-printer wizard, independent whether a driver download happens or 
not, and send the output in the terminal window (use "Reply to all").

Also attach your /var/log/syslog file, to see logs of the hot-plugging 
of your printer.

    Till
