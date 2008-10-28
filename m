Message-ID: <49070C99.8000505@gmail.com>
Date: Tue, 28 Oct 2008 13:59:05 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>	<49035AC2.5000000@fakenhamweb.co.uk>	<200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903751E.2000507@fakenhamweb.co.uk>	<200810251950.m9PJoeFa030284@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903BCCF.6060308@fakenhamweb.co.uk>	<200810260049.m9Q0nTIw032617@dsl092-065-009.bos1.dsl.speakeasy.net>	<49049DC3.8000405@apple.com>	<200810261653.m9QGrk2l014877@dsl092-065-009.bos1.dsl.speakeasy.net>	<490530BC.9090803@apple.com>	<200810271054.m9RAsDLs001975@dsl092-065-009.bos1.dsl.speakeasy.net>
	<alpine.LNX.1.10.0810281134060.17582@nelson.suse.de>
In-Reply-To: <alpine.LNX.1.10.0810281134060.17582@nelson.suse.de>
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
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Johannes Meixner wrote:
> Hello,
> 
> On Oct 27 06:54 Robert Krawitz wrote (shortened):
>>   Date: Sun, 26 Oct 2008 20:08:44 -0700
>>   From: Michael R Sweet <msweet@apple.com>
>>
>>   Robert Krawitz wrote:
>>   >    Date: Sun, 26 Oct 2008 09:41:39 -0700
>>   >    From: Michael R Sweet <msweet@apple.com>
>>   >
>>   >    Unless we want the print dialog to pass the XML data needed by the
>>   >    driver (not a good idea IMHO), that data will need to be on the
>>   >    "server" (I use quotes because most of the printing done to
>>   >    consumer/ prosumer inkjets is done from a single system) and then
>>   >    referenced by the print dialog, probably via an option choice
>>   >    and/or preset that is passed instead.
>>   >
>>   > Why would it be a bad idea to pass it in from the client?
>>
>>   Oh, I don't know, maybe just that passing a shitload of real numbers
>>   with every print job is incredibly inefficient and totally non-user-
>>   friendly?
>>
>>   For example, you'd be looking at 1MB of data for 16-bit LUTs for an 8
>>   color printer.  I hope you've been working on your typing!
>>
>> That's why I think the dialog should be able to grab per-user presets
>> out of a client-side .cups_presets or whatever file.
> 
> The latter would introduce another new kind of file type
> (beside ~/cups/.lpoptions).
> 
> 
> What about having the possibility sending print job options
> which are actually bigger pieces of whatever data
> as print job files and have well known predefined MIME rules
> on the server so that only on the server there is the special
> knowledge that whatever special data type as print job file
> is actually a job option?
> 
> E.g. something like
> 
> lp -d queue-name file.optiondata file.postscript
> 
> I think a problem is how to avoid that file.optiondata
> is actually printed on an older CUPS version server.
> 
> Perhaps it could work to have its MIME type so that
> on an older version server it is recognized as
> application/octet-stream
> so that such data is not printed by default?
> 
> 
> Perhaps it would be better (i.e. cause less conflicts)
> when a normal user could upload a print job options file
> to the server e.g. via
> 
> lp -d queue-name -o job-options-upload file.optiondata
> 
> and use it later as often as he likes via
> 
> lp -d queue-name -o job-options-file=file.optiondata file.postscript
> 
> The server would store the uploaded job options files
> separated for each user name.
> 
> The server should have appropriate "MaxJobOptionsFiles" and
> "MaxJobOptionsFilesPerUser" settings with reasonable defaults
> in its cupsd.conf file.

CUPS has a concept for that and Gutenprint already supports it for head 
cleaning. The command file "printing" concept. You send a file with 
special commands and the mime.types system of CUPS recognizes it as 
command file, directing it into a "commandto..." filter supplied by the 
Gutenprint package. This "commandto..." filter could also save advanced 
options per-user and Gutenprint's "rastertogutenprint" filter could read 
them according to the user name of the sending user. A certain command 
in a command file could also send back the current configuration, so 
that the user can see his settings.

As CUPS filters are all run by the "lp" user, all settings are stored in 
a file (system) with read/write access by "lp".

The command files do not need to be hand-written, they can be created by 
the advanced settings GUI of Gutenprint and/or by the GIMP plug-in. They 
can also be of arbitrary length, for example with an embedded ICC profile.

Disadvantage of the concept is that users cannot configure while the 
printer is printing (if one does not create an extra queue only for 
configuring, but this would look ugly in the printing dialogs of 
applications).

    Till
