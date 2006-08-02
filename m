Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D0D5A5.7070900@gmail.com>
Date: Wed, 02 Aug 2006 18:41:09 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB58254DED6@fmsmsx414.amr.corp.intel.com>
In-Reply-To: <3F62CBEE02D6404E98C65934617EB58254DED6@fmsmsx414.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Proposed filesystem layout for print
 ppd and driver files
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
Cc: wendyp@jurassic.eng.sun.com, rusty@samba.org, printing-architecture <printing-architecture@freestandards.org>, "McDonald, Ira" <imcdonald@sharplabs.com>, Wendy Phillips <wendy.phillips@sun.com>

Wichmann, Mats D wrote:
>>>Except that I do NOT agree that the symlinks should be
>>>mandatory - if a print software vendor wants to store
>>>directly and ONLY in '/opt/share/ppd/<supplier>/<mfg>',
>>>that is sufficient and _preferable_ to the creation of
>>>more '/opt/<supplier>' directories for a useless level
>>>of indirection.
>>
>>Does the FHS allow files other than symlinks in subdirectories of
>>/opt/share/ and /opt/lib?
> 
> 
> Yes, but it does not allow a software packager to
> put them there.
> 
> "The directories /opt/bin, /opt/doc, /opt/include, /opt/info, /opt/lib,
> and /opt/man are reserved for local system administrator use. Packages
> may provide "front-end" files intended to be placed in (by linking or
> copying) these reserved directories by the local system administrator,
> but must function normally in the absence of these reserved
> directories."
> 
> (so it doesn't mention /opt/share explicitly but it seems
> like the intent is clear)
> 

Does this mean that for third-party vendors only

/opt/<supplier>/

is allowed and nothing outside of this?

Then I see the only solution in

/opt/<supplier>/ppd/<file>.ppd

for the PPD files of this supplier and requiring absolute paths in the
PPD to the driver, which can be at an arbitrary place in /opt/<supplier>/.

WDYT?

   Till

