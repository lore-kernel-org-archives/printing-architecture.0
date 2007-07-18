Date: Wed, 18 Jul 2007 09:31:40 -0300
From: Marcelo Ricardo Leitner <mrl@mandriva.com>
Subject: Re: [Printing-architecture] Self-certification of Printers and
	Print Drivers for POSIX/Linux
Message-ID: <20070718123140.GB1266@idolize.conectiva>
References: <e395be80707111541u3beb6037pa30682c6018f1991@mail.gmail.com>
	<46979D69.90009@gmail.com>
	<20070717174451.GG11968@idolize.conectiva>
	<469D48D0.2060300@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
In-Reply-To: <469D48D0.2060300@gmail.com>
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


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Ter Jul 17, 2007 at 23:55:12 +0100, Till Kamppeter wrote:
> Marcelo Ricardo Leitner wrote:
>> Hi all,
>> On Fri Jul 13, 2007 at 16:42:33 +0100, Till Kamppeter wrote:
>>>
>>> - One good test would be to set up a print queue for the printer pointing 
>>> into a file and to print into it. The output file must have a reasonable 
>>> size after that. If something in the chain is missing this test would 
>>> fail. If there is physical access to the printer, printing on the printer 
>>> should also be tested.
>> I used this kind of test while developing the now old Conectiva Linux 10 
>> and
>> it worked pretty well. I had scripts that could even grab the relevant
>> error from cups' error_log (debug level) and identify it. Then after 
>> running
>> this test for all printer/driver combinations (that time from
>> foomatic-configure -O), I had a clear view of the main problems in the
>> distro. This is a nice test (distro level?), indeed.
>
> Great. Can you make the code available? We would have to update it a little 
> bit, for example using "lpinfo -m" instead of "foomatic-configure -O" (and 
> recursively searching /usr/share/ppd on non-CUPS systems). We can make test 
> queues also on non-CUPS systems with foomatic-configure and on unknown 
> printing systems (or for pure driver consistency testing) we can use pure 
> spooler-less direct calls of foomatic-rip (with the "--ppd" argument).

I though I had lost it, but searching again I found it. It's the tarball
attached. It includes 3 quick scripts:
check-printers-all.sh: checks for all drivers for all printers
check-printers.sh: checks the recommended driver for all printers
filter: filters(sort in dirs) out the logs according to the errors

Sorry for the dust, these scripts weren't touched for the last 2 years. But
they should be functional yet. :)

They already use foomatic-configure to setup the queues, as it makes it
easier, but it relies on the CUPS error logging, so it's CUPS-specific
because of this.

The spooler-less option would be nice, so you can know very precisely if
it's the driver or the driver+spooler combination that's not working.

>> But, unfortunately, this won't work with drivers that requires direct 
>> access
>> to the device.
>
> Yes. Most printer drivers are filter style (PostScript to printer's 
> language by a combo of Ghostscript and the driver). If direct printer 
> access is needed the PostScript-to-printer's-language filter is often 
> separate from the low-level driver module (like in HPLIP). Without printer 
> we can only do the filter test, unfortunately. But often filter and 
> low-level driver come in the same package, so the presence of the filter 
> would imply the presence of the low-level driver.

Specially now with CUPS 1.3 side's channel for backend/filter communication,
we could enforce this design usage by someway (working with upstream
perhaps), unless we won't be able to certify these drivers.

>>> - The user tool should be a distribution-independent package (or a 
>>> package each distro has to supply) which runs the tests in an automated 
>>> way and presents the results in both machine- and human-readable form. It 
>>> should also provide info to the user what he will need to do to make his 
>>> printing working.
>> I can't see what this application would do. The main reasons I see for it
>> not working are either he made a custom installation (and thus he has some
>> linux development skills) or the distro didn't do its job well, assuming 
>> the
>> driver was well tested by the manufacturer and it really should work with
>> the printer being used.
>> Can you explain a bit more about this tool please?
>
> The user tools would be the complete test suite, consisting of all test 
> script. So the user can test whether his distro has a consistent printing 
> system (CUPS, Ghostscript, foomatic-rip, Ghostscript having "cups", "ijs", 
> "opvp", "pxlmono", and "pxlcolor" output devices, for all installed PPDs 
> the appropriate driver is present, ...), a driver shipped by the 
> manufacturer of a printer is working (test should be possible without the 
> printer, so download manufacturer driver -> test -> buy printer).

So it would be mostly a GUI for all other test suits, right?

Thanks,
Marcelo.

--IJpNTDwzlM2Ie8A6
Content-Type: application/octet-stream
Content-Disposition: attachment; filename="printing-tests.tar.gz"
Content-Transfer-Encoding: base64

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
AfyqouYAKAAA

--IJpNTDwzlM2Ie8A6--
