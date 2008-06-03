Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Jun 2008 08:51:55 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F02412C@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Suggestion for a small change in
	yourdesign for the Common Printing Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Alex Wauck <alex.wauck@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, Henrik Nilsen Omma <henrik@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, Till Kamppeter <till.kamppeter@gmail.com>

Ops,  I missed your note Ira,  my suggestion is similar to yours

-----Original Message-----
From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Ira McDonald
Sent: Monday, June 02, 2008 5:38 PM
To: Alex Wauck; Ira McDonald
Cc: printing-architecture@lists.linux-foundation.org; Celeste Lyn Paul;
Henrik Nilsen Omma; Jonathan Riddell; Till Kamppeter
Subject: Re: [Printing-architecture] Suggestion for a small change in
yourdesign for the Common Printing Dialog

Hi Alex,

On the front page of most print dialogs is the choice: current page, all
pages,
or page range.

I suggest a set of page range boxes, horizontally (or vertically for
I18N),
where the first defaults to '1..last', changing it's value (e.g., to
'2..5')
changes the second box default to '6..last', etc.  Needs work perhaps,
but the idea is to separate your list below into a series of ranges (or
single page numbers) in separate entry boxes to make better sense for
non-geeks.  Then perhaps a blue/grey squares horizontal diagram below
the pages boxes that shows the selected pages graphically on one line.

Over the DBUS control channel, a multi-valued 'pages' attribute should
be used (not the simple 'n..m' typical format).

Cheers,
- Ira

On Mon, Jun 2, 2008 at 7:03 PM, Alex Wauck <alex.wauck@gmail.com> wrote:
> Could you describe that in more detail?  I don't really like the
current way
> (i.e. entering something like "1,2,5-70,75" to get pages 1, 2, 5
through 70,
> and 75).  It's quick and easy for people like me who feel hobbled
without a
> command line, but I don't think it's particularly intuitive or easy
for
> others.
>
> Alex
>
> On Mon, Jun 2, 2008 at 5:55 PM, Ira McDonald <blueroofmusic@gmail.com>
> wrote:
>>
>> Hi Alex and Till,
>>
>> FWIW - In IPP/1.1 Production Printing, Open Printing Job Ticket API,
and
>> PWG Semantic Model, we have a common "pages" attribute defined as
>> '(1setOf rangeOfInteger(1:MAX))' (i.e., a set of page ranges).
>>
>> I suggest we give the user a set of boxes like ordinary page range
that
>> can
>> be filled in for a discontiguous set of pages.
>>
>> Cheers,
>> - Ira
>>
>> On Mon, Jun 2, 2008 at 6:41 PM, Alex Wauck <alex.wauck@gmail.com>
wrote:
>> > I like it.  I'm using a custom widget for the preview instead of
the Qt
>> > preview widget, so it won't be too difficult to implement.  We just
need
>> > to
>> > figure out how to specify ranges.  People don't want to go through
and
>> > mark
>> > every page in a 100-page range.
>> >
>> > Alex
>> >
>> > On Mon, Jun 2, 2008 at 3:22 PM, Till Kamppeter
>> > <till.kamppeter@gmail.com>
>> > wrote:
>> >>
>> >> Hi,
>> >>
>> >> on the Ubuntu Developer Summit (UDS) in Prague we have discussed
your
>> >> design for the Common Printing Dialog. During the discussion
doubts
>> >> came
>> >> up about how to print only selected pages of a document. A
suggestion
>> >> was then that one can add buttons to the preview to (de)select the
page
>> >> currently visible (like implemented in multi-function printers
where
>> >> one
>> >> can print photos from a memory card selecting them on the
printer's
>> >> display, or like on digital cameras with PictBridge).
>> >>
>> >> WDYT about this feature? Or what were your ideas about selecting
the
>> >> pages to be printed?
>> >>
>> >>    Till
>> >> _______________________________________________
>> >> Printing-architecture mailing list
>> >> Printing-architecture@lists.linux-foundation.org
>> >>
>> >>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
>> >
>> >
>> > _______________________________________________
>> > Printing-architecture mailing list
>> > Printing-architecture@lists.linux-foundation.org
>> >
>> >
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
>> >
>> >
>>
>>
>>
>> --
>> Ira McDonald (Musician / Software Architect)
>> Chair - Linux Foundation Open Printing WG
>> Blue Roof Music/High North Inc
>> email: blueroofmusic@gmail.com
>> winter:
>>  579 Park Place Saline, MI 48176
>>  734-944-0094
>> summer:
>>  PO Box 221 Grand Marais, MI 49839
>>  906-494-2434
>
>



--=20
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
 579 Park Place Saline, MI 48176
 734-944-0094
summer:
 PO Box 221 Grand Marais, MI 49839
 906-494-2434
_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.linux-foundation.org
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
