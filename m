Message-Id: <545C47FE-EB3B-4750-928D-99C8C7DB0145@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F418826@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v935.3)
Date: Wed, 8 Jul 2009 11:24:56 +0200
References: <4A5364E7.9000904@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F418826@EEAEX03.us.epson.net>
Subject: Re: [Printing-architecture] new cpd specs
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Glen wrote:

> I have not seen the final interface.  But on the detailed view for
> "Pages to Print" is it possible to add a button for the "current"  
> page.

I trouble imagining what "current page" could be, when I think
of 10.000 different applications that we design for.

> How does the page range work in detail for a single page.  If I only
> want to print a single page; can I leave one the page range values  
> empty
> (either the to or from value) or do you have enter the same value in  
> the
> to and from fields.


all 3 ways should work, where if a field is left empty and the
keyboard focus moves to another parameter, the empty field gets
auto-completed for feedback.

> Ops, forgot - how can I print just "selected".  For example only the
> selected paragraph on a page.

now I am sure that you are talking about a word processor print option.

the print dialog is a piece of OS infrastructure that is designed to
work in 10.000 applications. About 4 of those 10.000 are word processors
that actually work wysiwyg and have a "selected paragraph on a page".

it is up to the interaction designers of these 4 word processor
applications to define what 'print selected paragraph on a page'
actually means, to design the proper UI for that (I can think of
at least 3 places in an application where that can fit, depending
on the app) and when needed, integrate that in the print dialog,
via the mechanisms we designed for that.

also see:

<http://mmiworks.net/eng/publications/2008/07/to-istanbul-via-tokyo.html#rule4 
 >

"There is no better way to derail a discussion about printing than
by using the example of printing a word/openOffice writer file."

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



