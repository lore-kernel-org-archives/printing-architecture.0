DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	b=o4RAkoYrvfc1kj5N6oFH06GShmGc2wXcR37CQFcWfkCOklujM2bxZk2PCvDJmRXQdeFhXWvwEVVVMF1fw2GVAV5V23BVf6ksaM0Sb8/sJxHE47x5F2KkDjuZ/0/+8oC/Xs985VgblG2iVJD5UqN6YAW2o933PgID/WciDHm06vw=
Message-ID: <469D48D0.2060300@gmail.com>
Date: Tue, 17 Jul 2007 23:55:12 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Self-certification of Printers and	Print
	Drivers for POSIX/Linux
References: <e395be80707111541u3beb6037pa30682c6018f1991@mail.gmail.com>
	<46979D69.90009@gmail.com>
	<20070717174451.GG11968@idolize.conectiva>
In-Reply-To: <20070717174451.GG11968@idolize.conectiva>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marcelo Ricardo Leitner <mrl@mandriva.com>
Cc: printing-architecture@lists.freestandards.org

Marcelo Ricardo Leitner wrote:
> Hi all,
> 
> On Fri Jul 13, 2007 at 16:42:33 +0100, Till Kamppeter wrote:
>> My suggestions for the testing are the following:
>>
>> - Distributions must be LSB compliant. This way they have a common 
>> environment for binary executables. LSB 3.2 will require important 
>> interfaces for printing functionality in applications and for printer 
>> driver integration.
>>
>> The driver package should be made in distribution-indepent form to cover 
>> all Linux distros with one driver.
>>
>> - Core/system components which need to be tested:
>>
>>    o CUPS
>>    o Ghostscript
>>    o foomatic-rip
>>
>> The printer drivers interact only with these ones. Apps send jobs to 
>> CUPS/the printing system.
>>
>> - One good test would be to set up a print queue for the printer pointing 
>> into a file and to print into it. The output file must have a reasonable 
>> size after that. If something in the chain is missing this test would fail. 
>> If there is physical access to the printer, printing on the printer should 
>> also be tested.
> 
> I used this kind of test while developing the now old Conectiva Linux 10 and
> it worked pretty well. I had scripts that could even grab the relevant
> error from cups' error_log (debug level) and identify it. Then after running
> this test for all printer/driver combinations (that time from
> foomatic-configure -O), I had a clear view of the main problems in the
> distro. This is a nice test (distro level?), indeed.
> 

Great. Can you make the code available? We would have to update it a 
little bit, for example using "lpinfo -m" instead of "foomatic-configure 
-O" (and recursively searching /usr/share/ppd on non-CUPS systems). We 
can make test queues also on non-CUPS systems with foomatic-configure 
and on unknown printing systems (or for pure driver consistency testing) 
we can use pure spooler-less direct calls of foomatic-rip (with the 
"--ppd" argument).

> But, unfortunately, this won't work with drivers that requires direct access
> to the device.
> 

Yes. Most printer drivers are filter style (PostScript to printer's 
language by a combo of Ghostscript and the driver). If direct printer 
access is needed the PostScript-to-printer's-language filter is often 
separate from the low-level driver module (like in HPLIP). Without 
printer we can only do the filter test, unfortunately. But often filter 
and low-level driver come in the same package, so the presence of the 
filter would imply the presence of the low-level driver.

>> - The user tool should be a distribution-independent package (or a package 
>> each distro has to supply) which runs the tests in an automated way and 
>> presents the results in both machine- and human-readable form. It should 
>> also provide info to the user what he will need to do to make his printing 
>> working.
> 
> I can't see what this application would do. The main reasons I see for it
> not working are either he made a custom installation (and thus he has some
> linux development skills) or the distro didn't do its job well, assuming the
> driver was well tested by the manufacturer and it really should work with
> the printer being used.
> 
> Can you explain a bit more about this tool please?
> 

The user tools would be the complete test suite, consisting of all test 
script. So the user can test whether his distro has a consistent 
printing system (CUPS, Ghostscript, foomatic-rip, Ghostscript having 
"cups", "ijs", "opvp", "pxlmono", and "pxlcolor" output devices, for all 
installed PPDs the appropriate driver is present, ...), a driver shipped 
by the manufacturer of a printer is working (test should be possible 
without the printer, so download manufacturer driver -> test -> buy 
printer).

    Till
