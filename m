Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D1FFBB.2060400@gmail.com>
Date: Thu, 03 Aug 2006 15:52:59 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <3F62CBEE02D6404E98C65934617EB58254DED6@fmsmsx414.amr.corp.intel.com>	<44D0D5A5.7070900@gmail.com>
	<17617.20772.300641.573886@localhost.localdomain>
In-Reply-To: <17617.20772.300641.573886@localhost.localdomain>
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
To: Christopher Yeoh <cyeoh@samba.org>
Cc: "Wichmann, Mats D" <mats.d.wichmann@intel.com>, wendyp@jurassic.eng.sun.com, rusty@samba.org, printing-architecture <printing-architecture@freestandards.org>, "McDonald, Ira" <imcdonald@sharplabs.com>, Wendy Phillips <wendy.phillips@sun.com>

So then I would say we go with my last suggestion:

Distro-supplied:
  /usr/share/ppd/<supplier>/<manufacturer>/
  /usr/lib/printdriver/<supplier>/

Vendor-supplied:
  /opt/share/ppd/<supplier>/<manufacturer>/ be a symlink to
    /opt/<vendor>/<undefined_place_in_hierarchy>
  /opt/lib/printdriver/<supplier>/ be a symlink
    /opt/<vendor>/<undefined_place_in_hierarchy>

Local admin:
  /usr/local/share/ppd/<supplier>/<manufacturer>/
  /usr/local/lib/printdriver/<supplier>/

and the install scripts should by default (asking could be supressed by
a command line option) not overwrite files without asking the user.

Using /opt/share/ppd/<supplier>/<manufacturer>/ and
/opt/lib/printdriver/<supplier>/ for the symlinks should make file
clashes usually not happening. Perhaps we should reserve these with LANANA.

   Till


Christopher Yeoh wrote:
>>>"The directories /opt/bin, /opt/doc, /opt/include, /opt/info, /opt/lib,
>>>and /opt/man are reserved for local system administrator use. Packages
>>>may provide "front-end" files intended to be placed in (by linking or
>>>copying) these reserved directories by the local system administrator,
>>>but must function normally in the absence of these reserved
>>>directories."
>>>
>>>(so it doesn't mention /opt/share explicitly but it seems
>>>like the intent is clear)
>>>
>>
>>Does this mean that for third-party vendors only
>>
>>/opt/<supplier>/
>>
>>is allowed and nothing outside of this?
>>
> 
> 
> No, symlinks are fine, but probably should be installed as part of a
> post-install script with permission from the sysadmin.
> 
> Just to add a bit of background, /opt/<vendor|package> was created to
> avoid namespace clashes. The ability to copy/symlink to say /opt/bin
> (and it really probably should be only symlinking) was added so user's
> paths didn't need to be modified for every package that was installed.
> 
> So I'd like to keep the current practice of only installing into
> /opt/<vendor>, and creating symlinks from /opt/lib or /opt/share to
> make things easier for applications that need find the ppd or driver
> files.
> 
> This, I think is the solution that best matches the current design of
> the /opt in the FHS, even though it is a bit more complex than just
> installing direct into /opt/lib or /opt/share.
> 
> In practice, the "permission from the sysadmin" is perhaps not needed
> for the symlinking pppd files *if* something like LANANA can guarantee
> no namespace clashes. But packages should be very careful never to
> overwrite existing links.
> 
> Chris

