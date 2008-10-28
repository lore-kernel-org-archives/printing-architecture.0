Message-ID: <49072D9F.9080801@gmail.com>
Date: Tue, 28 Oct 2008 16:19:59 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>	<49035AC2.5000000@fakenhamweb.co.uk>	<200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903751E.2000507@fakenhamweb.co.uk>	<200810251950.m9PJoeFa030284@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903BCCF.6060308@fakenhamweb.co.uk>	<200810260049.m9Q0nTIw032617@dsl092-065-009.bos1.dsl.speakeasy.net>	<49049DC3.8000405@apple.com>	<200810261653.m9QGrk2l014877@dsl092-065-009.bos1.dsl.speakeasy.net>	<490530BC.9090803@apple.com>	<200810271054.m9RAsDLs001975@dsl092-065-009.bos1.dsl.speakeasy.net>
	<alpine.LNX.1.10.0810281134060.17582@nelson.suse.de>
	<49070C99.8000505@gmail.com>
In-Reply-To: <49070C99.8000505@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>
Cc: printing-architecture@lists.linux-foundation.org, Michael Sweet <mike@easysw.com>, gimp-print-devel@lists.sourceforge.net

Till Kamppeter wrote:
> 
> CUPS has a concept for that and Gutenprint already supports it for head 
> cleaning. The command file "printing" concept. You send a file with 
> special commands and the mime.types system of CUPS recognizes it as 
> command file, directing it into a "commandto..." filter supplied by the 
> Gutenprint package. This "commandto..." filter could also save advanced 
> options per-user and Gutenprint's "rastertogutenprint" filter could read 
> them according to the user name of the sending user. A certain command 
> in a command file could also send back the current configuration, so 
> that the user can see his settings.
> 
> As CUPS filters are all run by the "lp" user, all settings are stored in 
> a file (system) with read/write access by "lp".
> 
> The command files do not need to be hand-written, they can be created by 
> the advanced settings GUI of Gutenprint and/or by the GIMP plug-in. They 
> can also be of arbitrary length, for example with an embedded ICC profile.
> 
> Disadvantage of the concept is that users cannot configure while the 
> printer is printing (if one does not create an extra queue only for 
> configuring, but this would look ugly in the printing dialogs of 
> applications).
> 
>    Till
> 

This approach would be a concept where user settings are saved on the 
print server, So one user (identified by his user name) can use the 
settings from several clients.

The options and quick preset buttons in the Common Printing Dialog 
cannot be influenced by the user's settings, They depend solely on the 
PPD file and each print queue has only one PPD which does not change 
depending on the requesting user.

To let one and the same user save several settings, he would need to 
have a fixed amount of "slots" on the server and the PPD should contain 
an options to select one of the "slots". There can be special quick 
preset buttons for that or it can simply be an option which appears 
somewhere in the dialog.


Another concept would be the following:

Let us assume that CUPS can take options with arbitrary string length 
(Mike, is this correct?). Then we could send an arbitrary file containg, 
option settings, ICC profiles, job ticket, ... as argument of an option. 
Only condition is that the expression is ASCII without spaces, but we 
can UU-encode binary files.

The Gutenprint driver (rastertogutenprint) could accept a string option 
named "FineTuning" which takes the configuration file which the user's 
fine adjustment GUI for Gutenprint generates as one long string. 
rastertogutenprint reads the option from the fifth command line argument.

So the user sets a lot of fine adjustments, and also selects an ICC 
profile with Gutenprint's advanced settings GUI. The GUI puts the 
settings into an ASCII representation and saves this representation in 
~/.cups/lpoptions as a huge line like:

Dest epson FineTuning=blablabla...

Then CUPS sends this string with every job to the server and 
rastertogutenprint parses these settings and uses them.

The FineTuning option will not be mentioned in the PPD files, so that it 
does not appear in the printing dialogs.

With this approach there does not need to be saved any user data on the 
server, the user can tune and save settings whenever he wants, also 
while the printer printer is printing. The user can also save any number 
of settings using CUPS' concept of printer instances.

Disadvantage is that all configuration info is in the user's home 
directory on the client. If he accesses with several clients, the 
clients do not provide necessarily the same settings. Also the length of 
the string which can be passed with one option can be limited, but here 
pne could perhaps let rastertogutenprint accept more than one "hidden" 
option.

WDYT? Which of the two approaches should we use? The server-centralized 
way controlled by the user's client GUI "printing" command files or the 
client-based solution where the GUI saves the options as personal 
settings and they get submitted with every print job?

    Till
