References: <513682.96359.qm@web23108.mail.ird.yahoo.com>
From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Date: Wed, 22 Apr 2009 09:25:06 +0900
In-Reply-To: <513682.96359.qm@web23108.mail.ird.yahoo.com> (Hin-Tak Leung's
	message of "Tue\, 21 Apr 2009 17\:05\:14 +0000 \(GMT\)")
Message-ID: <87r5zla61p.fsf@avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] [Printing-summit] Another Common Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Hin-Tak Leung <hintak_leung@yahoo.co.uk>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Johannes Meixner <jsmeix@suse.de>, DavidSuffield <david.suffield@hp.com>, "printing-summit@lists.linux-foundation.org" <printing-summit@lists.linux-foundation.org>

Hin-Tak Leung <hintak_leung@yahoo.co.uk> writes:

> --- On Tue, 21/4/09, Suffield, David <david.suffield@hp.com> wrote:
>
>> > From: Johannes Meixner [mailto:jsmeix@suse.de]=20
>> >=20
>> > How does the scanner unit enumerate nowadays?
>>=20
>> There is no change with scanner USB enumeration. As far as
>> I know there is no well defined "scanner" interface like the
>> "mass storage" interface.=C2=A0=20
>
> [snip] ... just want to say that the USB specification has an imaging
> device class (I don't remember the precise name), besides printer and
> mass storage. The imaging device class is where many usb-capable
> digital camera/camcorder appears as. I think the class is called ptp
> but can't remember the name...

There was a scanner device class in a draft of the USB spec (ID =3D 6) but
that never made the cut for the final standard :-(  As a result the bulk
of the USB scanners now use the vendor specific class (ID =3D 255).  There
may be some that use something else but there is NO reliable way you can
identify a scanner device short of consulting a database (which needs to
be updated continuously to account for new devices hitting the shelves).

FWIW, SCSI devices are a little bit better off but even there all is not
well.  Although the bulk identify themselves as a SCANNER, there are a
number of (Epson and HP) devices that think they are a PROCESSOR.

There has been some discussion regarding SCSI scanner on the sane-devel
mailing list in the threads below:

  http://lists.alioth.debian.org/pipermail/sane-devel/2009-January/023456.h=
tml
  http://lists.alioth.debian.org/pipermail/sane-devel/2009-January/023507.h=
tml
  http://lists.alioth.debian.org/pipermail/sane-devel/2009-January/023528.h=
tml

Hope this helps,
--=20
Olaf Meeuwissen, LPIC-2           FLOSS Engineer -- AVASYS Corporation
FSF Associate Member #1962               Help support software freedom
                 http://www.fsf.org/jf?referrer=3D1962
