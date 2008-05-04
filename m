Message-Id: <05B6DB58-B03F-4054-A402-B7D376D7C129@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <87bq3pmekr.fsf@geek.avasys.jp>
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Apple Message framework v919.2)
Date: Sun, 4 May 2008 13:06:45 +0200
References: <481101A3.6030700@gmail.com> <4818BB7F.50603@gmail.com>
	<b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
	<b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
	<4819F6A5.3040400@gmail.com> <87myn9mvqu.fsf@geek.avasys.jp>
	<b801b6f40805012017q2ca21240ma28e2f919f7330f3@mail.gmail.com>
	<87bq3pmekr.fsf@geek.avasys.jp>
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
	its interface
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

Hi all,

I joined the fun here too.

First of all welcome Alex and Lars. I am looking forward to working
with you both on the dialog. you can find me on the openusability
irc channel for a quick question.

Keep in mind that the spec on the wiki is =91under construction.=92
I do not mind showing you how this grows step by step, if you do not
mind looking at incomplete or plain wrong stuff for a week or two.

being on a helter-skelter schedule, I will keep it short here.

Yes I have been dealing with internationalisation of software for the =20=

last
14 years. See for instance that we are dealing with r-to-l languages =20
from
now on.

Note that a preview shall (learned that one in '98) be shown under
all circumstances in the print dialog. It shall be accurate within the
small (just big enough) size I gave it. It is central to solving
dozens of usability issues.

About the dialog layout: most questions look to be caused by bugs in
the spec. It is a dialog, so there is no user resizing. column spanning
will be normal (big things like booklet making will probably need all
that space).

The state of the dialog shall be persisted for each
user/printer (model)/app combination on pressing the Print button.
per document looks to be excessive if not undesirable from usability =20
pov.

Oh yeah, we need to put the manufacturer logo somewhere. The top
corner opposite the printer pop-up will be available for that.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



