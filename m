Return-Path: <lprint-list@thax.hardliners.org>
Message-ID: <543EC4C3.4020405@thax.hardliners.org>
Date: Wed, 15 Oct 2014 21:02:27 +0200
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
	<543D9108.6050307@thax.hardliners.org>
	<543E5168.9010108@thax.hardliners.org> <543E72C7.3090603@gmail.com>
	<543E9F5F.8090106@thax.hardliners.org>
	<CA+3RNfhYNr3sp1Hccv_F8x4pWFd+i02ZcyGfxBxAev+SVkAFMw@mail.gmail.com>
In-Reply-To: <CA+3RNfhYNr3sp1Hccv_F8x4pWFd+i02ZcyGfxBxAev+SVkAFMw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

On 15/10/14 19:06, Alex Korobkin wrote:
> Till, your patch works for me, at least for pure PDF workflow. I 
> haven't tested all cases yet, just a JCL-based PPD and a PDF printing.
>
> Tobias, I haven't tested your patch. Is it different from Till's patch?
>

Till's patch only reached me after if sent mine, but, the basic idea is 
obviously the same.
My patch
1) also fixes an existing issue of memory ownership when ppd->jcl_ps is 
replaced
2) will only insert @PCL SET COPIES, when jcl_begin uses the known PJL 
begin sequence (copied from what pstops does wrt. to PCL).

3) but it does not handle *Copies specially. That did not seem that 
important to me; it probably makes some  sense for the 
"*JCLToPDFInterpreter exists, but it's not PCL" case.

IMO a final patch should include 1) and 2), and might also include 3).

   Tobias
