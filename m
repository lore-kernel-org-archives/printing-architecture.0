From: John Layt <johnlayt@googlemail.com>
Date: Wed, 22 Jun 2011 13:47:54 +0100
References: <BANLkTikbwh8FvT7WHA7W9gKtsPYzxq_bgg@mail.gmail.com>
	<201106211547.42450.hvengel@gmail.com>
In-Reply-To: <201106211547.42450.hvengel@gmail.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit
Message-Id: <201106221347.55372.johnlayt@googlemail.com>
Subject: Re: [Printing-architecture] Nokia is loaning out N950 devkits,
	I've applied, does anyone else have meego hardware?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On Tuesday 21 Jun 2011 23:47:42 Hal V. Engel wrote:
> On Tuesday, June 21, 2011 02:01:18 PM Daniel Dressler wrote:
> > I know Intel had dev units of native meego hardware a while ago, did
> > anyone get one of these? Has anyone had contact with the meego project
> > or experience with their printing stack?

I haven't looked at Meego, but it appears to have CUPS in the Core Software 
Platform, but whether that's also in the Mobile profile I don't know. The api 
would definately be Qt however.

That said, you don't need specific hardware to try out printing in Meego, it 
runs fine in a VM.  Hardware is really only needed if you're doing stuff that 
requires the touch-screen or other hardware features.

> I have had a little contact with Intel's Meego team manager but I do not
> have any technical details.  I am under the impression that Intel sort of
> backed away from meego when Nokia went with WinPhone.  I do know that
> Intel stopped hiring programmers to work on meego about that time.

Well, I know they are hiring people in Oslo from Nokia to work on Qt for 
Meego, and the story they are telling those of us in the Qt community is they 
are still as committed as they were before the Elopocalypse.  In fact, they 
almost seemed relieved that Nokia has backed off as it allows Meego to develop 
more openly and naturally rather being rushed into the role of saviour of 
Nokia.

> I would expect that the printing stack at the UI level is the more or less
> stock Qt components but the lower levels of that stack I don't know.  I am
> under the impression that the Intel/Nokia deal was that Intel would do all
> of the apps and UI stuff and Nokia would do all of the systems stuff.

Actually, my impression is it's a mixture, Intel doing the core OS and x86 
support, Nokia doing arm support and the Qt api to wrap around the core, and 
both sides using Qt to create their own UX for their own products.  Nokia are 
certainly not contributing anything to the reference UX's as their one is/was 
top-secret.

Anyway, directly related to this is that I've just got back from the Qt 
Contributors Summit where I lead a session on the future of printing in Qt, 
but I'll start a separate thread for that.

Cheers!

John.
