Message-ID: <e395be80806021555m3cd08365neaeb1fdc2b5cd8c4@mail.gmail.com>
Date: Mon, 2 Jun 2008 18:55:01 -0400
From: "Ira McDonald" <blueroofmusic@gmail.com>
In-Reply-To: <b801b6f40806021541s7301efao48d7722bc61ff1b7@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <4844567A.7080709@gmail.com>
	<b801b6f40806021541s7301efao48d7722bc61ff1b7@mail.gmail.com>
Subject: Re: [Printing-architecture] Suggestion for a small change in your
	design for the Common Printing Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Wauck <alex.wauck@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, Henrik Nilsen Omma <henrik@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, Till Kamppeter <till.kamppeter@gmail.com>

Hi Alex and Till,

FWIW - In IPP/1.1 Production Printing, Open Printing Job Ticket API, and
PWG Semantic Model, we have a common "pages" attribute defined as
'(1setOf rangeOfInteger(1:MAX))' (i.e., a set of page ranges).

I suggest we give the user a set of boxes like ordinary page range that can
be filled in for a discontiguous set of pages.

Cheers,
- Ira

On Mon, Jun 2, 2008 at 6:41 PM, Alex Wauck <alex.wauck@gmail.com> wrote:
> I like it.  I'm using a custom widget for the preview instead of the Qt
> preview widget, so it won't be too difficult to implement.  We just need to
> figure out how to specify ranges.  People don't want to go through and mark
> every page in a 100-page range.
>
> Alex
>
> On Mon, Jun 2, 2008 at 3:22 PM, Till Kamppeter <till.kamppeter@gmail.com>
> wrote:
>>
>> Hi,
>>
>> on the Ubuntu Developer Summit (UDS) in Prague we have discussed your
>> design for the Common Printing Dialog. During the discussion doubts came
>> up about how to print only selected pages of a document. A suggestion
>> was then that one can add buttons to the preview to (de)select the page
>> currently visible (like implemented in multi-function printers where one
>> can print photos from a memory card selecting them on the printer's
>> display, or like on digital cameras with PictBridge).
>>
>> WDYT about this feature? Or what were your ideas about selecting the
>> pages to be printed?
>>
>>    Till
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>



-- 
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
