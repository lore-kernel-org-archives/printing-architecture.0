MIME-Version: 1.0
In-Reply-To: <4A5E4298.8040504@gmail.com>
References: <4A5E26C2.2090909@gmail.com>
	<e395be80907151337lcda20fh835c483bb3c37524@mail.gmail.com>
	<4A5E4298.8040504@gmail.com>
Date: Wed, 15 Jul 2009 17:12:33 -0400
Message-ID: <e395be80907151412l747c6997rd2a4bef9d9f262b1@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
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
To: Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi Till,

I meant that the content should be strongly typed as
a 'fax:' URI value - that guarantees normalization,
support for suffixes (post-dial numbers), etc.

Apparently that won't work.

A PPD string option can't contain a colon?  Really?
There are a lot of URI in IPP and IPP extension
attributes.

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music/High North Inc
email: blueroofmusic@gmail.com
winter:
  579 Park Place  Saline, MI  48176
  734-944-0094
summer:
  PO Box 221  Grand Marais, MI 49839
  906-494-2434



On Wed, Jul 15, 2009 at 4:56 PM, Till Kamppeter<till.kamppeter@gmail.com> w=
rote:
> Ira McDonald wrote:
>>
>> Of course, a BETTER hint about a Fax number would be
>> for the string option to contain a 'fax:' URI (RFC 2806).
>
> Do you mean the name of the string option, like "fax:number"? I do not kn=
ow
> whether a CUPS option name van contain a colon, probably not due to the
> colon's special meaning in PPD files. Or do you mean the content of the
> string should start with "fax:", like "fax:001-218-555-7777"? It would be
> awkward if the user had to type "fax:" before he types the number. We exp=
ect
> the user to type only the number ("001-218-555-7777"), then CUPS gets
> something like "faxnumber=3DCustom.001-218-555-7777".
>
> =A0 Till
>
