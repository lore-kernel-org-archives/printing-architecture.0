Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Apple Message framework v1082)
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <40F5FF0F-3AAC-4661-9FF0-4568326A2D51@colorremedies.com>
Date: Thu, 24 Feb 2011 14:42:01 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <42A75819-F34A-4E8B-A10A-279A60775692@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<alpine.LNX.2.00.1102241922270.6623@roma.rasena>
	<40F5FF0F-3AAC-4661-9FF0-4568326A2D51@colorremedies.com>
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
To: Printing-architecture@lists.linux-foundation.org

OK I just thought of a reason why you can't always punt and pass through =
CMYK. It's possible an application will print a CMYK document, and the =
printer has no idea what CMYK is. In that case you either have to fail =
the print job, or you have to assume some CMYK space (like FOGRA39 or =
GRACoL or whatever), and convert to RGB probably sRGB or if there is a =
*cupsICCProfile convert to that.

So as long as it's CMYK to CMYK, you can pass through. If it's CMYK to =
RGB you'd need other handling.

Chris Murphy=
