Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KDmUFBdp1DTWgjYCaO1RG9+QJitZl3dI6L7mKANmm/c=;
 b=pJlX6hadWiRNyqUp+I+c7iXPlEHTguW9bCQdn+5TnhV7Nsn+fNNrkpYxl6b4GS6sTx
 rCrjV8QgriD6F8yZomJgg9xlBBXPuvh37dLeO7J8pnPS8SQUO3WOFp8EdNQFDv/zwLHF
 xEm9wx0ZYE0gOgzJLain6WQ9+pVYGQpfzgbp7se/KW7hMOtaY2Sjllbx/bpzb0aNvBJ/
 XDk5W+o/ey+5hncLVjjfGuHTCj87uYt9yB8iewNb8q++cOgwNPy/A0kPHh02judI0Coa
 4gmgptmCJzDc83Wk34jdQ3rWvoW3AixgsCSUJfT3DXBhI70edGQvN1blaDWzboGlL/KQ
 v91g==
References: <5d2467490408b1c7bfe39d72d8e47fc247e1a540.camel@hadess.net>
 <1d707250-ba31-4f1c-dc33-cb9c3eefdcdc@gmail.com>
 <CAAiW7Ae9Tj1B8ZqKB6o371y536Rh8sJUavzb19AZcsekyKGX9w@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <d013d14f-200c-81a0-5ad1-e494a359f679@gmail.com>
Date: Mon, 21 Sep 2020 13:52:52 +0200
MIME-Version: 1.0
In-Reply-To: <CAAiW7Ae9Tj1B8ZqKB6o371y536Rh8sJUavzb19AZcsekyKGX9w@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] IPP Print Accounting
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: =?UTF-8?Q?J=c3=b6rn-Ingo_Weigert?= <jiweigert@gmail.com>, Michael Sweet <msweet@msweet.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I do not really know how well accounting is supported by IPP. Therefore 
I am reaching out to Michael Sweet and the OpenPrinting mailing list.

Michael, could you tell how accounting works in the world of IPP printing?

Thanks

    Till


On 19/09/2020 23:41, Jörn-Ingo Weigert wrote:
> Hello Till,
> 
> Are there plans too, to implement better accounting abilities in the 
> GSOC Project?
> 
> Currently, the support of print accounting is far from being optimal, 
> saying it nicely. ;)
> 
> Kind regards,
> 
> Jörn-Ingo Weigert
