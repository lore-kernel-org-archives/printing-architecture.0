Mime-Version: 1.0 (Apple Message framework v1082)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <alpine.LNX.2.00.1102241922270.6623@roma.rasena>
Date: Thu, 24 Feb 2011 12:31:24 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <40F5FF0F-3AAC-4661-9FF0-4568326A2D51@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<alpine.LNX.2.00.1102241922270.6623@roma.rasena>
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
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Printing-architecture@lists.linux-foundation.org



On Feb 24, 2011, at 12:13 PM, Kai-Uwe Behrmann wrote:
>=20
>=20
>> * Every single PPD file on the planet would need to be modified to
>> support the CPD.
>=20
> You can not be serious about this.

Well in a set of slides I found from the Open Printing Summit 2009, the =
CPD is expected to use the Extended Format proposed for PPD. So if =
that's still proposed and not done...

If I read these slides right, there is built in graceful degradation of =
the CPD in terms of options, depending on platform: no GUI, mobile GUI, =
reduced GUI (netbook, regular user default on desktop perhaps), and =
expanded. In order for the CPD to be drawn correctly and degrade options =
properly for each of these levels, its seems to me that the PPDs would =
need to be modified.


>=20
>> So basically, I'm not sure what the CPD buys us. Looking at
>> =
http://wiki.openusability.org/wiki/printing/index.php/Photo_printers_param=
eter_specifications#Color_Management_and_the_CPD
>> I'm not convinced mixing the color management settings in with the
>> printing options makes a lot of sense either.
>=20
> CPD runs as a user process. Thus the user relation is first class. =
While xxxtoraster is a server side process running as user lp. How might =
lp know, which ICC profile is the actual one and from which user? On =
which mechanism does the scheme rely on? It was brought up several =
times. I never read a convincing answere for that question.

The profiles to use get rolled into the PDF print spool file at the time =
it's created (or modified using a pdftopdf filter). If the user has =
specified one, it would definitely need to be in the PDF print spool =
file, or we're going to need a sidecar for metadata...eek. I see no =
reason why it can't go in the PDF using CUPS PDF which supports such job =
ticket info.

Chris=
