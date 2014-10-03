Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=oKYpQCX5vsOKoqRBCZIefr1egUWiM9m82yzFvkYIAMo=;
	b=zhfrK3HTmbh7e1WJAwKxa7y7bKS2Bl8p/jZYd3DZGgdqXWHVIoOIRzWsNoJqupeC9W
	d41xxTumYqz7PSGqBGEzLLuGq9xFajXIs6NtTZEV3P3plfaFYHe3P0EMG86aR8RL1KP3
	y8jzRum4X69iTsi4nAuCxCMYABSBMCD7oGB+6G49B+NJYbvhQsD6LmnLqBZftna3YrYU
	2/T4sew8zy0mknm4HseamDVi1p1GLjKO+FaSV774pLlW7YR08aBONvphNOmmFeX0BpPg
	T8vJ/7EmNwv5JzUQacJmgZheEbAIV7MRR8PMFAf2CM6h6PniQT3OlI/XjdtSVoDK+/Xd
	R04g==
MIME-Version: 1.0
Sender: korobkin@gmail.com
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Fri, 3 Oct 2014 15:28:48 -0400
Message-ID: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf300e50712f0a79050489bfef
Subject: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--20cf300e50712f0a79050489bfef
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm looking at example PPDs for pure PDF workflow, and all of them have
cupsManualCopies: true

Why is that? Is it impossible to tell printer to print a number of copies
with pure PDF workflow?
Maybe pdftopdf can inject @PJL SET COPIES=X into the file?

-- 
-Alex

--20cf300e50712f0a79050489bfef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>I&#39;m looking at exampl=
e PPDs for pure PDF workflow, and all of them have=C2=A0</div><div>cupsManu=
alCopies: true</div><div><br></div><div>Why is that? Is it impossible to te=
ll printer to print a number of copies with pure PDF workflow?=C2=A0</div><=
div>Maybe pdftopdf can inject @PJL SET COPIES=3DX into the file?=C2=A0</div=
><div><div><br></div>-- <br><div dir=3D"ltr">-Alex</div>
</div></div>

--20cf300e50712f0a79050489bfef--
