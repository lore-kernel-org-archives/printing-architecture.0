Message-ID: <e395be80803271042s482e612eu14499ecb064a7c7e@mail.gmail.com>
Date: Thu, 27 Mar 2008 13:42:25 -0400
From: "Ira McDonald" <blueroofmusic@gmail.com>
In-Reply-To: <20080327165506.GA7647@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <47EA99E8.8020007@licquia.org> <47EAC155.4040206@gmail.com>
	<Pine.LNX.4.64.0803271421320.19740@nelson.suse.de>
	<20080327141959.GB5084@suse.de>
	<Pine.LNX.4.64.0803271527300.20593@nelson.suse.de>
	<20080327153111.GB17559@suse.de>
	<Pine.LNX.4.64.0803271634280.23932@nelson.suse.de>
	<20080327165506.GA7647@suse.de>
Subject: Re: [Printing-architecture] [lsb-discuss] LSB 4.0 and printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Klaus Singvogel <kssingvo@suse.de>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Johannes Meixner <jsmeix@suse.de>, lsb-discuss@lists.linux-foundation.org

Hi,

My two cents...

I agree with Klaus.  Network scanning (remote submission of scan jobs)
is ALWAYS done from a client desktop machine directly to the networked
scanner or multifunction device.  Adding SANE packages to a Linux server
never makes sense in the real world - just one more needless security risk.

Cheers,
- Ira

-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
 579 Park Place Saline, MI 48176
 734-944-0094
summer:
 PO Box 221 Grand Marais, MI 49839
 906-494-2434


On Thu, Mar 27, 2008 at 12:55 PM, Klaus Singvogel <kssingvo@suse.de> wrote:
> Johannes Meixner wrote:
>  >
>  > Have a network scanner (a scanner with ethernet connection)
>  > in an office for several people.
>
>  If the scanner has ethernet connection, any user can install drivers
>  on his _desktop_. No need to restrict installation on a _server_, or?
>
>  > Run the scanner driver (the SANE backend) together with
>  > the saned on an arbitrary server machine somewhere in
>  > a locked server room to have both the driver and the
>  > access permission stuff under full control of the admin
>  > of the central server.
>
>  What's the advantage of your model? It seems not very practicable and
>  a bit uncommon to me.
>
>  Restricting printing access is easy to explain: every single page
>  printed out costs resources (paper, toner, etc).
>
>  But scanning?
>
>  Why restricting a network scanner to special users and not to a
>  special, secure place? If there is no trust to all of the users, why
>  is the network scanner physical accessible to anyone, with danger of
>  thefts, and the scanning restricted to users? Why not locking the
>  scanner into a restricted room?
>
>  I neither see how you can prevent scanning by the bad guys, if the
>  scanner is still accessible by (physical) anyone and (by software)
>  through whole network?
>
>  I would suggest to setup a special desktop machine with limited
>  physical access in such an scenario into a special secured room. IMHO
>  more secure.
>
>  Another solution for your example might be to setup a a _desktop_
>  machine and use (in a limited way) as a server for above scenario. No
>  need to blow up all the other server machines with unnecessary scanner
>  software.
>
>  And I think it is a very limited, uncommon scenario you describe.
>  Let us stay at the more common real life examples, please.
>
>  > Run the scanning frontend together with the SANE "net"
>  > meta-driver on the individual user's workstation where
>  > it doesn't harm others if one user corrupts his workstation.
>
>  Workstation means a desktop machine right? So again: scanning with
>  SANE is done on the desktop machine.
>
>  Kindly regards,
>
>
>         Klaus.
>  --
>  Klaus Singvogel
>  SUSE LINUX Products GmbH
>  Maxfeldstr. 5                     E-Mail: Klaus.Singvogel@SuSE.de
>  90409 Nuernberg                   Phone: +49 (0) 911 740530
>  Germany                           GnuPG-Key-ID: 1024R/5068792D  1994-06-27
>
>  SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
>  _______________________________________________
>  Printing-architecture mailing list
>  Printing-architecture@lists.linux-foundation.org
>  https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
