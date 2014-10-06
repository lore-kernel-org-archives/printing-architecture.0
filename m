Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TA26+vaFtwPJujjX21dxzAXOE4DcAYavUP2yYZG7cRw=;
	b=XA7GZ9D0O3DYsahcP3e00DH0ltc/OICZK4wgBSNvgqM/hSvvtxtTyqT1bgaIOnhF12
	x2lgN7tZSlFNXnu22qV18Xe0u3FnQjiaTRMQ4DWck9W84PATiYkxNQISJMJAO0o5rlGj
	wow3P8fxJ31SFoq+glObCh2utBpaF4k1BYWwAyb7l9GnS4aYJ/PCSgD7Kz1qkq1IetoD
	FLHQ0FVtWqIjQahv/bthFMNALCqgNVVLoJm+YS/lgUNOnZMvmzfzrDSO3sGDRkkeAYcR
	fmvqVk0bos+ekYW7wjV54PBTJNbQReg5utB00EuCah4jEyVYnH4FL+CehSjwx9EHm3QQ
	Lkiw==
Message-ID: <5432910A.4030500@gmail.com>
Date: Mon, 06 Oct 2014 14:54:34 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
In-Reply-To: <34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
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
To: printing-architecture@lists.linux-foundation.org

On 10/04/2014 09:48 PM, Michael Sweet wrote:
> Alex,
> 
> You'll have to confirm with Till, but AFAIK the pdftopdf filter doesn't support PJL options.
> 

pdftopdf adds PJL if the printer is a PDF printer. The printer is
considered a PDF printer if there is a "*JCLToPDFInterpreter:" line in
the PPD file.

   Till


