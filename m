Message-Id: <0EBE855D-5320-4996-A88F-F81BF3EDA88E@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <200810230019.m9N0JCIp018128@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=US-ASCII; format=flowed
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v929.2)
Date: Fri, 24 Oct 2008 10:52:19 +0200
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48FB37A3.8090007@gmail.com>
	<200810191602.m9JG2D84030719@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48FF3D87.4070807@gmail.com>
	<69B1EF35-D85E-477C-848C-AB59A7745809@mmiworks.net>
	<200810230019.m9N0JCIp018128@dsl092-065-009.bos1.dsl.speakeasy.net>
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, till.kamppeter@gmail.com

Robert,

>>> Peter, the Gutenprint driver has far too many option groups for the
>>> limited amount of tags in the Common Printing Dialog. What is your
>>> suggestion how to let the options of Gutenprint get presented in the
>>> Common Printing Dialog?
>
>>   when still in a pinch, super-duper
>>   once-per-paper-ink-combination calibration type stuff can be moved
>>   to a separate dialog, where there is space for advanced controls.
>>   the dialog is then opened as an extension to the more basic
>>   parameters in the dialog via a button.
>>
> There are a lot of low level ink controls that I would be happy to
> move elsewhere, but it's not clear to me where that "elsewhere" is
> provided.


like I said, separate dialog triggered from the print dialog.

>  In general, though, there aren't all that many boolean
> parameters, and those that we do have really are orthogonal (linear
> vs. S-curve contrast adjustment, borderless, and use of gloss enhancer
> have absolutely nothing to do with one another).

OK, it was worth a try.

>>   I would still encourage you to treat the 11 tags not as tabs, but
>>   to dive into the world of gutenprint and find out what aspects of
>>   printing really interest your audience. and then assign the
>>   parameters you have to one or more tags.
>
> This is an area we could use some assistance on.  I have no feel at
> all for UI design.  In general, the best way to utilize my skills in
> user interface design is to invert whatever I might happen to come up
> with.
>
> I really want Gutenprint to appeal to a very wide range of people,
> from the "I just want it to work" folks all the way to the hard core
> fine art (and other) professionals who want to be able to adjust
> everything for a non-standard ink set and oddball paper.

For anybody to be able to help you at all, you first need to
set a clear vision for what the purpose of gutenprint is in
the printing world of today. And "to appeal to a very wide
range of people" is not it. You will have to say good bye to
some old goals. The (linux) printing world has evolved.
Similar to how GIMP has moved on from 'the sole pixel program
on linux' to an expert tool that does not aim to please
casual users.

I can tell you that when the GIMP team would not have defined
that vision, and tried to be the tool for "a very wide range
of people", I would not have got involved.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



