Return-Path: <mike@easysw.com>
Message-ID: <45CA9629.9060509@easysw.com>
Date: Wed, 07 Feb 2007 22:16:57 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D100105A5DA@mailsrvnt05.enet.sharplabs.com>
	<45CA2DDF.5000106@easysw.com> <45CA927F.2080306@Sun.COM>
In-Reply-To: <45CA927F.2080306@Sun.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
To: printing-architecture@lists.freestandards.org
Cc: "McDonald, Ira" <imcdonald@sharplabs.com>

Norm Jacobs wrote:
 > ...
 > FWIW, this will work for applications linking with libraries 
exporting the old interface, but will not solve the problem for loadable 
modules that are dlopen()'d and dlsym()'d.  In those cases, the shim 
method you
 > ...

Do we even need to worry about this?  Assuming a developer uses this
method, they can still use the old names (which are documented in the
specs) without relying on platform-specific weak linking support.

Regardless, the only time I can see using dlopen() or dlsym() is for
testing for newer versions of libraries at run-time, which will be
using the new naming conventions anyway, right?

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Publishing Software        http://www.easysw.com

