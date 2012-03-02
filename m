Return-Path: <hughsient@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=nB3wSXdSDFo24Xh/r+DGfZyQsnTy32DXNSQiuFaPHSA=;
	b=uf+VygzKtVAeIJd4l+x6LeOSF9R1ytyDqMroe//HWQySDe8NlVnTYbh/UHZDm+7+aS
	GxXp9zw5Z8hzmnQpBd1Ch2IRkVNIZvfbnvH/OStUQTfAECUTWd4oAb31QYQOMzf8lQdc
	uZXwLPL68mjD+D7fUrv3jgeXrockoZCIgc8no7reYgPAjwcEfYxU/m6Xx5Vxd3szBLcz
	KS3NdCxL1Lr7EjcxZsl3xxtD17OhOl0dZCcm4KM7+VfQqhKsRk2bDSeXuWM7bwXILkRG
	Pdu1B4SurMacbe3zS2myPAm9yjsDQlhDludciL7Qus5ragfyU5CN9eGEFNHoVPAkYXcA
	Y5Hg==
MIME-Version: 1.0
In-Reply-To: <20120302.130333.126929817.sho@bbr.jp>
References: <1330600735.18587.3.camel@rubik> <4F4F6D64.7030100@gmail.com>
	<1330610112.28173.5.camel@rubik>
	<20120302.130333.126929817.sho@bbr.jp>
Date: Fri, 2 Mar 2012 09:39:13 +0000
Message-ID: <CAD2FfiGa5qyHQ9q-CT6RcDzQU4Yyov2kxq-nB6cSB21CeivdqA@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Printing-architecture] pdftopdf
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com

On 2 March 2012 04:03, Koji Otani <sho@bbr.jp> wrote:
> Yes, these files have codes copied from poppler.
> pdftopdf uses poppler for what poppler can do.
> Some of these files are copied from poppler to compiles it without
> =C2=A0poppler sourcecode files.

Shouldn't we just link to libpoppler? Or are the source files in some
way modified?

Richard.
