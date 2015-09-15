Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=Jin2sJZCLpM5JZC39JfzWCj7C0seKnTpItXCbts21hw=;
	b=uc3hijXQMJ2uvXp/Q73Ggjaw1NnGewKSUaxjohZxbY0tWlpGmnKjCh4KBxky04ZygD
	I1rFNgHH5ZmPqrskSDrvDFXVX90XoHOc/1do8O+LRPZ3zh/on88nhaMqdhlV/2jC/WTX
	eldzB1zMP44mNNA9S7FBdpjPe0GN5SMIXbUe1/KORJ0N46pg1VW+Ut6OPS+CGEJ6HoaI
	128D5AXos+R7nO5oUZAXllGfQHUEEuPMdsvygeyZpabC5fUKSSZLmA7Yi2iK0+hL9F4Y
	+c9uI1wmcDFpuZr758se6TWF9iBKn7WYRsVVHjtA+xPyZwNHJYuHoSGh4k9NQ8F8dkUU
	WmnQ==
References: <55F30A6F.5000403@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <55F8877B.9050806@gmail.com>
Date: Tue, 15 Sep 2015 18:02:51 -0300
MIME-Version: 1.0
In-Reply-To: <55F30A6F.5000403@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Communication between IPP printer and
	"ipp" CUPS backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, "The CUPS developer list." <cups-devel@cups.org>
Cc: Daniel Dressler <danieru.dressler@gmail.com>

Hi,

no one has any idea or opinion concerning this?

    Till

On 09/11/2015 02:07 PM, Till Kamppeter wrote:
> [ Cross-posting because I do not know which list is the better for
>    this ]
>
> Hi,
>
> I have overtaken maintainership on the ippusbxd IPP-over-USB support
> daemon (hosted now here: https://github.com/tillkamppeter/ippusbxd/).
>
> Now I have done several tests and bug fixes using the HP DeskJet Ink
> Advantage 2540, a USB multi-function device which also does IPP via WiFi
> and via IPP-over-USB.
>
> The printer prints reliably via WiFi, conventional USB (using "hp"
> backend of HPLIP) and when doing IPP-over-USB but printing with ipptool
> and not with the "ipp" CUPS backend. With the "ipp" CUPS backend I can
> print something like 3 or 4 one-page LibreOffice jobs and then the
> printer stops working, whereas with ipptool I do not get it stopping. It
> prints and prints and prints, ...
>
> The difference between the "ipp" backend and ipptool is what
> communication happens between the client and the printer. ipptool sends
> the job without any other communication in parallel until the job is
> completely sent out and the answer (with job URI/ID) is received. The
> "ipp" tool does a lot of conversations in parallel, like checking the
> progress of the job, the ink levels, ... I have already tried to add
> "&waitjob=false" to the device URI for using the "ipp" backend, making
> the backend stop as soon as the job is sent and communicate less this
> way, but I still get the printer stopping in a middle of a job.
>
> By the way, command line of ipptool is
>
> ipptool ipp://localhost:60000/ipp/print -d
> filetype=application/octet-stream -d filename=`pwd`/printout-bashrc.gz
> print-job.test
>
> The file printout-bashrc.gz is the result of printing ~/.bashrc with
> CUPS and HPLIP but capturing the output into a file and "gzip"ping it.
>
> In the "ipp" backend case I use an HPLIP-PPD-based CUPS queue with a
> device URI like
>
> ipp://localhost:60000/ipp/print
>
> or
>
> ipp://localhost:60000/ipp/print&waitjob=false
>
> In both cases ippusbxd is binding to port 60000 on localhost on both
> IPv4 and IPv6, running with the command line
>
> ./ippusbxd -d -v 03f0 -m c211 -s BR54BFB02C05XK -P 60000 2>&1 | tee log
>
> The codes after -v, -m, and -s are printer specific, they are USB vendor
> ID, USB product ID, and the serial number. -P is for requesting port
> 60000 and -d makes ippusbxd in the foreground with debug output.
>
> I am using my 1.22 release of ippusbxd.
>
> ippusbxd starts in a loop waiting for requests from the client on
> localhost:60000. If a request comes in it starts a thread for it,
> immediately continuing to listen for further requests, allowing several
> requests to be handled in parallel. The request handler thread starts a
> conversation with the printer, passing on the client's request to the
> printer via USB and waiting for the printer's answer on USB, passing it
> on to the client on localhost:60000. It repeats in a loop if the client
> continues the communication sending new packets until the client stops.
>
> One sees in the debug output that printing via the "ipp" backend
> generates something like three or four parallel conversations, one being
> the transfer of the job data. ipptool establishes only one single
> conversation.
>
> If everything is OK (job gets completely printed) every client's request
> receives an answer from the printer and a conversation always ends with
> an answer from the printer. All communication except the upload of the
> print job data into the printer is done vis Content-Length, the data
> upload is done via Chunked. The data transfer is answered with the job
> URI and ID.
>
> If the printer stops, the page (in case of multiple pages the last page)
> is printed only half-way. In the debug info one can see that the full
> job data got uploaded and the closing blob for an HTTP package in
> chunked mode (30 0d 0a 0d 0a, "0\r\n\r\n") is also sent, but the printer
> never answers to this. The thread carrying this conversation is waiting
> until timing out. Parallel conversations still continue to happen. If
> the device URI is without "&waitjob=false" the job does not get
> dequeued. The printer never finishes printing the page and after some
> minutes it times out internally, ejecting the half-printed page.
>
> This kind of stop does only happen with ippusbxd, not when printing via
> WiFi.
>
> Now my question is whether I do everything correctly, especially whether
> the assumption that communication with an IPP printer is actually always
> started by a request from the client which gets answered by the printer
> and then continuing this way until the conversation ends with the answer
> of the printer, allowing several of these conversations in parallel?
>
> Is there no way for example that the printer can start a conversation
> and if I ignore that (have no loop listening on the USB of the printer
> and grabbing the data there) a printer-internal, small buffer fills up
> and the printer blocks? And if I grab data from the printer's USB, do I
> have to answer to prevent the printer from blocking? Can one set the
> printer into a mode not starting such conversations?
>
> Is there a limit of parallel conversations and the "ipp" backend perhaps
> exceeds it? Can I check somehow before starting a conversation whether
> there is still "a slot free"?
>
> Any other idea what can be happening here?
>
> Thanks in advance.
>
>     Till

