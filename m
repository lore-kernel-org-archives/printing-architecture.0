Message-ID: <4D3E0487.40500@gmail.com>
Date: Tue, 25 Jan 2011 00:00:23 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <F30723B8678F584CB6A4269E911255CB03396379@m1a.epkowa.co.jp><4B8241D4.2040207@gmail.com><F30723B8678F584CB6A4269E911255CB034CE4DE@m1a.epkowa.co.jp><4B8E4CEF.8040007@gmail.com><F30723B8678F584CB6A4269E911255CB035D7CF6@m1a.epkowa.co.jp><4BBBA6A9.5050005@gmail.com><F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp><4BD18655.8060000@gmail.com><F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp><4C091F92.7050102@gmail.com>
	<4C1284F4.3000707@gmail.com><4C89CF0C.60003@avasys.jp>
	<4CE55A84.3070006@gmail.com><F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>
	<4D265C61.2000703@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
In-Reply-To: <F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
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
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, martin.pitt@ubuntu.com

I have talked with Martin Pitt about the problem of missing Proxy 
support in system-config-printer and Jockey. He will look into this.

    Till

On 01/21/2011 03:36 AM, yuji.saito@avasys.jp wrote:
> Hello, Till, Martin.
>
> On Fri, 2011-01-07 at 01:20 +0100, Till Kamppeter wrote:
>> Hi,
>>
>> Ubuntu Natty (11.04, to be released end of April) will be the first
>> Linux distribution which automatically downloads binary printer driver
>> packages from manufacturers via OpenPrinting.
>
> Thank you for achieving automatic download.
>
> I checked in my home, and it works perfectly. I could read driver's
> license, and I could select one from 2 drivers for 1 printer.
>
> But I tried it in my company, it had a problem and didn't work. It was
> because of proxy. Result of my quick analysis, it could work if the
> following 3 points are changed.
>
> 1. In system-config-printer (package:
> python-cupshelpers_1.2.3+20100723-0ubuntu13)
>     system-config-printer accesses to OpenPrinting.org. But it did't
>     read "http_proxy". I tried like below, and it could work.
>
>     (Caution! It is just example. I think proxy information should be
>      acquired from "http_proxy" environment variable.)
> ========================================================================
> --- /usr/share/pyshared/cupshelpers/openprinting.py.ORG	2011-01-04
> 23:39:02.000000000 +0900
> +++ /usr/share/pyshared/cupshelpers/openprinting.py	2011-01-20
> 09:58:58.000000000 +0900
> @@ -59,8 +59,9 @@
>           # Send request
>           result = None
>           status = 1
> +        myproxies = {'http': 'http://proxy.example.com:port'}
>           try:
> -            conn = urllib.urlopen(self.url);
> +            conn = urllib.urlopen(self.url, proxies=myproxies);
>               status = conn.getcode();
>               if (status == 200):
>                   result = conn.read()
> ========================================================================
>
> 2. In jockey (package: jockey-common_0.8-0ubuntu3)
>     Jockey seems to acquire the public key from driver's fingerprint.
>     But gpg command in jockey didn't read "http_proxy".
>     I tried like below, and it could work.
>
>     (Caution! It is just example. I think proxy information should be
>      acquired from "http_proxy" environment variable.)
> ========================================================================
> --- /usr/share/pyshared/jockey/oslib.py.ORG	2011-01-20 03:57:54.000000000
> +0900
> +++ /usr/share/pyshared/jockey/oslib.py	2011-01-20 13:32:36.000000000 +0900
> @@ -436,7 +436,9 @@
>               # the fingerprint
>               gpg = subprocess.Popen(['gpg', '--homedir', gpghome,
>                   '--no-default-keyring', '--primary-keyring',
> default_keyring,
> -                '--keyserver', self.gpg_key_server, '--recv-key', keyid],
> +                '--keyserver', self.gpg_key_server,
> +                '--keyserver-options', 'http-proxy=http://proxy.example.com:
> port',
> +                '--recv-key', keyid],
>                   stdout=subprocess.PIPE, stderr=subprocess.PIPE,
>                   env={'PATH': os.environ.get('PATH', '')})
>               (out, err) = gpg.communicate()
> ========================================================================
>     And, in addition, I think it might be better that gpg uses http access
>     to port 80 instead of hkp access by default, considering the users in
>     the enterprise or the organization.
>
> 3. In apt-get
>     [System]-[Preferences]-[Network Proxy] (gnome-network-properties)
>     doesn't set proxy for apt, so jockey can't download the driver. Ubuntu
>     10.10 or older, gnome-network-properties could set proxy for apt.
>     I created file like below, and jockey could download the driver.
> ========================================================================
> # cat<<EOF>  /etc/apt/apt.conf
> Acquire::http::Proxy "http://proxy.example.com:port";
> EOF
> ========================================================================
>
> Best regards.
>
> Saito
>

