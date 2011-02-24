MIME-Version: 1.0
In-Reply-To: <1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
Date: Thu, 24 Feb 2011 17:05:26 +0000
Message-ID: <AANLkTim5KTc2n3GyDsL0uAMpHju_kWrbYk9QCwaqyYnF@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] Common Printing Dialog and color
	management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: peter sikking <peter@mmiworks.net>
Cc: Printing-architecture@lists.linux-foundation.org

On 24 February 2011 15:36, peter sikking <peter@mmiworks.net> wrote:
> both KDE and GNOME will happily take the patches.

I'm afraid that just isn't true for GNOME. I work quite a bit on GTK
and GNOME (my boss is Matthias Clasen...), and I can tell you that
there would be no way such a non-standard looking dialog would be
merged into such a core part of the toolkit. There would have to be a
very compelling reason to move the printer dialog out of process as
this would greatly complicate the printing process. It would also be a
massive API and ABI break, and considering GTK3 has just released, I
see quite unlikely.

> there is a lot of enthusiasm for it at both platforms.

But no contributors? No upstream commits in 5 years?

> about the HIG: in the spec you are looking at is a KDE/GNOME agnostic
> meta spec, the implementation is done for KDE and GNOME separately,
> fully HIG-compliant.

It's not a meta-spec, it's a Human Interface Guideline specific to the
GNOME desktop. If we're making a CPD implementation to work to the
GNOME HIG, it's not going to look anything like the CPD implementation
for KDE. So then we're just left with a DBus interface that can't
actually do anything much more than we could before.

>> So basically, I'm not sure what the CPD buys us. Looking at
> I am not sure what you mean exactly. please be a bit more
> precise about what you do not see working, from which perspective
> (technical, color workflows, or something else).

These are my three target users: http://colord.hughsie.com/profiles.html

None of these people would be able to choose an option from a dropdown
just listing the ICC filenames by filename. And they shouldn't have to
when we can map from qualifier to icc profile automatically...

Richard.
