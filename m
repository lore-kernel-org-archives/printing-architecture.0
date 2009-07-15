Message-ID: <4A5E4298.8040504@gmail.com>
Date: Wed, 15 Jul 2009 22:56:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4A5E26C2.2090909@gmail.com>
	<e395be80907151337lcda20fh835c483bb3c37524@mail.gmail.com>
In-Reply-To: <e395be80907151337lcda20fh835c483bb3c37524@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Updated PPD extensions
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Ira McDonald wrote:
> Of course, a BETTER hint about a Fax number would be
> for the string option to contain a 'fax:' URI (RFC 2806).

Do you mean the name of the string option, like "fax:number"? I do not 
know whether a CUPS option name van contain a colon, probably not due to 
the colon's special meaning in PPD files. Or do you mean the content of 
the string should start with "fax:", like "fax:001-218-555-7777"? It 
would be awkward if the user had to type "fax:" before he types the 
number. We expect the user to type only the number ("001-218-555-7777"), 
then CUPS gets something like "faxnumber=Custom.001-218-555-7777".

    Till
