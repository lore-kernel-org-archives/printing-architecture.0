Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Thu, 08 Feb 2007 09:07:32 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <87ejp1bkkh.fsf@geek.avasys.jp>
References: <789E617C880666438EDEE30C2A3E8D100105A5DD@mailsrvnt05.enet.sharplabs.com>
	<87ejp1bkkh.fsf@geek.avasys.jp>
Message-Id: <20070208085904.D2E3.TORATANI.YASUMASA@canon.co.jp>
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
To: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Cc: printing-architecture@lists.freestandards.org, "McDonald,
	Ira" <imcdonald@sharplabs.com>

Hi, 

On Thu, 08 Feb 2007 08:43:26 +0900
Olaf Meeuwissen <olaf.meeuwissen@avasys.jp> wrote:

(snip)

> A naming standard should cover (at least) everything that is part of
> all the public OpenPrinting APIs.  That's is, everything that goes
> into the header file(s) that our API users include.
> 
> Hmm, come to think of it, I think it should also cover the file names
> themselves.  Do they get an "op" prefix, so you get oppcm.h an opjt.h
> for example, or do they go into an op, openprinting or even an
> OpenPrinting directory?
> # What about case insensitive file systems?

On page 13 of the JTAPI document, it already defines the header file
name, such as, "fsgjt.h", "fsgjt_attribute.h", etc. I believe we can use
the similar naming rule, for instance, "opmod.h", opmod_attribute.h", etc
which can keep consistency with the case insensitive file systems.

-----------------------------------------
TORATANI Yasumasa
Software Engineering Dept.23
Platform Technology Development Headquarters, CANON INC.

