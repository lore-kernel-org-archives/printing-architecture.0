Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626681928;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tCVUo/g4NuTFuoBaJM27klsUO/4yEu0cLOdHwCFRJxc=;
 b=g8JcKO0jGCC2czlBTS+dNtxP8pcw5dMS36MZ8m/xISfdlMsRDfC+P790wsc6gfVBy41Zth
 Ohiw9Eme3mdnexkDl/tAGq0wvvR0V6pf9BA4bSBexTdjrW6u3IllLYvbSnroICQIFluLye
 yWBSqLDo0UfafPcaHlws3IrREeLEfIE=
References: <d3908bd8-c10e-9133-dc4f-19b5494b0730@gmail.com>
 <20210718125041.65da6c5a@workstation64.local>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <d681b333-e8d5-2ab1-8007-9834752a1abc@redhat.com>
Date: Mon, 19 Jul 2021 10:05:22 +0200
MIME-Version: 1.0
In-Reply-To: <20210718125041.65da6c5a@workstation64.local>
Content-Type: multipart/alternative;
 boundary="------------A4B1A80F59B0656829EABB61"
Content-Language: en-US
Subject: [Printing-architecture] CUPS SNAP and distributions (was Re:
 OpenPrinting News)
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

This is a multi-part message in MIME format.
--------------A4B1A80F59B0656829EABB61
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 7/18/21 12:50 PM, Andreas Radke via Printing-architecture wrote:
> Am Sat, 17 Jul 2021 02:10:04 +0200
> schrieb Till Kamppeter <till.kamppeter@gmail.com>:
>
>> Hi,
>>
>> I have posted the newest development of the last month on our web
>> site now.
>>
>> Here we go:
>>
>> https://openprinting.github.io/OpenPrinting-News-July-2021/
>>
>>      Till
> "Add a migration script so that OS distributions can easily switch over
> from classic packages to the CUPS Snap"
>
>
>
> I highly doubt major distributions will follow that way.
I wanted to mention my thoughts regarding this on a OpenPrinting monthly=20
call, but I haven't managed to join yet :( , so I'll post my=20
plans+thoughts here, since you began the conversation :)
>   Please make
> sure it will be possible to kepp full support with custom
> built distribution packages as well.
It would be great if it was possible. And IMO it still will be.
>
> Arch Linux will never add such official snap support or access to the
> snap store at all.

As for Fedora I plan to package all required projects as RPMs, verify=20
that all new features work as expected and then focus on SNAP. IMHO it=20
is easier to figure out whether the possible issue is due SNAP=20
environment, or if the feature itself is buggy.

For RHEL/CentOS Stream, RPMs will be supported projects versions for now=20
- as for a containerized printing stack, IMHO I cannot use SNAPs (unless=20
I take snapd under my wings) there, but I will need to use flatpack=20
(already in RHEL/CentOS Stream).

But as an overall thought on containerized printing stack - it would be=20
great if the test suites of containerized projects were improved first=20
(where possible) if we ship the current upstream sources (from master=20
branch) - then if we run those test suites before the project gets=20
containerized, this way we can provide a quality assurance for people=20
using the container.

And testing would help getting the containerized CUPS as a default in=20
the future.

I'm planning to go through our downstream regression test suite and see=20
if some of those can be added to CUPS/cups-filters test suites, and=20
enhancing the test suites where I can.

>
> Andy
> Arch Linux
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C


--------------A4B1A80F59B0656829EABB61
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 7/18/21 12:50 PM, Andreas Radke via
      Printing-architecture wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20210718125041.65da6c5a@workstation64.local">
      <pre class=3D"moz-quote-pre" wrap=3D"">Am Sat, 17 Jul 2021 02:10:04 +=
0200
schrieb Till Kamppeter <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:ti=
ll.kamppeter@gmail.com">&lt;till.kamppeter@gmail.com&gt;</a>:

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

I have posted the newest development of the last month on our web
site now.

Here we go:

<a class=3D"moz-txt-link-freetext" href=3D"https://openprinting.github.io/O=
penPrinting-News-July-2021/">https://openprinting.github.io/OpenPrinting-Ne=
ws-July-2021/</a>

    Till
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
"Add a migration script so that OS distributions can easily switch over
from classic packages to the CUPS Snap"



I highly doubt major distributions will follow that way.</pre>
    </blockquote>
    I wanted to mention my thoughts regarding this on a OpenPrinting
    monthly call, but I haven't managed to join yet :( , so I'll post my
    plans+thoughts here, since you began the conversation :)<br>
    <blockquote type=3D"cite"
      cite=3D"mid:20210718125041.65da6c5a@workstation64.local">
      <pre class=3D"moz-quote-pre" wrap=3D""> Please make
sure it will be possible to kepp full support with custom
built distribution packages as well.</pre>
    </blockquote>
    It would be great if it was possible. And IMO it still will be.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:20210718125041.65da6c5a@workstation64.local">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Arch Linux will never add such official snap support or access to the
snap store at all.</pre>
    </blockquote>
    <p>As for Fedora I plan to package all required projects as RPMs,
      verify that all new features work as expected and then focus on
      SNAP. IMHO it is easier to figure out whether the possible issue
      is due SNAP environment, or if the feature itself is buggy.<br>
    </p>
    <p>For RHEL/CentOS Stream, RPMs will be supported projects versions
      for now - as for a containerized printing stack, IMHO I cannot use
      SNAPs (unless I take snapd under my wings) there, but I will need
      to use flatpack (already in RHEL/CentOS Stream).=A0</p>
    <p>But as an overall thought on containerized printing stack - it
      would be great if the test suites of containerized projects were
      improved first (where possible) if we ship the current upstream
      sources (from master branch) - then if we run those test suites
      before the project gets containerized, this way we can provide a
      quality assurance for people using the container.</p>
    <p>And testing would help getting the containerized CUPS as a
      default in the future.</p>
    <p>I'm planning to go through our downstream regression test suite
      and see if some of those can be added to CUPS/cups-filters test
      suites, and enhancing the test suites where I can.<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:20210718125041.65da6c5a@workstation64.local">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Andy
Arch Linux
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">______________________________=
_________________
Printing-architecture mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Printing-architecture@=
lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.or=
g</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.linuxfoundation.or=
g/mailman/listinfo/printing-architecture">https://lists.linuxfoundation.org=
/mailman/listinfo/printing-architecture</a>
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </body>
</html>

--------------A4B1A80F59B0656829EABB61--

