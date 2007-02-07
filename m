Return-Path: <mike@easysw.com>
Message-ID: <45CA2DDF.5000106@easysw.com>
Date: Wed, 07 Feb 2007 14:51:59 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
In-Reply-To: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Required prefixes for symbols in new
 OP	specs
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

McDonald, Ira wrote:
> Hi Olaf,
> 
> What prefix (if any) are you currently using for PCM
> functions, variables, and constants?
> 
> There was a strong concensus at the OP Steering Committee
> meeting this Monday that we should NOT use 'fsg' as the
> beginning of the prefix for any specs that are not yet 
> formally approved.
> 
> Relative to Michael Sweet's comment about #define to 
> make consistent prefix (e.g., in existing JTAPI C headers),
> that may or may not fix problems of linkers - dynamic
> linking in Linux appears rather limited relative to some
> other platforms - my impression.

This isn't an issue - you define the new prefix to point to
the old name, e.g.:

     #define opjt_foo fsgjt_foo

The compiler and linker use the old names, as before.  The
developer can use the new names and be none the wiser.

Another method is to provide shim functions for all of the
old names, calling the new names.  That has a performance
impact, however, so I recommend using #define instead.

Enumerations and other constants can be done the same way...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

