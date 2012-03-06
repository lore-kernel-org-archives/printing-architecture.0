Return-Path: <sho@bbr.jp>
Date: Tue, 06 Mar 2012 15:01:26 +0900 (JST)
Message-Id: <20120306.150126.276612727.sho@bbr.jp>
From: Koji Otani <sho@bbr.jp>
In-Reply-To: <4F54D87E.6060801@gmail.com>
References: <20120303.113354.329374074.sho@bbr.jp>
	<1330949656.9812.8.camel@rubik> <4F54D87E.6060801@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
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
To: till.kamppeter@gmail.com
Cc: aacid@kde.org, printing-architecture@lists.linux-foundation.org

From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Re: [Printing-architecture] pdftopdf
Date: Mon, 05 Mar 2012 16:15:10 +0100
Message-ID: <4F54D87E.6060801@gmail.com>

till.kamppeter> On 03/05/2012 01:14 PM, Tim Waugh wrote:
till.kamppeter> > On Sat, 2012-03-03 at 11:33 +0900, Koji Otani wrote:
till.kamppeter> >> Sorry, I'm not good at English.
till.kamppeter> >
till.kamppeter> > Your English is fine. :-)
till.kamppeter> >
till.kamppeter> >> It seemes that poppler provides parsing and rendering PDF.
till.kamppeter> >> pdftopdf needs modifying PDF such as number-up, duplicating pages ,
till.kamppeter> >> inserting empty pages, scaling pages, embedding fonts and producing
till.kamppeter> >> PDF.
till.kamppeter> >> When I began to develop poppler, I considered about various things
till.kamppeter> >> such as limited time, cost, etc. And I decided that I developed
till.kamppeter> >> pdftopdf
till.kamppeter> >> outside of poppler. (Developing pdftopdf was funded by a Japanese
till.kamppeter> >> governmental
till.kamppeter> >> organization)
till.kamppeter> >> It may be ok for poppler to include these features as you say.
till.kamppeter> >> I would appreciate it if you put these features into poppler.
till.kamppeter> >
till.kamppeter> > Thanks for explaining.  If poppler doesn't currently expose enough to
till.kamppeter> > allow pdftopdf to do what it needs to then some work is needed to
till.kamppeter> > change
till.kamppeter> > that, in order to avoid duplication of bugs.
till.kamppeter> >
till.kamppeter> > Who knows the pdftopdf/poppler code well enough to do this?
till.kamppeter> >
till.kamppeter> > Do we know anyone on the poppler development team who could guide us
till.kamppeter> > as
till.kamppeter> > to what sort of changes they will accept?
till.kamppeter> >
till.kamppeter> 
till.kamppeter> Otani-san, can you provide a list of features which need to get
till.kamppeter> exposed in Poppler so that you can implement the pdftopdf and
till.kamppeter> pdftoopvp filters without code duplication? Please CC Albert Astals
till.kamppeter> Cid (CCed in this mail) when answering.
till.kamppeter> 
till.kamppeter> Albert, could you help us in making more secure and
till.kamppeter> distribution-friendly PDF print filters by adding some APIs to
till.kamppeter> Poppler?
till.kamppeter> 

We already asked Albert to expose some APIs for pdftoopvp, and he
exposed them for us.
Except a few codes, 
Essence of this issue is whether we add new features and codes to
poppler not exposing internal APIs, I think.
