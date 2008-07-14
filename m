Message-ID: <e395be80807141525wdfc91f7k9dce4e181c57d946@mail.gmail.com>
Date: Mon, 14 Jul 2008 18:25:55 -0400
From: "Ira McDonald" <blueroofmusic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Subject: [Printing-architecture] More on proposed OP CIM Provider project
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Ira McDonald <blueroofmusic@gmail.com>

Hi,

Starting a new thread, so this topic isn't lost in the weeds...

[See Glen Petrie's note quoted below]

Despite various uninformed discussion at the recent PWG F2F,
I have proposed specifically and ONLY an open source project
for a CIM Provider (DMTF terminology for an application gateway
for management) that maps ANY network printer's IETF Printer
MIB implementation from SNMP objects into CIM classes and
CIM properties per the new 2008 DMTF/PWG CIM Print Classes.

I have NOT proposed and do NOT endorse any attempt to build
the "other end of the connection", i.e., the GUI CIM Client that talks
to a CIMOM (CIM Object Manager) that talks to an OP CIM Provider.

The existing open and closed source CIMOMs can display and
query any standard CIM class (including the printing ones).  But
NO existing CIMOM supports printers - for the very simple reason
that there was nothing to support until very recently.

Various OS manufacturers MAY ship GUI CIM Clients for printers
in the future.

But no OS manufacturer or system management ISV will waste
their time building a GUI CIM Client until there are either:

(1) One or more CIM Providers (proxies) for the printing classes;
<or>
(2) Quite a few shipping network printers with embedded CIM
     Providers.

It is likely that without first having CIM proxies (1 above), there
never will be network printers with native CIM (2 above) - the
customers simply won't ask for the feature.

At today's PWG WIMS-CIM working group teleconference, there
was some discussion, but no concensus even to pursue writing
up the proposal.

At that PWG WIMS-CIM WG meeting, I noted (perhaps incorrectly)
my perception that there was little interest in this project within the
Open Printing community.  That immediately narrowed the discussion
to possible common source intended solely for inclusion in vendor
proprietary fleet management products.

I do NOT endorse any such effort.  Let manufacturers spend
their own money if the focus shifts (as some PWG members
have advocated) toward proprietary tools supporting vendor
private MIBs.

If OP pursues an OP CIM Provider it should be to allow the
existing widely deployed open source CIMOMs for Linux,
UNIX, MacOS, etc. to support open printer management.
It SHOULD NOT be just some shortcut code for vendor
proprietary fleet management tools (which are already
common and uniformly customer-UNFRIENDLY).

Cheers,
- Ira

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

------------------------------------------------------------------------------

Earlier today (Monday 14 July), Glen Petrie, wrote:

Since it looks like a significant delay to the SC meeting, I believe an
open agenda item is the proposal by Ira for the WIMS/CIM activity.
(This proposal/idea was also discussed at the last PWG F2F and I suspect
it will be discussed at the next F2F in August.)   Personally, and I
know others within the LF/OP and PWG groups, are confused exactly what
the proposed activity(ies) is(are).   I have heard everything to
something as complete application like WebJet Admin to a single library
usable by ???<who>???.  The code estimate ranges from 2500+ to 7500+
lines requiring anywhere from 1 programmer to 3 programmer over six
month period.  If Ira has some time between now and the next SC meeting
perhaps he could add more detail to what he entails the project to be.
I may be wrong but was Dell was doing something related this area?  Is
Samsung supporting this in any way?

The LF/OP should support this activity if it is the right thing to do
and the priority with other existing/planned activities are understood.
I have some questions which depend upon the actual proposed scope of the
project.  I believe the details from the answers to these questions will
help the LF/OP/SC and the PWG.

1. What is the activity and the scope of the activity? For example,
    a. Is this a library with a test application?
    b. Is this a complete application?
    c. Is this a simulation or will someone actually have firmware
support?
2. What ISV/IHV/Manufacture/OS/Distro has stated they will use the
  results of the activity?
3. How will the activity be funded?  What is estimated cost?
4. Who will do the development?
5. Who will do the project management?  Or just a mentoring function!
6. What is the actual time frame to development the code?
    6.a Funded individuals versus volunteers really affects the time
frame.
7. Who be "own" the software with respect to fixing bugs and maintenance

  of the code and related documentation.
    7.a Surely Till, you can't take responsibility for yet another code

        base.
8. What, if any, are the LSB's comments on the activity?
9. Are there other, higher priorities, LF/OP projects that need to be
addressed?

"If we build it, will they come?"

-------------------------------------------
-
