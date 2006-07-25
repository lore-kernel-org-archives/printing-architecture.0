Return-Path: <todd.fujinaka@intel.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2006 08:25:14 -0700
Message-ID: <D90275D3D462F94E9B3892626804E08C015CE87E@orsmsx412.amr.corp.intel.com>
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Printing-architecture] [lsb-discuss] resend notes from lastweek
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Christopher Yeoh <cyeoh@samba.org>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: "Printing-Sc (E-mail)" <printing-sc@freestandards.org>, Michael Sweet <mike@easysw.com>, printing-architecture <printing-architecture@freestandards.org>, lsb-discuss <lsb-discuss@freestandards.org>, freestandards-fhs-discuss@lists.sourceforge.net, Wendy Phillips <wendy.phillips@sun.com>

>-----Original Message-----
>From: lsb-discuss-bounces@lists.freestandards.org [mailto:lsb-discuss-
>bounces@lists.freestandards.org] On Behalf Of Christopher Yeoh
>
>At 2006/7/25 15:06+0200  Till Kamppeter writes:
>> Wichmann, Mats D wrote:
>> > it's possible we could conceive a less scattered scheme for
>> > printer drivers - I'm envisioning something like reserving
>> > /opt/printing with LANANA, then providing a way to manage
>> > that namespace so it can be shared, perhaps through a second
>> > registry.
>> >
>>
>> This means that if LANANA registers /opt/printing we can agree on
only
>> the pair
>>
>> /opt/printing/ppd/<supplier>/<manufacturer>/
>> /opt/printing/drivers/<supplier>/
>>
>> as the only PPD/driver directories?
>
>So am I correct in assuming that the files if shipped as part
>of a distribution normally go into:
>
>/usr/share/ppd
>/usr/lib/drivers
>
>If there is distro agreement here, we should get this put into the FHS
>as well.
>
>I'm not convinced that we need to add /opt/printing
>
>The /opt/<vendor> technique should still work, and for convenience
>symlinks can be created in /opt/share/ppd and /opt/lib/drivers to the
>actual files. If you use LANANA, strictly speaking you could just
>install straight into /opt/share and /opt/lib because you know there
>won't be any clashes, but I'd still strongly recommend using symlinks
>instead as it keeps the design simpler and consistent.

The argument for /opt/printing is a compromise. OpenPrinting wanted to
put everything in /usr/share and /usr/lib, and I told them that 3rd
party vendors who add things after the distro should NOT be using /usr
(at least that was my understanding).

However, OpenPrinting wants a standard directory for PPDs and drivers,
so they can tell a 3rd-party vendor that there is one place to look for
those things. I pointed out that they couldn't touch /usr, and they
needed /opt/<vendor> and then suggested /opt/printing/<vendor> when the
first was thought to be too scattered.

I had not been able to find an FHS person or active mailing-list to
bounce these ideas off of and that's another reason that some of these
suggestions are a bit off.

Todd

