Return-Path: <b.candler@pobox.com>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=to:from
	:subject:message-id:date:mime-version:content-type; s=sasl; bh=+
	bRwrX7ueKoUdg7kBgpaSEGRZQ4=; b=m96gMN3B1AfFtPx+ARZVYzedyxyVxKZ96
	4xW9CF7eT749tJgtwAzkNzmh7hL4e/usZyXXR6L2t6s0Adm14cX3k9MOCbf160Uh
	ht8FgCMgsi7XWKwyI4vvaPgYsc/uhCO0BOekbNby7CSP5r/+cYgF40YkyraAXomt
	Bg3pIoMbVo=
From: Brian Candler <b.candler@pobox.com>
Message-ID: <95e1b8ce-0281-ec50-ce4a-6eaf0fa0e57d@pobox.com>
Date: Wed, 7 Nov 2018 14:09:49 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------363C1298F15D9F9A1C0ED26B"
Content-Language: en-US
Subject: [Printing-architecture] How the set the PATH for filters?
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
--------------363C1298F15D9F9A1C0ED26B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I am trying to run foomatic-filters under macOS 10.14.1.

One problem is that the executables spawned by foomatic are installed by 
homebrew under /usr/local/bin, but this directory does not appear in the 
$PATH when the filters are run.

D [07/Nov/2018:13:00:36 +0000] [Job 350] /bin/bash: pdftops: command not 
found
D [07/Nov/2018:13:00:36 +0000] [Job 350] pdf-to-ps exited with status 127

I can the PATH set for filters does not include /usr/local/bin, in 
standard debug logs:

D [07/Nov/2018:13:00:36 +0000] [Job 350] 
envp[10]="PATH=/usr/libexec/cups/filter:/usr/bin:/usr/sbin:/bin:/usr/b
in"

My question is, how can I change this PATH? The cups documentation 
<https://opensource.apple.com/source/cups/cups-33/doc/spm.html> says:

"Every filter receives a fixed set of environment variables that can be 
used by the filter
...

  * |PATH|- The execution path exported to the filter"

- but not how to change it.

Workaround: symlink the binaries into /usr/libexec/cups/filter/; also 
needed to set "Sandboxing Relaxed" in /etc/cups/cups-filter.conf.

Thanks,

Brian.


--------------363C1298F15D9F9A1C0ED26B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I am trying to run foomatic-filters under macOS 10.14.1.</p>
    <p>One problem is that the executables spawned by foomatic are
      installed by homebrew under /usr/local/bin, but this directory
      does not appear in the $PATH when the filters are run.<br>
    </p>
    <p>D [07/Nov/2018:13:00:36 +0000] [Job 350] /bin/bash: pdftops:
      command not found<br>
      D [07/Nov/2018:13:00:36 +0000] [Job 350] pdf-to-ps exited with
      status 127</p>
    <p>I can the PATH set for filters does not include /usr/local/bin,
      in standard debug logs:<br>
    </p>
    <p>D [07/Nov/2018:13:00:36 +0000] [Job 350]
      envp[10]=3D"PATH=3D/usr/libexec/cups/filter:/usr/bin:/usr/sbin:/bin=
:/usr/b<br>
      in"<br>
    </p>
    My question is, how can I change this PATH? The <a
      moz-do-not-send=3D"true"
      href=3D"https://opensource.apple.com/source/cups/cups-33/doc/spm.ht=
ml">cups
      documentation</a> says:<br>
    <br>
    "<span style=3D"color: rgb(0, 0, 0); font-family: serif; font-size:
      medium; font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: 400; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); text-decoration-style:
      initial; text-decoration-color: initial; display: inline
      !important; float: none;">Every filter receives a fixed set of
      environment variables that can be used by the filter<br>
      ...<br>
    </span>
    <ul style=3D"color: rgb(0, 0, 0); font-family: serif; font-size:
      medium; font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: 400; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      text-decoration-style: initial; text-decoration-color: initial;">
      <li><code>PATH</code><span>=C2=A0</span>- The execution path export=
ed
        to the filter"</li>
    </ul>
    <p>- but not how to change it.</p>
    <p>Workaround: symlink the binaries into /usr/libexec/cups/filter/;
      also needed to set "Sandboxing Relaxed" in
      /etc/cups/cups-filter.conf.<br>
    </p>
    <p>Thanks,</p>
    <p>Brian.<br>
    </p>
  </body>
</html>

--------------363C1298F15D9F9A1C0ED26B--
