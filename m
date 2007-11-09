Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CB0@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: RE: [Printing-architecture] RE: [Printing-summit] RE: where is th
	e info on driver directories
Date: Fri, 9 Nov 2007 08:24:41 -0800 
MIME-Version: 1.0
Content-Type: text/plain
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, 'Olaf Meeuwissen' <olaf.meeuwissen@avasys.jp>
Cc: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>

A thought I did not complete in the last email is the directory structure
for pdpca.  With in the $bindir/pdpca directory, do we ...

1.)  Have no sub directories for the pdpca files
2.)  Have subdirectories based on <dev>

I actually like number '1.)'.  The first reason is that I believe that <dev>
will start having sub-dir, with more sub-dir, with more sub-dir etc..  I
find this to be a pain-in-neck when I am trying to locate something of the
nature of the pdpca.  It is ok for the <dev> but not typically anyone else.
Another advantage of '1.)' is there can never be two files with the same
filename.  This will prevent bad naming or improper naming by various
independent developing parties.



> -----Original Message-----
> From: Petrie, Glen
> Sent: Friday, November 09, 2007 8:11 AM
> To: Olaf Meeuwissen; Petrie, Glen
> Cc: printing-architecture@lists.freestandards.org; printing-
> summit@lists.linux-foundation.org
> Subject: RE: [Printing-architecture] RE: [Printing-summit] RE: where is th
> e info on driver directories
> 
> Thanks for your suggestions.
> 
> <...snip...>
> 
> > Normally you would have you PATH
> > set to something reasonable you you would just run it as:
> >
> >   pdpca --dev <dev> --qual <qual> [other options]
> >
> 
> [gwp] I considered this (and still like it) but I thought it would be
> more/too complicated for user (of any kind) to figure out or know the
> <dev> and the possible list of <qual's> since <qual's> could change with
> <dev>.    For code that will be used very seldom (once the printer is
> working, there is little reason to test again), I thought having <dev> and
> <qual> right in the file name would/could help the user (of any kind)
> select which pdpca to try.  Example (which may not be correct but are
> shown for illustration)
> 
> Directory					command line
> pdpca_guten_hp_laser_bw    or pdpca --dev guten --qual hp_laser_bw
> 				   or pdpca --dev guten --qual hp --qual
laser_bw
> 				   or pdpca --dev guten --qual hp,laser_bw
> pdpca_guten_hp_laser_color
> pdpca_guten_hp_laser_mfd
> pdpca_guten_hp_inkjet_4color
> pdpca_guten_hp_inkjet_6color
> pdpca_guten_hp_inkjet_mfd
> <... repeated for Epson, Canon, Lexmark, Xerox, and so forth under
> guten...>
> 
> pdpca_hp_laser_bw		   or     pdpca --dev hp --qual laser_bw
> pdpca_hp_laser_color
> pdpca_hp_laser_mfd
> pdpca_hp_inkjet_4color
> pdpca_hp_inkjet_6color
> pdpca_hp_inkjet_mfd
> <... repeated for Epson, Canon, Lexmark, Xerox, and so forth...>
> 
> Since I can not, at this time, begin to determine the number of
> instantiations of pdpca there will be for every <dev> and every <qual>, I
> thought the file name approach would be the best.  Maybe a pattern will
> emerge; we will have to wait and see.
> 
> Scenario:  Help Desk (HD) help user (U) on the phone.
> 
> U:  My printer will not print my picture.
> HD: What printer do you have?
> U: A SuperX model 300 which is an inkjet printer.
> HD: What application are you trying to print with.
> U:  Guten
> HD: Go to the /usr/bin/print/pdpca directory.
> U: OK, got there
> HD: Locate the file pdpca_guten_superx_inkjet
> U: Ok located
> HD: execute the file........
> 
> Or does the HD tell the user
> 
> HD: type in pdpca --dev guten -qual superx,inkjet 300
> 
> Once someone knows the list of possible and then the specific <dev's> and
> <qual's> it is pretty easy either way but if the HD did not know that info
> he could have
> 
> HD: Go to the /usr/bin/print/pdpca directory.
> HD: look for a file called pdpca_guten
> U: found a bunch of them
> HD: Is there file or files with superx in the name
> U: yes
> HD: Is there a file with inkjet in the name
> U: No
> HD: is there a file with generic in the name
> U: yes
> HD: execute the following pdpca_guten_superx_generic -s 300
> U: It says the superX Model 300 is supported
> HD: now execute pdpca_guten_superx_generic 300
> 
> So, my reasoning was .....
> 
> Is it easier for an end user (which is one of the target users) to
> navigate a directory list with files containing the <dev> and <qual's> or
> read instructions on what possible <dev> and <qual> to use.  Overall,
> would suspect that the navigating will be easier.
> 
> Anyway, that was my reasoning I used to create the specification.   My
> next goal was to find a directory that would be easy to locate by the HD
> and/or user.
> 
> p.s.  dev looks like developer and device (we could pick a better word if
> the decision is to go with a scheme as you suggest).  Which did you mean?
