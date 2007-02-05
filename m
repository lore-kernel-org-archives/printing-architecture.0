Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45C764CA.4070000@gmail.com>
Date: Mon, 05 Feb 2007 17:09:30 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB58201949FE6@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB58201949FE6@fmsmsx414.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] Distribution-independent
 printer driver package --first shot
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Wichmann, Mats D" <mats.d.wichmann@intel.com>
Cc: printing-architecture@lists.freestandards.org, lsb-discuss <lsb-discuss@lists.freestandards.org>

Wichmann, Mats D wrote:
>> I have intendedly left it out as the LSB Build Environment 
>> does not have an "lsb" package installed. It should have such a package
> 
>> (meta-package?) installed so that you can install LSB packages in it.
> 
> At least the lsb sample implementation (lsbsi) does or should
> have this.  I'm not sure of the thinking behind leaving it
> of the buildenv, if it wasn't just an omission. Wouldn't hurt
> to file a bug on this as a reminder.
>

On the sample implementation the RPM installation does not complain 
about missing PPDs, but about missing directories:

------------------------------------------------------------------------
bash-3.1# rpm -Uvh /tmp/work/splix-1.0.1-0.beta2.1lsb3.1.i486.rpm
error: Failed dependencies:
         /opt is needed by splix-1.0.1-0.beta2.1lsb3.1.i486
         /opt/lib/printdriver is needed by splix-1.0.1-0.beta2.1lsb3.1.i486
         /opt/share/ppd is needed by splix-1.0.1-0.beta2.1lsb3.1.i486
bash-3.1#
------------------------------------------------------------------------

Once RPM should simply create the directories and not complain, and 
second, all the directories are there, I have created them before trying 
to install the RPM.

>> Why can I not use "Requires lsb >= 3.1", are the LSBs not backward 
>> compatible?
> 
> You can and should - at least at the moment when there's no
> such thing as a 3.2.  pkgchk is saying it didn't see this...
>

I have changed it to "lsb >= 3.1" now.

    Till

