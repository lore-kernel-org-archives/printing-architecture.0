Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45C76F10.4080205@gmail.com>
Date: Mon, 05 Feb 2007 17:53:20 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB5820194A075@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB5820194A075@fmsmsx414.amr.corp.intel.com>
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
>> On the sample implementation the RPM installation does not complain 
>> about missing PPDs, but about missing directories:
>>
>> ---------------------------------------------------------------
>> ---------
>> bash-3.1# rpm -Uvh /tmp/work/splix-1.0.1-0.beta2.1lsb3.1.i486.rpm
>> error: Failed dependencies:
>>         /opt is needed by splix-1.0.1-0.beta2.1lsb3.1.i486
>>         /opt/lib/printdriver is needed by 
>> splix-1.0.1-0.beta2.1lsb3.1.i486
>>         /opt/share/ppd is needed by splix-1.0.1-0.beta2.1lsb3.1.i486
>> bash-3.1#
>> ---------------------------------------------------------------
> 
>> Once RPM should simply create the directories and not complain, and 
>> second, all the directories are there, I have created them 
>> before trying to install the RPM.
> 
> this is caused by a moderately recent change to upstream rpm.
> everything now has to be "owned", so creating the directories
> before installing the rpm is not sufficient, they actually have
> to be in the rpm database as belonging to some package.
> 

I can make an RPM providing the printing-related directories, but which 
package should own /opt then? This should be corrected in build 
environment and sample implementation. We need to somehow conserve the 
possibility to install software with RPM.

RPM in FC6 does not yet require all directories to be owned by an RPM 
package. Should we add something to the LSB so that installing with RPM 
keeps working, also if the distro as the new RPM? Does RPM have a 
command line switch to get back to the old behavior?

    Till

