Message-ID: <4D697582.7080005@gmail.com>
Date: Sat, 26 Feb 2011 22:49:54 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <201102252000.59079.hvengel@gmail.com>
	<201102260816.01720.hvengel@gmail.com> <4D694B17.2010506@gmail.com>
	<201102261340.55287.hvengel@gmail.com>
In-Reply-To: <201102261340.55287.hvengel@gmail.com>
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

On 02/26/2011 10:40 PM, Hal V. Engel wrote:
> Thanks that helped. I think I commited my current changes. At least the
> messages I got looked like it worked. But it does not apear to show up
> in the web interface to the repository. But perhaps that needs some time
> to sync up.

Up to now nothing arrived. Did you use "bzr push ..." or the Patch Queue 
Manager (PQM)? Note that the requests send to the patch queue manager 
are not applied immediately, but by a cron job. Perhaps you only got 
confirmation of the submission and not of the actual application of your 
changes.

> Please feel free to give the dialog a test run if it
> actually made it into the repository. The dialog looks and behaves just
> like the original version for the most part. Things related to this that
> still need to be done:
>

I will try the dialog a soon as I find it on the BZR.

>
> 1. I did not do much with the cmake setup as I am far from an expert on
> how cmake does things and I wanted to get the rest of this checked in.
> So this still needs to be modified to remove kde references.
>
>
> 2. I had to add some icon files that where apparently included in KDE.
> An application resource needs to be created for these and the code
> modified to use the resource instead of the files.
>
>
> 3. The directory should probably be renamed from kde4-dialog to qt4-dialog.

Can you please do these corrections to complete the change to Qt-only? I 
do not know, but is cmake KDE-specific or can it also be used for a 
non-KDE application like the pure Qt CPD?

    Till
