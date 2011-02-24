Message-ID: <4D662705.9020803@gmail.com>
Date: Thu, 24 Feb 2011 10:38:13 +0100
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
	<20110131104358.GC4406@piware.de>
In-Reply-To: <20110131104358.GC4406@piware.de>
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
To: Martin Pitt <martin.pitt@ubuntu.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, Michael Vogt <michael.vogt@ubuntu.com>

Saito-san,

is your problem solved now? Can you now auto-download the Epson drivers 
if you are behind a proxy?

    Till


On 01/31/2011 11:43 AM, Martin Pitt wrote:
> Hello Yuji, hello Michael,
>
> yuji.saito@avasys.jp [2011-01-21 11:36 +0900]:
>> But I tried it in my company, it had a problem and didn't work. It was
>> because of proxy.
>
> I now fixed two things in current Natty:
>
> ubuntu-system-service (0.1.21) natty; urgency=low
>
>    * debian/control: Fix Vcs-Bzr to point to actual branch.
>    * backend/system-service-d: Fix D-Bus type of start-time argument to unbreak
>      polkit query. This makes global proxy settings etc. work again.
>    [...]
>
>   -- Martin Pitt<martin.pitt@ubuntu.com>   Mon, 31 Jan 2011 09:48:34 +0100
>
> jockey (0.8-0ubuntu5) natty; urgency=low
>
>    * data/handlers/nvidia.py: Fix typo.
>    * backend/com.ubuntu.DeviceDriver.service: Export {http,https,ftp}_proxy
>      variables from /etc/environment into the backend. (LP: #373795)
>
>   -- Martin Pitt<martin.pitt@ubuntu.com>   Mon, 31 Jan 2011 11:31:56 +0100
>
> I don't have a proxy, but I verified that with above changes, I can
> now set a proxy in System ->  Preferences ->  Network proxy (and apply
> it globally), and then run jockey. The backend now has the http_proxy
> (etc.) environment variables and uses them, as I get "connection
> refused" errors.
>
>>     And, in addition, I think it might be better that gpg uses http access
>>     to port 80 instead of hkp access by default, considering the users in
>>     the enterprise or the organization.
>
> I committed the change to Jockey now, but didn't upload it yet.
>
>> 3. In apt-get
>>     [System]-[Preferences]-[Network Proxy] (gnome-network-properties)
>>     doesn't set proxy for apt, so jockey can't download the driver. Ubuntu
>>     10.10 or older, gnome-network-properties could set proxy for apt.
>>     I created file like below, and jockey could download the driver.
>> ========================================================================
>> # cat<<EOF>  /etc/apt/apt.conf
>> Acquire::http::Proxy "http://proxy.example.com:port";
>> EOF
>> ========================================================================
>
> This sounds like another bug in either apt or ubuntu-system-service.
> The latter is supposed to set the proxy configuration for apt as well.
> So either the bug is that apt doesn't respect the proxy settings in
> /etc/environment, or that ubuntu-system-service doesn't write a proper
> apt configuration. Michael, how is this supposed to work?
>
> Thanks,
>
> Martin

