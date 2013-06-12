Return-Path: <jpopelka@redhat.com>
Message-ID: <51B83096.9090705@redhat.com>
Date: Wed, 12 Jun 2013 10:25:58 +0200
From: Jiri Popelka <jpopelka@redhat.com>
MIME-Version: 1.0
References: <51B754BC.3040302@gmail.com>
In-Reply-To: <51B754BC.3040302@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS 1.7.x packaged for Ubuntu!
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
Cc: Till Kamppeter <till.kamppeter@gmail.com>

Hi

On 06/11/2013 06:47 PM, Till Kamppeter wrote:
> I have packaged CUPS 1.7b1, a first beta version of the 1.7.x series of
> CUPS and uploaded it to my Ubuntu PPA [1] for both Raring and Saucy,

I packaged and built it for Fedora rawhide [1].

> Note that most of the upstream web site is down currently, so I do not
> have much more info about the new release.

There's been only one problem so far - it was failing to build on ARM, 
here's [2] the patch if anyone's interested .

[1] https://koji.fedoraproject.org/koji/buildinfo?buildID=419263
[2] 
http://pkgs.fedoraproject.org/cgit/cups.git/plain/cups-17b1-va_list.patch

--
Jiri
