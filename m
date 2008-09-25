Message-ID: <48DBF8E0.8090002@gmail.com>
Date: Thu, 25 Sep 2008 22:47:28 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <20080925202407.GA11510@piware.de>
In-Reply-To: <20080925202407.GA11510@piware.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Lf_driver_backport] Jockey 0.5beta1
	released
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: lf_driver_backport@lists.linux-foundation.org
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Martin Pitt wrote:
> Hi all,
> 
> I just released the first beta of Jockey 0.5, which fixes all of the
> (currently) milestoned bugs for the final 0.5 release, and lots of
> crashers, etc. Now it's actually usable (as opposed to the alpha1,
> which was still crash-o-rama).
> 
> Download:
> 
>   https://launchpad.net/jockey/trunk/0.5beta1
> 
> Current screenshots:
> 
>   http://people.ubuntu.com/~pitti/screenshots/jockey/jockey-mainwindow.png
>   http://people.ubuntu.com/~pitti/screenshots/jockey/jockey-mainwindow-kde.png
> 
> (featuring printer driver lookup from openprinting.org)
>

I have added the necessary stuff to system-config-printer so that it 
asks Jockey for printer drivers via D-Bus in the case that there is no 
exact model match for the drivers which are locally installed. Jockey 
returns a list of all files which it has installed and so 
system-config-printer prioritizes PPDs which come from the newly 
installed driver.

I have committed the changes into the system-config-printer GIT 
repositories now, and so there is not yet an official release containing 
this feature. I have also applied the changes to the 
system-config-printer in Ubuntu Intrepid. There the complete workflow is 
available and can be tried out.

To get the source of system-config-printer, install "git" and run the 
commands:

git clone http://git.fedorahosted.org/git/system-config-printer.git
cd system-config-printer
git branch -r
git checkout --track -b 1.0.x origin/1.0.x

system-config-printer and Jockey (or Ubuntu Intrepid) are now the first 
reference implementation for the client side of the automatic printer 
driver download. This especially interesting for printer manufacturers 
to test their driver packages.

    Till

