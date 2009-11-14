Message-ID: <4AFE838E.6060803@fakenhamweb.co.uk>
Date: Sat, 14 Nov 2009 10:16:46 +0000
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>	<4AF14A4E.5050903@gmail.com>	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>	<4AF96B6A.7030307@gmail.com>	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>	<2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>	<4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>	<8ddb9a960911131513ua83b821mad54c09bfe6ba640@mail.gmail.com>
	<24965647-EFE8-4F71-961C-1F908CC7B3DF@apple.com>
In-Reply-To: <24965647-EFE8-4F71-961C-1F908CC7B3DF@apple.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] [Openicc]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: ICC DPWG <digital_photography@lists.color.org>, edmund ronald <edmundronald@gmail.com>, gimp-print-devel@lists.sourceforge.net, "'colorsync-users?lists.apple.com' List" <colorsync-users@lists.apple.com>, rlk@speakeasy.net, OpenICC Liste <openicc@lists.freedesktop.org>, printing-architecture@lists.linux-foundation.org, Thomas Lianza <TLianza@xrite.com>

Hi :)

Michael Sweet wrote:

> I humbly suggest that what you want is a utility that allows the user to 
> print targets and generate/install ICC profiles for a particular 
> combination of printer, media, and other settings. If you have to select 
> a profile at print time, then the printing workflow is broken.

I have to disagree here.  I have three different "grades" of glossy 
photo paper here, from different manufacturers.  In terms of the amount 
of ink they'll take, and thus the correct print settings, they're pretty 
much identical, but prints do look different on each, and they have a 
very different "feel".  Which of the three I use depends on how 
"prestigious" I want a print to look, traded off against whether I want 
to use the most expensive paper.

Each paper type has (and needs) its own profile, yet the printer driver 
has no way of telling which of the three I'm using since the print 
settings are identical.  Thus, in my opinion, a printing workflow which 
doesn't allow me to set a profile at print time is broken.

At best the print dialog can select a sane *default* profile, but it's 
imperative that if the user "knows better" it can be overridden.

All the best
--
Alastair M. Robinson
