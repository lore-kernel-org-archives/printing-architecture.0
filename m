MIME-Version: 1.0
In-Reply-To: <9198987E-D9BD-4C2F-B83C-ECB56D1C2E22@colorremedies.com>
References: <AANLkTikLN+qpdaunDz=bSxPj0K+k+W4Gg3JDh3udXj9=@mail.gmail.com>
	<1FBAD420-6AF8-44A8-B5D5-77FDE617BCB3@mmiworks.net>
	<9198987E-D9BD-4C2F-B83C-ECB56D1C2E22@colorremedies.com>
Date: Thu, 24 Feb 2011 17:33:41 +0000
Message-ID: <AANLkTim5g3dsp4N2E3Tv9e6wR6iqtQu415BWQ=sRkDpL@mail.gmail.com>
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
To: Chris Murphy <lists@colorremedies.com>
Cc: Printing-architecture@lists.linux-foundation.org

On 24 February 2011 17:23, Chris Murphy <lists@colorremedies.com> wrote:
> We need to assume something, what's it going to be? This is probably sRGB for any desktop inkjet printer...

This is something I've been struggling with for the last couple of
days. I think it's sane to assume the default profile to use with
untagged content or for a missing device profile is going to be sRGB.
Does this even need to be configurable?

If yes, is it device-specific, user specific or system specific?
Surely if you're worried about the default fallback colorspace, you
might as well manually assign the specific output profile to the
specific device and then you don't care about the fallback anymore.

Richard.
