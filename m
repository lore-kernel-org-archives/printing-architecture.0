Return-Path: <imcdonald@sharplabs.com>
Message-ID: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Wed, 7 Feb 2007 09:27:42 -0800 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
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
To: 'Olaf Meeuwissen' <olaf.meeuwissen@avasys.jp>
Cc: printing-architecture@lists.freestandards.org

Hi Olaf,

What prefix (if any) are you currently using for PCM
functions, variables, and constants?

There was a strong concensus at the OP Steering Committee
meeting this Monday that we should NOT use 'fsg' as the
beginning of the prefix for any specs that are not yet 
formally approved.

Relative to Michael Sweet's comment about #define to 
make consistent prefix (e.g., in existing JTAPI C headers),
that may or may not fix problems of linkers - dynamic
linking in Linux appears rather limited relative to some
other platforms - my impression.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: imcdonald@sharplabs.com

-----Original Message-----
From: Olaf Meeuwissen [mailto:olaf.meeuwissen@avasys.jp]
Sent: Tuesday, February 06, 2007 7:59 PM
To: McDonald, Ira
Cc: printing-architecture@lists.freestandards.org
Subject: Re: [Printing-architecture] Required prefixes for symbols in
new OP specs


Hi Ira,

"McDonald, Ira" <imcdonald@sharplabs.com> writes:

> Effective immediately, future Open Printing module 
> specs will use prefixes for external identifiers of
> the form:
>
>   "op" + "[mod]" + "_"
>
> where:
>
>   mod == module abbreviation (e.g., "pcm")

I just want to make sure that for PCM we _have_ to use the "oppcm_"
prefix before I convert all the code and docs we are hacking on.

Thanks,
-- 
Olaf Meeuwissen                          EPSON AVASYS Corporation, SE1
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2

-- 
No virus found in this outgoing message.
Checked by AVG Free Edition.
Version: 7.5.432 / Virus Database: 268.17.30/674 - Release Date: 2/7/2007
3:33 PM
 

