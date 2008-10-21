Message-ID: <48FDB8EF.4060101@the-axe-effect.de>
Date: Tue, 21 Oct 2008 13:11:43 +0200
From: Tobias Hoffmann <lprint-list@the-axe-effect.de>
MIME-Version: 1.0
References: <9624da290810201121r480f57d6vce5a783da0272046@mail.gmail.com>
In-Reply-To: <9624da290810201121r480f57d6vce5a783da0272046@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] ijs_invoke_server with hpijs
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
Cc: printing-architecture@lists.linux-foundation.org

Matt Gessner wrote:
> I need to know how to set the OutputFD parameter given to hpijs.
>
> I've tried opening several different files, and I always end up with 
> "unable to read client data" coming from hpijs.
- does it work with OutputFile instead?
- does it work with the ijs_server_example from the ijs package instead
of hpijs?

The ijs_client_example source code does help to clarify the API, when in
doubt.
You can also look at the pdftoijs print filter:
http://svn.sourceforge.jp/cgi-bin/viewcvs.cgi/pdftoraster/branches/gsoc2008_pdftoijs_nocups/src/pdftoijs.cc?root=opfc&view=auto

Two other thoughts, though:
- the error "unable to read client data" suggests to me, that the
problem occurs way before anything related to the OutputFD happens, but
you probably have looked deeper
- the dup()/pipe()/open() or whatever you use to create the file
descriptor has to happen before the ijs_invoke_server, so that the
descriptor is  available to the forked process.

   Tobias
