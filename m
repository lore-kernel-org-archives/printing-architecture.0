Return-Path: <cups@accounts.christian-wolf.click>
From: Christian Wolf <cups@accounts.christian-wolf.click>
Date: Mon, 25 Oct 2021 15:15:35 +0200
Message-ID: <1768598.8bk4Q0uJvS@cwolf-work>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [Printing-architecture] How to correctly share a printer with
	option to set options?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hello,

I recently ran over the problem, that I need to configure multiple instances of 
cups to work together. Let me first explain my setup/problem:

I have a Brother QL-500 label printer. There is a driver/PPD provided by the 
vendor. This printer allows various different label formats, that I need to 
specify during the print invocation (using lp -o PageSize=...). If the page 
size is not set, the printer will accept the job (thus cups thinks it is 
successfully printed) and then just stalls printing with a blinking LED.
Long story short: I need to set the PageSize on each invocation of lp.

Now, the printer is only equipped with USB connection. No big deal in times of 
raspberry pi and similar devices. Then, you can attach a network capable mini 
computer to the printer and you have it available on the network. It does not 
matter, what machine type this is, let's call it machine A.

On my workstation machine, I am creating some fancy labels in software and 
want to print them. Let's call this machine B. On B, of course, I have to run 
a cups instance as well to handle all available printers in the network/house 
(e.g. also the normal paper printer).

As I am sitting in front of B (and A most probably does not even have a 
monitor), I need to select the settings like paper size during the printing.

One option would be to copy the printout from B to A using SSH and invoking 
the print there. This neglects the cups on B completely and I consider it only 
a  fallback solution, as shell access and knowledge is required by the users.

I thought it should be possible to share the printer in A using CUPS and use 
this printer in my CUPS instance on B. That's the theory.

Unfortunately, I am not sure, how I should build this system up.

1st attempt: (preferred solution)
My first  intuition was to install the printer driver on A (having a static IP) 
and use this printer using IPP over the network on B. Due to the static IP, 
the address of the printer can quickly be derived and used. However, I need to 
select a model for the printer on B. Would this be IPP everywhere?

Also then I had the problem that the settings were of general form. So I could 
set the PageSize. But when looking at the options using `lpoptions -p ... -l`, 
I was presented with page sizes like A4, A5, Letter, Legal etc. This will not 
work, I need to provide the sizes for the brother printer like 23x23 etc.

Here, I am doing something wrong I suspect that the options were not 
propagated from the brother driver on A to the options on B, am I correct? How 
could I get the correct setting associated to the brother printer instead some 
generic options?

2nd attempt:
When the 1st attempt failed, I tried something different: I put a raw queue on 
A that I used on B. The printer driver is now installed on B thus the options 
are correct. As far as I remember this was mostly working but not 100% stable.

The big drawback is that I need to provide printer drivers on all client 
machines in the network which gets tricky, once windows machines come into 
play.

I looked at the docs on the web site, e.g. https://openprinting.github.io/
cups/doc/network.html and https://openprinting.github.io/cups/doc/sharing.html 
but did not find any more in-depth understanding, how this might be set up 
best. Unfortunately, there are some keywords thrown around that might attract 
people but they do not help me when I do not understand what these do exactly. 
One major question of the IPP everywhere protocol from my side would be if it 
passes options along or are just generic options covering most printers out 
there (see above).

Sorry for the lengthy text!

Cheers
Christian



