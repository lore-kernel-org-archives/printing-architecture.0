Message-ID: <4D68F9F7.5090702@gmail.com>
Date: Sat, 26 Feb 2011 14:02:47 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <201102252000.59079.hvengel@gmail.com>
In-Reply-To: <201102252000.59079.hvengel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Qt only CPD.
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>

Great news. Please commit it to the BZR. You can already commit the 
changes on the core CPD. And after you finished the test app, commit 
these changes, too.

    Till

On 02/26/2011 05:00 AM, Hal V. Engel wrote:
> Till expressed some concerns about how much effort it would take to
> convert the KDE CPD to a pure Qt app. Just to let eveyone know I have
> now removed all KDE calls from the core CPD code and I have a working Qt
> only CPD on my system.
>
>
> There is still some stuff that needs to be done. The view-dialog test
> app code still has some KDE widgets (KCmdLineArgs and KAboutData) that I
> will remove tomorrow and the build will need to have kde references
> removed. I will need to clean everything up as well but it actaully took
> less effort than I had thought to remove the KDE specific widgets from
> the CPD core code.
>
>
> Hal
>

