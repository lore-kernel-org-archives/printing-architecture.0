Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YZ9aAfm7N4e9962zI4+zf43a6IKf06ntSfrV/JKApe4=;
 b=l39Smt93DiqATV7C7fq+KOjHF9zmfifgobct6s7lIIoKXw3suRnDYVk1F6rlhZl8A0
 xAHorq7clNXE2kI3bzIH3vFtQvimfFeXbfv+911E3dmxUl786RURdb9XlciaZlcD1FqX
 J2zKYtHtPJhN/EeGoU7rV6kjonIbLxYIsR9Hak0QvC4RR6N14ozEfVEd3vzZCnqBF3BR
 Tawtl0xUOs3lj+/JJrfR4euzFIHveuPygEW/Gs7DYi0cARYl/4c0wG4JGfZ7vpbuCJv2
 gkecrcOVQTpwRXuN5Ut5Es/vllgYXrbvn1PrzBEoIOc0uOP4LdSmmKOD9QbGhbQCFU+N
 ONbw==
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
 <CA+tVraiqkkoKRaO8Pe8HOzJpi4FD=PC1-wCHacQ6L-Tht934Lg@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e63d8592-35f6-f7c0-aafb-37b3ea4c8226@gmail.com>
Date: Wed, 29 Jul 2020 21:32:22 +0200
MIME-Version: 1.0
In-Reply-To: <CA+tVraiqkkoKRaO8Pe8HOzJpi4FD=PC1-wCHacQ6L-Tht934Lg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] GTK Print Dialog: Modern IPP printing
	environments cause problems
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Rithvik Patibandla <rithvikp98@gmail.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Rithvik Patibandla <rithp9@gmail.com>

On 29/07/2020 05:08, Rithvik Patibandla wrote:
> Hi Till,
> 
> I'm not completely sure of the current status of the work or what the 
> expected end product is, but if you think I can take it up and complete 
> it, I'd definitely like to do it.
> 
> However, I'm working as a full time developer so I can only spend about 
> 10-15 hrs per week on this, I hope that'll be sufficient.

No problem should not be such a big deal.

Rithvik, as you have already worked with CPDB you will probably get 
wasily into this project.

The need of this work you can derive from this thread.

The starting point is the following. If you have the current Ubuntu 
(20.04) installed, you have the following directory:

till@till-x1yoga:~/Downloads$ ls 
/usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/
libprintbackend-cloudprint.so  libprintbackend-file.so 
libprintbackend-test.so
libprintbackend-cups.so        libprintbackend-lpr.so
till@till-x1yoga:~/Downloads$

These are the backends with which the GTK print dialog communicates with 
the different print technologies. These backends are specific to the GTK 
dialog, and also only found in that directory, in contrary to the CPDB 
which are found via D-Bus (snappable) and supposed to work with all GUI 
toolkits.

The idea is to replace all these GTK print dialog backends by one CPDB 
adapter backend, let us call it libprintbackend-cpdb.so. It is supposed 
to be dropped into this directory and all the other libprintbackend-*.so 
removed.

libprintbackend-cpdb.so is supposed to be a backend for the GTK print 
dialog and a frontend for the CPDB backends. Its task is to relay the 
calls for listing printers, listing options, setting options, sending 
jobs, ... to the CPDB backends. This way the GTK print dialog gets its 
content from the CPDB and not from its own backends.

Note that the GTK dialog does asynchronous listing of the printers, it 
seems to call all its backend to listen for printers and adds printers 
to the list when they are discovered, with the dialog already 
interactive, so the user can select the desired printers as soon as it 
shows up and does not need to wait for the list to complete. So also no 
timeout for the listing process is required. CPDB works this way, too. 
So integration seems to be easy.

Use Nilanjana's demo text mode frontend which comes with the cpdb-libs 
package as example.

We would appreciate if you could take up this task.

    Till
