Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:references:cc:to:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=RXKyjIr2GmWo6Y6P+u3VziyfSaf3xludTSJSNDGwESM=;
	b=0ERwF+P3Z5ZcVF+XGLvyNC4aNmRAPlg2pK9uwJNz+dgmxaC40iOl583FqzTvdQyfNB
	VeXAaXQdXiwrBfjOwntSlQ3zgBuXWLzdxANWnAzb1lhnVaIFkpoNqbjzrL/VEHqEF5Wp
	HhQj4MR9mqbbDSjZxjEQbdKFM73cU2bUeqlbHplsN2vmxqHOqRUTa6MhCByfXw9kBxsc
	VNODdxbgs703btzSosK92L+Ahg+NsTf27KgyiayncZbLmL+hWcAAMb/brgRmJA3cRgh7
	rVhu7iQ9VaJWhbzYXd6mEpTo8A+plfna/C7ZVq9+9IV99EUwm9j3vOKd8+8LLqcPt7Bf
	M4nA==
References: <55F30A6F.5000403@gmail.com> <55F8877B.9050806@gmail.com>
	<FB1D5086-D828-40DE-AD16-85293A1C66C4@hp.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <55F9C459.4080401@gmail.com>
Date: Wed, 16 Sep 2015 16:34:49 -0300
MIME-Version: 1.0
In-Reply-To: <FB1D5086-D828-40DE-AD16-85293A1C66C4@hp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [cups-devel] Communication between IPP
 printer and "ipp" CUPS backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Kennedy, Smith (Wireless Architect)" <smith.kennedy@hp.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Daniel Dressler <danieru.dressler@gmail.com>, "The CUPS developer list." <cups-devel@cups.org>

On 09/15/2015 09:32 PM, Kennedy, Smith (Wireless Architect) wrote:
> Hi Till,
>
> Sorry for not replying earlier. Would you have any USB traces from Wireshark or a Beagle protocol analyzer, or logs, and/or the corresponding document files, so that we could try to repro it internally?
>
> Smith

As the problem always occurs after 4 or 5 successful jobs (all the jobs 
being the same one) after turning on the printer, it seems that some 
data is accumulating in some buffer of the printer which runs full after 
a certain amount of activity making the printer blocking.

Perhaps it is data which the printer tries to send to the client without 
being an answer to a request from the client but sent spontaneously by 
the printer. ippusbxd does not pick up such data from the printer as it 
waits for data from the printer only as an answer to a request which it 
has sent.

    Till


