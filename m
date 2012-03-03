Return-Path: <sho@bbr.jp>
Date: Sat, 03 Mar 2012 11:33:54 +0900 (JST)
Message-Id: <20120303.113354.329374074.sho@bbr.jp>
From: Koji Otani <sho@bbr.jp>
In-Reply-To: <1330690418.32498.29.camel@rubik>
References: <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp>
	<1330690418.32498.29.camel@rubik>
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
To: twaugh@redhat.com
Cc: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com

Sorry, I'm not good at English.

It seemes that poppler provides parsing and rendering PDF.
pdftopdf needs modifying PDF such as number-up, duplicating pages ,
inserting empty pages, scaling pages, embedding fonts and producing PDF.
When I began to develop poppler, I considered about various things
such as limited time, cost, etc. And I decided that I developed pdftopdf
outside of poppler. (Developing pdftopdf was funded by a Japanese governmental 
organization)
It may be ok for poppler to include these features as you say.
I would appreciate it if you put these features into poppler.
----------
Koji Otani

From: Tim Waugh <twaugh@redhat.com>
Subject: Re: [Printing-architecture] pdftopdf
Date: Fri, 02 Mar 2012 12:13:38 +0000
Message-ID: <1330690418.32498.29.camel@rubik>

twaugh> On Fri, 2012-03-02 at 21:08 +0900, Koji Otani wrote:
twaugh> > Changes I made are needless for poppler and poppler can't use them.
twaugh> > I used only a frame of codes in some files.
twaugh> 
twaugh> I don't understand.  Wasn't the whole idea of poppler to avoid having
twaugh> bits of xpdf copied into every project that wants to do things to a PDF
twaugh> file?  And doesn't pdftopdf want to do things to a PDF file?
twaugh> 
twaugh> Can you explain why it is that poppler "can't use" the extra bits you've
twaugh> changed?  Can you describe what they are?  It seems to me that poppler
twaugh> ought to provide sufficient insight into the structure of a PDF file so
twaugh> that pdftopdf can do its job.  If it doesn't, that sounds like something
twaugh> the poppler project would want to provide... no?
twaugh> 
twaugh> Tim.
twaugh> */
twaugh> 
