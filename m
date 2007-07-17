Date: Tue, 17 Jul 2007 14:44:51 -0300
From: Marcelo Ricardo Leitner <mrl@mandriva.com>
Subject: Re: [Printing-architecture] Self-certification of Printers and
	Print Drivers for POSIX/Linux
Message-ID: <20070717174451.GG11968@idolize.conectiva>
References: <e395be80707111541u3beb6037pa30682c6018f1991@mail.gmail.com>
	<46979D69.90009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46979D69.90009@gmail.com>
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.freestandards.org

Hi all,

On Fri Jul 13, 2007 at 16:42:33 +0100, Till Kamppeter wrote:
> My suggestions for the testing are the following:
>
> - Distributions must be LSB compliant. This way they have a common 
> environment for binary executables. LSB 3.2 will require important 
> interfaces for printing functionality in applications and for printer 
> driver integration.
>
> The driver package should be made in distribution-indepent form to cover 
> all Linux distros with one driver.
>
> - Core/system components which need to be tested:
>
>    o CUPS
>    o Ghostscript
>    o foomatic-rip
>
> The printer drivers interact only with these ones. Apps send jobs to 
> CUPS/the printing system.
>
> - One good test would be to set up a print queue for the printer pointing 
> into a file and to print into it. The output file must have a reasonable 
> size after that. If something in the chain is missing this test would fail. 
> If there is physical access to the printer, printing on the printer should 
> also be tested.

I used this kind of test while developing the now old Conectiva Linux 10 and
it worked pretty well. I had scripts that could even grab the relevant
error from cups' error_log (debug level) and identify it. Then after running
this test for all printer/driver combinations (that time from
foomatic-configure -O), I had a clear view of the main problems in the
distro. This is a nice test (distro level?), indeed.

But, unfortunately, this won't work with drivers that requires direct access
to the device.

> - The user tool should be a distribution-independent package (or a package 
> each distro has to supply) which runs the tests in an automated way and 
> presents the results in both machine- and human-readable form. It should 
> also provide info to the user what he will need to do to make his printing 
> working.

I can't see what this application would do. The main reasons I see for it
not working are either he made a custom installation (and thus he has some
linux development skills) or the distro didn't do its job well, assuming the
driver was well tested by the manufacturer and it really should work with
the printer being used.

Can you explain a bit more about this tool please?

Thanks,
Marcelo.
