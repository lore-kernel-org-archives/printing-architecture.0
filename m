Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Pj+LkoYwb8mcr3zUT1UJv9Xnzh82sVr5mRNvW/nfi00=;
 b=m8b+9/KoSW3Fi7M3lnWOllwReGQ/alQjPqqCGJVbziaTFQoMMnReRAWzAKwCuDQvdW
 KoGEmYjO/Eod3d0AQQphp9D54Y70vgR3+6iBUOvkDcSn1aAdIskZQFNlk8Hm0MtuVOM3
 zDCMdZUeKpPVQ7zVizJDGsICCTLlm0vPt4SwQZ0Dlbmj09hvKTzZvpBhZTa6FD3edHtN
 vQWyQsQCeQK3nfrEtpnZF12bqB4GvYLQQqIaZNBoYh/rHODTQ5vMauKF1sGhHOe3DkKJ
 orVt96XvmMptBKSAJMn4/5wvW/nesk/1pHgI90w6J2ndxrKztgs+zge8cb3w8tUCk8tH
 ngWA==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <878ddede-d75c-f422-304f-5a6ce517216a@gmail.com>
 <72f7a2243e4fef36d586af0c753d3370@suse.de>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <97ed9a5d-232e-4080-ec03-b645f84a9390@gmail.com>
Date: Tue, 2 Mar 2021 23:52:00 +0100
MIME-Version: 1.0
In-Reply-To: <72f7a2243e4fef36d586af0c753d3370@suse.de>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Future of Printer Setup Tools
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>, printing-architecture@lists.linux-foundation.org, Jai Luthra <luthrajaiji@gmail.com>, Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>

On 02/03/2021 13:04, Johannes Meixner wrote:
> 
> Hello,
> 
> thank you Till for your comprehensive and explanatory summary.
> 
> It helps so much that you act as a kind of "moderator" who
> moves discussions forward in a positive and constructive way.
> 
> On other mailing lists or forums I see it too often that long
> and elaborated discussions fade away in a vague pending state
> because there is nobody who acts as a moderator who summarizes
> current results so that all know what the current state is.
>

Thank you very much.

> my first offhanded thought when reading it was:
> 
> Why having that functionality separated in a different tool
> and not in the normal printing (or scanning or faxing) dialog?
> 
> I describe here only the printing case.
> 
> What I have in mind is:
> 
> The end-user sits in front of his current application program
> and now - all of a sudden - he wants to print from within
> his current application program so he opens its print dialog, cf.
> https://en.opensuse.org/Concepts_printing#User_expectations
> ------------------------------------------------------------------
> The usability experts Peter Sikking and Jan Mühlig did some
> research with real average users. Peter Sikking wrote at
> http://www.mmiworks.net/eng/publications/labels/openPrinting.html
> ...
> 1st rule of printing: printing does not exist
> ...
> for users there is no worthwhile, productive activity
> between the moment they want to see something printed and
> the moment it comes out of the printer
> ...
> And guess what: there is no such thing as printing.
> 
> It does not exist as a task, as a meaningful activity.
> One moment you decide to see it on paper,
> the next it rolls out of the printer.
> ------------------------------------------------------------------
> 
> In a proper IPP Everywhere environment all he needs to print
> is "magically" already there so he can "just print".
> 
> But if not things go wrong for the end-user because he does
> not see the needed "buttons" to set up legacy (USB) printers
> or to establish access to DNSSD-announced network IPP printers
> in his normal print dialog.
> 
> So I think printer setup things should be integrated
> into the normal print dialog.
> 
> If printer setup can be done as normal user all is fine.
> 
> If printer setup requires 'root' permissions an appropriate
> authentication dialog should pop up. If the user does not know
> the root password he knows at least that he would have to contact
> an admin to get that task done.
> 
> Of course I know that
> "there is no such thing as THE normal print dialog"
> but this could be another good reason why there should be
> one single common print dialog framework/backend
> that is used "under the hood" by the desktop toolkits
> and (free software) stand-alone applications.
> 
> If printer setup functionality could be integrated,
> the Common Print Dialog Backends
> https://openprinting.github.io/projects/04-print-dialog/
> might be better re-named something like
> Common Print User Interface Backends (or Framework)

Good idea. I think the print dialogs of Mac OS X have this already, some 
button to open the window to add a new printer (part (2) from my 
suggested parts).

The biggest problem here is to get the GUI toolkit projects to implement 
that, or to find contributors to do so.

    Till

