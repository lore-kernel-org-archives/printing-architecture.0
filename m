Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44C4C7A0.1000703@gmail.com>
Date: Mon, 24 Jul 2006 15:14:08 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <44BFD8AA.8060502@sun.com> <44BFDD7A.6000303@gmail.com>
	<44BFEAE9.4060703@easysw.com>
In-Reply-To: <44BFEAE9.4060703@easysw.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

Michael Sweet wrote:
> Till Kamppeter wrote:
> 
>> Wendy Phillips wrote:
>>
>>> Apparently, this didn't go out to the alias; could be that I fumbled
>>> it on the keyboard. So here tis again ...
>>>
>>> I have purposely not included the follow-on discussions about fhs
>>> standard;
>>> this is a summary of the meeting as it occurred.
>>>
>>> -Wendy
>>>
>>> 1. Installation path for ppd files
>>>
>>>          /usr/share/ppd/<supplier>/<manufacturer>/
>>>
>>> 2. PPD file naming convention
>>>
>>>          <MFGString>-<MDLString>-<driver>-<language>.ppd
>>>
>>> 3. Installation path for print drivers
>>>
>>>          /usr/lib/printdrivers/<supplier>
>>>
>>>          The contents of this directory are entirely determine
>>>          by the supplier. The path to a driver is found by using
>>>          an absolute path in the ppd file.
>>>
>>
>> Paths in /usr to accomodate 3rd-party software do not comply the FHS
>> standard. Therefore alternative paths were suggested in other threads.
>> But note that CUPS violates FHS, too, as CUPS requires drivers in
>> /usr/lib/cups/filter.
> 
> 
> Bzzzt, wrong.
> 
> The separation of /usr, /usr/local, and /opt/vendor does not apply
> since CUPS provides a core OS function - printing.  If you installed
> CUPS in /opt/cups (or like *BSD does, in /usr/local), you'd quickly
> find out that a LOT of software expects lp, lpr, etc. in /usr,
> leading to VERY frustrated users.  Moreover, the LSB requires the
> print commands in /usr, and FHS and LSB are pretty closely tied
> together.
> 
> That said, nothing would prevent you from making symlinks everywhere,
> and Red Hat (at least) did this for a while to allow both LPRng and
> CUPS to coexist, but that goes against the intent of /usr being used
> as a shared (read-only) filesystem among multiple systems and is just
> plain fragile...
> 
> The CUPS build system accommodates almost any directory organization,
> and if you stick with using --prefix you'll end up with /usr,
> /usr/local, or /opt/foo directory structures that follow the FHS
> exactly.  You can also relocate individual pieces (like putting
> ServerBin in /opt/cups/bin, DataDir in /opt/cups/share, etc.),
> but again you will need to do symlinks to preserve compatibility.
> 

Does this mean that putting a third-party CUPS filter into
/usr/lib/cups/filter/ is no violation of FHS?

Would then putting a driver and its PPD into the directories

/usr/share/ppd/<supplier>/<manufacturer>/

and

/usr/lib/printdrivers/<supplier>

because these directories are a core part of the OS?

Or do we still need the alternative location /opt/printing/?

   Till

