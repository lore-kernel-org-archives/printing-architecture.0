Return-Path: <glen.petrie@eitc.epson.com>
Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB28@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 18 May 2007 13:06:56 -0700
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Embedded Client Thin-Thread: Initial
	Information
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

Ira,

I really don't want to beat-the-horse-to-death, but, since any activity we
take on requires a lot of time and effort, I would like to hash it out now.

Competition?  Or proving the LFOP architecture?  Don't get me wrong I think
a thin-thread embedded-client would be a great solution and something that I
believe is needed.  However, (there is that 'however' again) what is the
LFOP's ultimate goal?  Is our goal to provide solutions or provide a
standard print architecture (including API's and properties, etc.)
independent of environment?  If it is latter, then this means, independent
of environment, "we [need to] fix API function names and property names and
value names into one standard namespace".  So, the question becomes "what is
the path to the LFOP "standard print architecture".  Do we start with the
desktop or the embedded?  Embedded has a smaller overall scope compared to
desktop; that is, do we start with something "small" and migrate to larger;
remembering the goal is an environment independent architecture?  Then we
show or document how to migrate existing API standards to be coherent with
the LFOP "standard print architecture".  The alternative is to start with
the existing API standards in a desktop environment; then apply the same
approach of migration to achieve the same goal.

Another question to those who authored the existing API standards; "Would
you be willing to migrate your solution to a LFOP standard print
architecture?".  If individuals or groups answer no; then I would like to
have more discussion on "what are the LFOP goals and, thus, our activities".
As one of the authors of the JTAPI, I would be favor of a migration to a
"standard print architecture" simply because a standard architecture would
provide unification and coherence. (For JTAPI, the changes would be
"cosmetic name fixups" only be I believe it the most comprehensive base we
have at this time.)

If CUPS or another deployed solution has a functional, scalable and industry
accepted architecture; then, we should adopt their architecture; thus, I
would like to have more discussion on "what are the LFOP goals and, thus,
our activities."  For example, the activity could be "how to create an
embedded-client solution based on their architecture".   If CUPS does not an
industry accepted architecture; would CUPS be willing to migrate to a
standard print architecture?

glen  

-----Original Message-----
From: Ira McDonald [mailto:blueroofmusic@gmail.com] 
Sent: Friday, May 18, 2007 12:15 PM
To: Petrie, Glen; printing-architecture@lists.freestandards.org; Ira
McDonald
Subject: Re: [Printing-architecture] Embedded Client Thin-Thread: Initial
Information

Hi Glen,

I think Desktop Clients is fatal - no traction there to make changes
(too much competition from CUPS and other deployed solutions).

Let's stick to Embedded Client Thin Thread as a target.

On reflection, let's assume we fix API function names and property
names and value names into one standard namespace.  And then
we revise the component API standards (PAPI, JTAPI, OPVP, etc.)
accordingly subsequently (the following year)

Cheers,
- Ira


