Return-Path: <olaf.meeuwissen@avasys.jp>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
References: <e395be80707111524h12fd0ee0j93305fdc7c8e342c@mail.gmail.com>
Date: Thu, 12 Jul 2007 09:36:21 +0900
In-Reply-To: <e395be80707111524h12fd0ee0j93305fdc7c8e342c@mail.gmail.com> (Ira
	McDonald's message of "Wed, 11 Jul 2007 17:24:24 -0500")
Message-ID: <874pkawj96.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: Re: [Printing-architecture] Posted OP Arch Minutes (11 July 2007)
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

"Ira McDonald" <blueroofmusic@gmail.com> writes:

> Minutes from yesterday's OP Architecture teleconference at:
>
> ftp://ftp.pwg.org/pub/pwg/fsg/architecture/OP-Arch-Minutes-20070711.htm

Reading the minutes, I was a bit puzzled as to the reasons behind the
below:

    - Discussion
      - License - strong objections to GPL from Glen Petrie/others

    - Resolution
      - All OP code/specs should use restricted MIT - no GPL pollution

I assume that "restricted MIT" refers to the license Glen posted[1] to
the list earlier.  Compared to the MIT license[2], this "restricted"
version drops "sublicense," from the rights and adds the following
condition:

  The rights to use, copy, modify, merge, publish, distribute, and/or
  sell copies of this Software or any material modification there of
  shall not be further restricted by any means, including, but not
  limited to, the GNU General Public License.

I have three questions:

 1) What kind of further restrictions is it that you are concerned
    about?

 2) Why single out the GNU GPL?  Is "any means" not good enough?
    # Yes, I'm an FSF associate member.

 3) Is this "restricted MIT" license compatible with the GNU GPL?
    Like it or not, 50+% of the free software out there is GPL'd.
    Some even estimate 75+%.  If the "restrictive MIT" license is
    not GPL compatible, any OP code can not be legally combined
    with GPL'd code[3].  Is the OP comfortable with that?  How
    will that impact acceptance of OP standards?

Ok, so that was really 1) + 2) + 3) = 6 questions ;-)

[1] http://lists.freestandards.org/pipermail/printing-architecture/2007/001772.html
[2] http://www.opensource.org/licenses/mit-license.php
[3] http://www.gnu.org/licenses/license-list.html
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2

