Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Wed, 07 Feb 2007 14:19:12 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <789E617C880666438EDEE30C2A3E8D100105A5D9@mailsrvnt05.enet.sharplabs.com>
References: <789E617C880666438EDEE30C2A3E8D100105A5D9@mailsrvnt05.enet.sharplabs.com>
Message-Id: <20070207135846.D2CA.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Required prefixes for symbols in new OP
	specs
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: printing-architecture@lists.freestandards.org

Hi,

I think we should clarify a new naming rule for functions,
enums, typedefs, etc... but we can just convert the former
FSG OpenPrinting naming rule we usually used to use "op"
or "OP" in stead of "fsg" or "FSG".

According to the JTAPI spec, we can re-define the rule as;

Functions:
  "op" + "[mod]" + "[Name]"
  * All "mod" character must be lowercase.
  * "Name" characters can be uppercase or lowercase, but first
     "Name" character must be uppercase.
  example)  opmodOpen( ... );

Enums:
  "OP" + "[MOD]" + "_" + "[NAME]"
  * All alphabetic characters must be uppercase.
  example)  OPMOD_OK

Types:
  "op" + "[mod]" + "_" + "[Name]"
  example)  opmod_return_code_t

Comment?

TORATANI.

On Tue, 6 Feb 2007 09:04:32 -0800 
"McDonald, Ira" <imcdonald@sharplabs.com> wrote:

> Hi,
> 
> Per our discussion at yesterday's Linux Foundation
> Open Printing Steering Committee teleconference.
> 
> Effective immediately, future Open Printing module 
> specs will use prefixes for external identifiers of
> the form:
> 
>   "op" + "[mod]" + "_"
> 
> where:
> 
>   mod == module abbreviation (e.g., "pcm")
> 
> instead of the previous "fsg" + "[mod]" + "_" (e.g.,
> "fsgjt_" in OP Job Ticket API).  But, we will NEVER
> change the "fsgxx_" prefix in adopted and published
> OP specs (for stability and backwards compatibility).
> 
> This change in standard OP prefixes will hopefully
> future-proof our APIs against future organizational
> changes and renames (e.g., FSG --> Linux Foundation).
> 
> Cheers,
> - Ira
> 
> 
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Blue Roof Music / High North Inc
> PO Box 221  Grand Marais, MI  49839
> phone: +1-906-494-2434
> email: imcdonald@sharplabs.com
> 
> -- 
> No virus found in this outgoing message.
> Checked by AVG Free Edition.
> Version: 7.5.432 / Virus Database: 268.17.28/672 - Release Date: 2/6/2007
> 10:22 AM
>  
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture

-----------------------------------------
TORATANI Yasumasa
Software Engineering Dept.23
Platform Technology Development Headquarters, CANON INC.

