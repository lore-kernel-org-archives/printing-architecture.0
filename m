MIME-Version: 1.0
Date: Thu, 24 Feb 2011 14:39:07 +0000
Message-ID: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [Printing-architecture] Common Printing Dialog and color management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Printing-architecture@lists.linux-foundation.org

I've been doing quite a lot of research in to the Common Printing
Dialog in the last two days for my colord integration. I'm really not
sure where it fits in my color managed architecture plans.

From my perhaps-na=C3=AFve point of view, CPD seems to have 3 main problems=
:

* There hasn't been any code merged in 5 *years*, even though quite a
lot of code has already been written.
* Neither GTK or KDE seem to want to include a new UI that doesn't
match either of their HIG guidelines.
* Every single PPD file on the planet would need to be modified to
support the CPD.

So basically, I'm not sure what the CPD buys us. Looking at
http://wiki.openusability.org/wiki/printing/index.php/Photo_printers_parame=
ter_specifications#Color_Management_and_the_CPD
I'm not convinced mixing the color management settings in with the
printing options makes a lot of sense either.

Richard.
