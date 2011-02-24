Date: Thu, 24 Feb 2011 20:13:41 +0100 (MET)
From: Kai-Uwe Behrmann <ku.b@gmx.de>
In-Reply-To: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1102241922270.6623@roma.rasena>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323584-1077795497-1298574821=:6623"
Subject: Re: [Printing-architecture] Common Printing Dialog and color
 management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Richard Hughes <hughsient@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323584-1077795497-1298574821=:6623
Content-Type: TEXT/PLAIN; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit

Am 24.02.11, 14:39 -0000 schrieb Richard Hughes:
> I've been doing quite a lot of research in to the Common Printing
> Dialog in the last two days for my colord integration. I'm really not
> sure where it fits in my color managed architecture plans.
>
> From my perhaps-naïve point of view, CPD seems to have 3 main problems:
> 
> * There hasn't been any code merged in 5 *years*, even though quite a
> lot of code has already been written.
> * Neither GTK or KDE seem to want to include a new UI that doesn't
> match either of their HIG guidelines.

As usual: citation needed. That leads to a contructive dialog.
Marginalisation is no good style.

> * Every single PPD file on the planet would need to be modified to
> support the CPD.

You can not be serious about this.

> So basically, I'm not sure what the CPD buys us. Looking at
> http://wiki.openusability.org/wiki/printing/index.php/Photo_printers_parameter_specifications#Color_Management_and_the_CPD
> I'm not convinced mixing the color management settings in with the
> printing options makes a lot of sense either.

CPD runs as a user process. Thus the user relation is first class. While 
xxxtoraster is a server side process running as user lp. How might lp 
know, which ICC profile is the actual one and from which user? On 
which mechanism does the scheme rely on? It was brought up several 
times. I never read a convincing answere for that question.


regards
Kai-Uwe Behrmann
-- 
developing for colour management 
www.behrmann.name + www.oyranos.org

--8323584-1077795497-1298574821=:6623--
