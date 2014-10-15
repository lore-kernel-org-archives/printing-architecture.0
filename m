Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=FSwlEPNU30BfUUKhwaiZQkRi+JoIe8bPv06SYE3lGPI=;
	b=f7OeZL4xn9ADQrqFEZk32Zv182VrqStPTpAye0SjhdKvTAfYWLd0tVuzuSNY3Fd/vN
	l7e3Od/sicdAhx2cQUjK3UVUyPSr2xjqNxc3sUG+IaorimDHrsOkhI6NpoeeQmRxMoGy
	8glFesYvAW2R+ke/A3WazieRNR0QFp6gDKQW71eog0zuCUAQqUB0Vyv9RKsE57aj+kDL
	b9f88jgFWt2LMYW5bl58b1fIM2eGcRlN9CpkfNlSz4wdQgRjUQasaLcOU4aoe+AKdQPm
	bkc45w6TRoWtK9ibhGKDdH/JS4j081RC+drfHzQe9iUkJ9kk5iE8gxH9gBvgbyQghnYi
	I5Iw==
Message-ID: <543E72C7.3090603@gmail.com>
Date: Wed, 15 Oct 2014 15:12:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
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
	<543E5168.9010108@thax.hardliners.org>
In-Reply-To: <543E5168.9010108@thax.hardliners.org>
Content-Type: text/plain; charset=utf-8
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>, Alex Korobkin <korobkin+op@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 10/15/2014 12:50 PM, Tobias Hoffmann wrote:
> On 14/10/14 23:09, Tobias Hoffmann wrote:
>> On 14/10/14 21:17, Alex Korobkin wrote:
>>> Shouldn't pdftopdf just insert PJL SET COPIES=X without any related
>>> code in PPD? PJL SET COPIES seems to be a standard PJL command.
>>
> 
> Hmm, the biggest problem seems to be that everything from ppd->jcl_begin
> (i.e. for PCL: "\033%-12345X@") until ppd->jcl_ps (set to
> *JCLToPDFInterpreter in pdftopdf, i.e."ENTER LANGUAGE") is written by
> cups's ppdEmitJCL() function.
> As far as I understand it, this are the options:
> 
> a) stick to what cups provides in terms of PPD settings (and probably
> move the Copies replacement code before ppdEmitJCL),
> 
> b) patch cups, namely ppdEmitJCL() in emit.c.
>   As cups does detect PCL as JCL here and sets "JOB NAME", "DISPLAY" or
> "RDYMSG DISPLAY" that would be the best place to add PJL SET COPIES.
>   But this will affect all PPDs with JCL, e.g. when pure PostScript is
> used... and, in case the patch is not accepted upstream, cups-filters
> has to ship it(?)
> 

I will not ship patches for CUPS in the cups-filters upstream package.
You could post an upstream bug report/feature request on CUPS
(http://www.cups.org/str.php) to let the ppdEmitJCL() function add "PJL
SET COPIES=X" with the number of copies taken from the command line
arguments (4th argument, see "man filter"). We must look into whether we
should generally add "PJL SET COPIES=X", or only under certain
conditions (is another copy generation method supposed to be used?
Should we have some PPD keyword to turn it on or off?).

> c) do not use ppdEmitJCL at all. We would loose e.g. JOB NAME, but have
> better control over the output...

Do you mean using the not very elegant method to copy the code of the
function into cups-filters and modify it there?


> If you don't set *JCLToPDFInterpreter, and use *pdftopdfJCLBegin,
> together with more pdftopdfJCL* keywords, this could work. The current
> emitJCLOptions implementation does not insert newlines, though. I'm not
> sure if the PPD value could instead contain it, instead...

One could add "<0A>" to the ends of the PJL code lines in the PPD file.
This way one could go with only *pdftopdfJCL... keywords in the PPD and
so make CUPS' ppdEmitJCL() do nothing, letting pdftopdf gain full
control. We should try this.

>   I think Koji Otani only used the pdftopdfJCL* insertion to pass stuff
> to pdftoopvp, in a format that only used one line, separated by ";".
>   One of his examples is:
>>   *OpenUI *PageSize/Page Size: PickOne
>>   *DefaultPageSize: A4
>>   *PageSize A4/A4:
>>   *pdftopdfJCLPageSize A4/A4: "PS=A4;"
>>   *PageSize Letter/US Letter:
>>   *pdftopdfJCLPageSize Letter/US Letter: "PS=LT;"
>>   *CloseUI: *PageSize
>   I do not understand his original design fully, yet.
> 

This is a simple way to pass PPD option settings to the next filter (in
this case pdftoopvp), so that the filter does not need to read the PPD
and merge the command line option settings again. Also the next filter
gets note when tasks like copy generation are delegated to it.

> d) We can try a hacky workaround: In pdftopdf_jcl.c, emitPreamble(), set
> ppd->jcl_ps to an empty string. Then ppdEmitJCL will not skip JCL
> processing all together, but it also will not write ENTER LANGUAGE at
> the end. But it will result in an empty line. Would that be a problem in
> PCL? After that we can write SET COPIES and ENTER LANGUAGE ourselves.
> Or something like ppd->jcl_ps=concat("...SET COPIES...\n",
> JCLToPDFInterpreter->value) ?
>  

I do not know whether an empty line between PJL lines in a job causes a
problem, like for example the PJL header being terminated and PCL (not
PJL) entered starting with printing this empty line and after that the
PostScript or PDF as text. So better try the ppd->jcl_ps=concat("...SET
COPIES...\n", JCLToPDFInterpreter->value) approach.

> And yes, Till basically has to decide how to proceed.

So please try the two possibilities of

1. using *pdftopdfJCL... instead of *JCL... in the PPD, with "<0a>" in
the code snippets where line ends are supposed to be.

2. setting ppd->jcl_ps=concat("...SET COPIES...\n",
JCLToPDFInterpreter->value)

The first one can simply tried by editing the PPD file, the second needs
a (simple) code change in pdftopdf. CUPS does not need to get modified
for these tests.

Also make the above-mentioned feature request for CUPS to discuss the
SET COPIES in the ppdEmitJCL() of CUPS.

   Till

