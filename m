Return-Path: <olaf.meeuwissen@avasys.jp>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
References: <789E617C880666438EDEE30C2A3E8D100105A5DD@mailsrvnt05.enet.sharplabs.com>
Date: Thu, 08 Feb 2007 08:43:26 +0900
In-Reply-To: <789E617C880666438EDEE30C2A3E8D100105A5DD@mailsrvnt05.enet.sharplabs.com>
	(Ira McDonald's message of "Wed, 7 Feb 2007 09:36:39 -0800")
Message-ID: <87ejp1bkkh.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
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
Cc: 'TORATANI Yasumasa' <toratani.yasumasa@canon.co.jp>, printing-architecture@lists.freestandards.org

"McDonald, Ira" <imcdonald@sharplabs.com> writes:

> Hi,
>
> Oops - I hit SEND accidentally a minute ago.
>
> Yes - I like your proposed usage (consistent with
> JTAPI C headers).

For the publicly visible parts of the PCM API this proposed usage is
exactly what we are using at the moment, modulo a `sed 's/op/fsg/g'`.
If we decide to switch to "op" instead of "fsg", it's not a big issue
now because we haven't released anything yet.

For functions we additionally use CamelCase for the "Name" part (much
as I don't like this :-).  For all types we also consistently attach a
"_t" at the end although I believe this treads in the POSIX reserved
name space.  Sorry, don't have a ref handy.

For non-public API that is used by various parts of our implementation
(let's call it the protected API), we informally stick to a convention
where we drop the "fsg" prefix, so you get pcmCamelCase for functions
etc.

> I agree that a naming standard should go deeper
> than just the external function names.

A naming standard should cover (at least) everything that is part of
all the public OpenPrinting APIs.  That's is, everything that goes
into the header file(s) that our API users include.

Hmm, come to think of it, I think it should also cover the file names
themselves.  Do they get an "op" prefix, so you get oppcm.h an opjt.h
for example, or do they go into an op, openprinting or even an
OpenPrinting directory?
# What about case insensitive file systems?

Just my two yen.

> Cheers,
> - Ira
>
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Blue Roof Music / High North Inc
> PO Box 221  Grand Marais, MI  49839
> phone: +1-906-494-2434
> email: imcdonald@sharplabs.com
>
> -----Original Message-----
> From: printing-architecture-bounces@lists.freestandards.org
> [mailto:printing-architecture-bounces@lists.freestandards.org]On Behalf
> Of TORATANI Yasumasa
> Sent: Wednesday, February 07, 2007 12:19 AM
> To: McDonald, Ira
> Cc: printing-architecture@lists.freestandards.org
> Subject: Re: [Printing-architecture] Required prefixes for symbols in
> new OP specs
>
>
> Hi,
>
> I think we should clarify a new naming rule for functions,
> enums, typedefs, etc... but we can just convert the former
> FSG OpenPrinting naming rule we usually used to use "op"
> or "OP" in stead of "fsg" or "FSG".
>
> According to the JTAPI spec, we can re-define the rule as;
>
> Functions:
>   "op" + "[mod]" + "[Name]"
>   * All "mod" character must be lowercase.
>   * "Name" characters can be uppercase or lowercase, but first
>      "Name" character must be uppercase.
>   example)  opmodOpen( ... );
>
> Enums:
>   "OP" + "[MOD]" + "_" + "[NAME]"
>   * All alphabetic characters must be uppercase.
>   example)  OPMOD_OK
>
> Types:
>   "op" + "[mod]" + "_" + "[Name]"
>   example)  opmod_return_code_t
>
> Comment?
>
> TORATANI.
>
> On Tue, 6 Feb 2007 09:04:32 -0800 
> "McDonald, Ira" <imcdonald@sharplabs.com> wrote:
>
>> Hi,
>> 
>> Per our discussion at yesterday's Linux Foundation
>> Open Printing Steering Committee teleconference.
>> 
>> Effective immediately, future Open Printing module 
>> specs will use prefixes for external identifiers of
>> the form:
>> 
>>   "op" + "[mod]" + "_"
>> 
>> where:
>> 
>>   mod == module abbreviation (e.g., "pcm")
>> 
>> instead of the previous "fsg" + "[mod]" + "_" (e.g.,
>> "fsgjt_" in OP Job Ticket API).  But, we will NEVER
>> change the "fsgxx_" prefix in adopted and published
>> OP specs (for stability and backwards compatibility).
>> 
>> This change in standard OP prefixes will hopefully
>> future-proof our APIs against future organizational
>> changes and renames (e.g., FSG --> Linux Foundation).
>> 
>> Cheers,
>> - Ira
>> 
>> 
>> Ira McDonald (Musician / Software Architect)
>> Chair - Linux Foundation Open Printing WG
>> Blue Roof Music / High North Inc
>> PO Box 221  Grand Marais, MI  49839
>> phone: +1-906-494-2434
>> email: imcdonald@sharplabs.com
>> 
>> -- 
>> No virus found in this outgoing message.
>> Checked by AVG Free Edition.
>> Version: 7.5.432 / Virus Database: 268.17.28/672 - Release Date: 2/6/2007
>> 10:22 AM
>>  
>> 
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.freestandards.org
>> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>
> -----------------------------------------
> TORATANI Yasumasa
> Software Engineering Dept.23
> Platform Technology Development Headquarters, CANON INC.
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>
> -- 
> No virus found in this outgoing message.
> Checked by AVG Free Edition.
> Version: 7.5.432 / Virus Database: 268.17.30/674 - Release Date: 2/7/2007
> 3:33 PM
>  
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>

-- 
Olaf Meeuwissen                          EPSON AVASYS Corporation, SE1
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2

