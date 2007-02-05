Return-Path: <till.kamppeter@gmail.com>
Message-ID: <45C75C04.3090003@gmail.com>
Date: Mon, 05 Feb 2007 16:32:04 +0000
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB58201949F94@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB58201949F94@fmsmsx414.amr.corp.intel.com>
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
> This error is real:
> 
>> Error: Didn't see expected dependency lsb=3.1
> 
> while you say "it should work on any modern distro fulfilling 
> LSB 3.1" pkgchk thinks you didn't build the package with that
> requirement.
>

I have intendedly left it out as the LSB Build Environment does not have 
an "lsb" package installed. It should have such a package 
(meta-package?) installed so that you can install LSB packages in it.

Why can I not use "Requires lsb >= 3.1", are the LSBs not backward 
compatible? A package made for LSB 3.1 should also work under LSB 3.2. 
Or will the LSB 3.2 package contain "Provides: lsb 3.1, lsb 3.0"?

    Till

