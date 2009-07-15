MIME-Version: 1.0
In-Reply-To: <4A5E26C2.2090909@gmail.com>
References: <4A5E26C2.2090909@gmail.com>
Date: Wed, 15 Jul 2009 16:37:28 -0400
Message-ID: <e395be80907151337lcda20fh835c483bb3c37524@mail.gmail.com>
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

Of course, a BETTER hint about a Fax number would be
for the string option to contain a 'fax:' URI (RFC 2806).

Just a thought.

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



On Wed, Jul 15, 2009 at 2:58 PM, Till Kamppeter<till.kamppeter@gmail.com> w=
rote:
> Hi,
>
> to fulfill the needs of Peter's last dialog UI design, there is a field
> in the dialog now for short descriptions of the quick presets. To allow
> individual, user-friendy help texts there (and not simply list the
> options which get set by the quick preset) I have added the new
>
> *APPrinterPresetDescription <choice>: "<description>"
>
> keyword and translations for it. I also added fallback rules for filling
> the description field when the new keyword is not used or when the
> presets come from a fallback (like the PrintoutMode option in Foomatic
> PPDs).
>
> For multi-function printers I have added the new widget hint
> "faxnumber", so that one can tell that a string option represents a fax
> number and so one can add a button to the string input field which opens
> the user's address book.
>
> See all the changes in
>
> http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions
>
> Click "History" at the bottom to visualize only the changes.
>
> Please take these new extensions into account for the dialog.
>
> =A0 =A0Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>
