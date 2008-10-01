References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B23E6@EEAEX03.us.epson.net>
	<48DCEF5B.4070800@gmail.com> <87bpy7x03n.fsf@geek.avasys.jp>
	<48E07BF1.2060109@gmail.com> <87od26wn8g.fsf@geek.avasys.jp>
	<48E282F2.1070206@gmail.com>
	<Pine.LNX.4.58.0809301656300.6301@norris.e-artisan.org>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Wed, 01 Oct 2008 09:23:28 +0900
In-Reply-To: <Pine.LNX.4.58.0809301656300.6301@norris.e-artisan.org> (Stew
	Benedict's message of "Tue\,
	30 Sep 2008 17\:52\:46 -0400 \(EDT\)")
Message-ID: <87myhp6u4f.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: Re: [Printing-architecture] [lsb-discuss] Slides for GSoC report on
	the PWG Meetingin October
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Stew Benedict <stewb@linux-foundation.org>
Cc: printing-architecture@lists.linux-foundation.org, "lsb-discuss@lists.linux-foundation.org" <lsb-discuss@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Hi Stew,

Stew Benedict <stewb@linux-foundation.org> writes:

> On Tue, 30 Sep 2008, Till Kamppeter wrote:
>
>> Olaf Meeuwissen wrote:
>> > Till Kamppeter <till.kamppeter@gmail.com> writes:
>> > 
>> >> Olaf Meeuwissen wrote:
>> >>> [snip]
>> >>> Then a question.  Is the SANE API really slated for inclusion in
>> >>> LSB-4.0?  I've seen only very minimal discussion on the lsb-discuss
>> >>> list.
>> >> The problem is the missing manpower for writing specs and test suites.
>> > 
>> > Could you be more specific about:
>> > 
>> >  - what kind of specs are required
>> >  - what kind of test suites are required
>> >  - how much time is approximately needed for each of these
>> >  - the process involved to contribute these
>> 
>> Can someone of the LSB work group help Olaf here and post appropriate 
>> documentation links, explain what to do, ...
>
> I'll try to give some input.  There are a number of steps:

Thanks for the input.

> 1) import of the sane interfaces into the database
>
> I did a first pass try of this a while back, and things appeared to mostly 
> come out right.
>
> ref:
>
> https://www.linuxfoundation.org/en/SANE40
> http://www.linuxfoundation.org/en/LibToLSB (import part is obsolete)
> http://ispras.linux-foundation.org/index.php/LSB_Library_Import_Tools

Had a quick glance through these but I need more time (which I don't
really have right now) to understand what the latter two are talking
about.  I'll see if I can find some time to update the SANE40 page.

> 2) writing/integrating of specs
>
> If upstream specs are adequate, then this piece can be a fairly small 
> amount of work, basically a pointer to the upstream (preferable a static 
> copy we can be assured will remain where it is and unchanged). Then of 
> course the sane spec would need to be integrated into the spec as a whole.
>
> Ref #2 above has some info on spec writing. I think Ron has created some 
> better references.

I'll check about the pointer to the upstream spec and static copy bit.

> 3) writing/integrating tests
>
> We have a number of test technologies we use.  I'm most familiar with 
> either adapting upstream's unit tests into something we can use, or the 
> classic tet-style tests like lsb-test-core or the cups portion of the 
> printing tests use. There are also new test frameworks which our 
> colleagues at ISP/RAS are most familiar with.

I have some experience with check and CxxTest, but don't mind learning
another test framework if needed.  There are `test` and `tstbackend`
SANE "frontends" that may be usable for testing purposes.

> Ref #2 has some info on writing tests. The printing/cups tests are in bzr 
> here:
>
> http://bzr.linux-foundation.org/lsb/devel/printing-test?cmd=inventory;rev=mats%40freestandards.org-20080930053543-wj9dlz85w23vsv4b;path=sources/printing-test/
>
> See convenience, ppd, raster

Will take a look.

> Writing the tests isn't usually a huge task, if we're still talking about 
> 14 interfaces. Testing them and bugfixing across a number of distributions 
> can be time consuming.

The SANE specification only lists 14 interfaces but to be of any use
(with the SANE dll backend) every backend (needs to) export a "copy"
of each of these interfaces.  Doing so is quite simple but the tests
probably need to take that requirement into account.

>> > That would make it easier for me to see  if/when/where I can provide
>> > some sorely missing manpower ;-)
>> > 
>> >> As the printer manufacturers benefit most from these new requirements,
>> >> I think the best is to ask them for help.
>> >>
>> >> Olaf, would you, or someone of your co-workers at Avasys help here?
>> > 
>> > I would like to help but it doesn't look like I'll be having any time
>> > until around the end of October (and even after that I'm not so sure
>> > I'll be having a lot of time).
>> 
>> LSB developers, what are the time frames for finishing specs and test 
>> suites. Are they different for SANE, as SANE is planned to get into the 
>> trial use category?
>
> I could be mistaken, but I think we pretty much took sane off the table 
> when we hit the feature freeze point and we hadn't yet made much progress 
> with it, but I by no means have the final say. Beta release of 4.0 is 
> supposed to be happening this week.

Hope this helps,
-- 
Olaf Meeuwissen, LPIC-2           FLOSS Engineer -- AVASYS Corporation
FSF Associate Member #1962               Help support software freedom
                 http://www.fsf.org/jf?referrer=1962
