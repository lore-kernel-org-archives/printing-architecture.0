Return-Path: <glen.petrie@eitc.epson.com>
Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB26@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 18 May 2007 10:40:02 -0700
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

I believe it is bit more than "cosmetic name fixups"!  I also don't believe
that an embedded-client will be implemented using Solaris or a standard
Linux distributions; maybe a QT core or some other Posix core.  Anyway, I
understand your point; however, (there is always has to be a however) I am
worried that gluing together the existing stuff "as is" will simple result
in too large of a code base to be practical for any embedded-clients.
Therefore, I suggest we need to move the thin-thread from embedded-clients
to desktop-clients.  I remember all the discussions and reasons we went to
embedded-clients but there will be less practical risks/issues if we now
target desktop-clients.  After that, we can see how it will fit in the
embedded-clients.  We can still the scope of a desktop-client.

glen

-----Original Message-----
From: Ira McDonald [mailto:blueroofmusic@gmail.com] 
Sent: Friday, May 18, 2007 10:20 AM
To: Petrie, Glen
Cc: printing-architecture@lists.freestandards.org
Subject: Re: [Printing-architecture] Embedded Client Thin-Thread: Initial
Information

Hi Glen,

I'm strongly opposed to the cosmetic name fixups.  PAPI has been
shipping in Solaris for years.  OPVP is shipping on most Linux
distributions.  It's unfortunate, but that's life.

Cheers,
- Ira

On 5/18/07, Petrie, Glen <glen.petrie@eitc.epson.com> wrote:
> All,
>
> Since I did not receive any "Comments?  Opinions?", I am not sure what the
> reaction was to the my note below.  I'll bet is was surprise to some but
> others know how I feel about coherence.
>
> So again, do we want to try the coherence path?  Yes I know is heresy,
> non-conventional and again the grain.  I know that others, including
myself,
> have put a lot work in their creations (API's, SDK's, actual code).
But....
> I think one of the powers of open source is to use the best from each and,
> in that way, create, especially for this case, a larger AND coherent
> solution.
>
> or
>
> Do we want to try the integration path?  Although this preserves the work
of
> the individuals, it is a integration and gluing approach for the larger
> solution.
>
> glen
>
> -----Original Message-----
> From: printing-architecture-bounces@lists.freestandards.org
> [mailto:printing-architecture-bounces@lists.freestandards.org] On Behalf
Of
> Petrie, Glen
> Sent: Wednesday, May 16, 2007 3:32 PM
> To: printing-architecture@lists.freestandards.org
> Subject: [Printing-architecture] Embedded Client Thin-Thread:
> InitialInformation
>
> All,
>
> I started reviewing the work I did last year.  It appears I took some
> liberties with things!!!! Ops!!!!
>
> The overall reasons for the changes I made was that I saw all of the OP
> API's with differing naming conventions and duplicated (and sometimes
> differing) definitions; which to me was/would-be very confusing to a
> developer.  I wanted to solve this without being in conflict with existing
> work.  So I took the approach of creating a new naming convention and
would
> remove any duplicate definitions.  To do that I decided to start with the
> variables (meaning) used in JTAPI as the base and migrate everything else
to
> a common and new naming convention.  To do this I
>
> 1. I renamed the JTAPI stuff to EPP_; followed by a three char; then a
> descriptor.
>
> for example: binding type when from
>
> typedef enum
> {
>    FSGJT_BD_NOT_SET = 0,
>    FSGJT_BD_NONE,
>    FSGJT_BD_CHANNEL,
>    FSGJT_BD_EDGE_GLUE,
>    FSGJT_BD_PERFECT,
>    FSGJT_BD_PLASTIC_COMB,
>    FSGJT_BD_RING,
>    FSGJT_BD_SPIRAL,
>    FSGJT_BD_STRIP,
>    FSGJT_BD_TAPE,
>    FSGJT_BD_THREAD_SEAL,
>    FSGJT_BD_VELO,
>    FSGJT_BD_WIRE_COMB
> } fsgjt_binding_type_t;
>
>
> to
> typedef enum {
>     EPP_BDT_NOT_SET = 0 ,
>     EPP_BDT_NONE        ,
>     EPP_BDT_CHANNEL     ,
>     EPP_BDT_EDGE_GLUE   ,
>     EPP_BDT_PERFECT     ,
>     EPP_BDT_PLASTIC_COMB,
>     EPP_BDT_RING        ,
>     EPP_BDT_SPIRAL      ,
>     EPP_BDT_STRIP       ,
>     EPP_BDT_TAPE        ,
>     EPP_BDT_THREAD_SEAL ,
>     EPP_BDT_VELO        ,
>     EPP_BDT_WIRE_COMB   ,
>     EPP_BDT_EOL         ,
>     EPP_BDT_EXT = EPP_EXTEN
> } EPP_BINDING_TYPE;
> #define EPP_BDT     EPP_BINDING_TYPE
>
> So the numerical value of each enum is the same but not the name!!!
>
>
> Because I was initially (and could still) provide on a DOS-like interface
> for the thin-thread, I needed a way to have a simple input mechanism for a
> job ticket; so
>
> 2. I created a job-ticket file format that is parsed directly into a
> job-ticket struct(s) I am using.
>
> No telling what other liberties I took!!!
>
>
> Right now, I am at a conflict weather to just keep going or restart.  The
> issue, to me, is one of overall and long term coherence.  If I keep going
> then the intent is to use the best of any open source code and create a
> coherent solution (both in naming and definition).  The alternative is to
> try plugging existing but distinct pieces together.  I am worried about
that
> the latter, since it may result in an amount (small or large) of "glue
code"
> and perhaps some disconnects.  I guess I believe that in the end a
developer
> would have to get and understand distinct pieces of codes and disconnected
> API's versus coherent set of API's
>
> Comments?  Opinions?
>
> glen
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
>


-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: blueroofmusic@gmail.com

