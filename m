Message-ID: <4E4AB226.7040507@gmail.com>
Date: Tue, 16 Aug 2011 20:08:38 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CAN40gSvhq3mPVfDg3teNxQ9WcuBfKmBLyp5KbUXcm-CncN7T1A@mail.gmail.com>
	<4E4A9179.9040900@gmail.com>
	<CAGC3nLCoLcy5adH+ox8TNLCpzH+6FPKKoAwkFDMV=HGKE0a0OA@mail.gmail.com>
In-Reply-To: <CAGC3nLCoLcy5adH+ox8TNLCpzH+6FPKKoAwkFDMV=HGKE0a0OA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IN 10 MINUTES: OP US/Europe - Tuesday
 16 August 2011
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Daniel Dressler <danieru.dressler@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

Thank you. Using pyppd-compressed PPD archives the listing of the PPD 
files take well less than a second on my computer and extracting the 
mentioned PPD file takes the same order of magnitude of time as SQLite.

For most CUPS users the pyppd solution is the best due to the speed. The 
SQLite solution has its place for the Debian users who use LPRng as the 
print spooler or for sys admins who often need to do changes on the 
Foomatic database and also quick access for setting up printers.

    Till

On 08/16/2011 06:42 PM, Daniel Dressler wrote:
> Speed difference of sqlite vs xml backed foomatic-db-engine
>
> Overview steps:
> ppdfile list with xml backend 9s
> ppdfile list with sqlite 3s
>
> Generate ppd:
> ./foomatic-ppdfile -p Xerox-WorkCentre_PE120 -d pxlmono with xml 1.33s
> ./foomatic-ppdfile -p Xerox-WorkCentre_PE120 -d pxlmono with sqlite 0.23s
>
> Daniel
>
> 2011/8/16 Till Kamppeter <till.kamppeter@gmail.com
> <mailto:till.kamppeter@gmail.com>>
>
>     Reminder for our phone meeting.
>
>         Till
>
>     On 08/12/2011 11:42 PM, Ira McDonald wrote:
>      > Hi,
>      >
>      > Our OP meeting will be *next* week on Tuesday 16 August
>      > - changed from earlier notes this week.
>      >
>      >
>      > Agenda:
>      >
>      > (1) Status of Common Printing Dialog (Till Kamppeter)
>      >
>      > (2) Status of independent JTAPI project (Glen Petrie)
>      >
>      > (3) Status of GSoC Foomatic project (Daniel Dressler)
>      >
>      > (5) Status of other GSoC projects (Till Kamppeter)
>      >
>      > (6) Brainstorm new OP projects with low barriers to entry (All)
>      >
>      > (7) PWG Highlights for Open Printing (Ira McDonald)
>      >       (a) IPP JPS3 adding support for client UI localization
>      >       - new URIs for standard and vendor extension message catalogs
>      >         added for IPP Everywhere printers
>      >
>      >       (b) PWG Print Job Ticket Semantic Model
>      >       - new spec to go with existing XML schema in PWG SM/2.0
>      >
>      >       (c) Mapping of PWG Job Ticket to/from XPS, PPD, JDF
>      >       - builds on JTAPI IPP-to-JDF and CUPS IPP-to-PPD mappings
>      >       - design target is simple subset for Cloud Print use cases
>      >
>      >
>      > Dial-in information:
>      >
>      > August 2011 - US/Europe - OP Monthly Meeting
>      >      - Note - moved to Tuesday from Wednesday as one-time change
>      >
>      >      - Tuesday 16 August 2011, Daytime
>      >        - US
>      >          9am in San Francisco - US PDT (Pacific Daylight Time)
>      >          10am in Colorado - US MDT (Mountain Daylight Time)
>      >          11am in Chicago - US CDT (Central Daylight Time)
>      >          12pm in New York - US EDT (Eastern Daylight Time)
>      >        - Europe
>      >          6pm in Berlin - CEST (Central European Summer Time)
>      >
>      >      * Main Number (Till Kamppeter, LF, leader)
>      >        International: +1-218-936-7999 <tel:%2B1-218-936-7999>
>     <tel:%2B1-218-936-7999>
>      >        Access Code:   491659#
>      >
>      >
>      > Cheers,
>      > - Ira
>      >
>      >
>      > Ira McDonald (Musician / Software Architect)
>      > Chair - Linux Foundation Open Printing WG
>      > Co-Chair - IEEE-ISTO PWG IPP WG
>      > Chair - TCG Embedded Systems Hardcopy SWG
>      > IETF Designated Expert - IPP & Printer MIB
>      > Blue Roof Music/High North Inc
>      > http://sites.google.com/site/blueroofmusic
>      > http://sites.google.com/site/highnorthinc
>      > mailto:blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
>     <mailto:blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>>
>      > Christmas through April:
>      >    579 Park Place  Saline, MI  48176
>      > 734-944-0094 <tel:734-944-0094>
>      > May to Christmas:
>      >    PO Box 221  Grand Marais, MI 49839
>      > 906-494-2434 <tel:906-494-2434>
>      >
>
>     _______________________________________________
>     Printing-architecture mailing list
>     Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
>

