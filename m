Message-Id: <69B1EF35-D85E-477C-848C-AB59A7745809@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <48FF3D87.4070807@gmail.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v929.2)
Date: Wed, 22 Oct 2008 17:17:38 +0200
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48FB37A3.8090007@gmail.com>
	<200810191602.m9JG2D84030719@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48FF3D87.4070807@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Robert Krawitz <rlk@alum.mit.edu>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gimp-print-devel@lists.sourceforge.net

Till + Robert,

sorry to not get back to you sooner, it slipped under the holiday radar.

>>   Date: Sun, 19 Oct 2008 15:35:31 +0200
>>   From: Till Kamppeter <till.kamppeter@gmail.com>
>>   Another point is completing the PPD extensions for the Common  
>> Printing    Dialog. Most important point is tagging the options, so  
>> that they show    up with the right tags being selected.
>>   See
>>   http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialog
>>   http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions
>> I still don't much care for this limitation of 6 tags being available
>> for the driver.  If nothing else, we could use some assistance in
>> figuring out how to categorize all of the options.
>> In general, I'd really like to have a way to hide the advanced
>> options.  I know full well that the vast majority of people have no
>> interest in them, but that's not a reason to make them entirely
>> unavailable to the people who do have reason to use them.
>> Philosophically, I don't care for this dumbing down approach.  I know
>> I'm not the only person out there who likes to have fine-grained
>> controls available!
>> (I'd also like to have generalized piecewise or dense curves  
>> available
>> in CUPS, but that's another matter.)
>
> Perhaps we should find a solution together with Peter Sikking,  
> designer of the Common Printing Dialog.
>
> Peter, the Gutenprint driver has far too many option groups for the  
> limited amount of tags in the Common Printing Dialog. What is your  
> suggestion how to let the options of Gutenprint get presented in the  
> Common Printing Dialog?


well, first of all there are 11 tags available to the printer  
(==driver),
you can use these fully within the vision of gutenprint, which is
fine-grained control. do not confuse good UI design with complexity
reduction with dumbing down. it is about delivering value to the
target user group. when you know I am also the principal UI architect
of the renovation of GIMP, you can see I know a thing or two about
delivering power to pros.

second there are still principles of good interaction design,
like prioritising your parameters, seeing which are a specialisation
of another parameter. another good trick is when there are 3 boolean
options, and 6 combinations make sense, to represent them all as 6
choices for one parameter. when still in a pinch, super-duper
once-per-paper-ink-combination calibration type stuff can be
moved to a separate dialog, where there is space for advanced controls.
the dialog is then opened as an extension to the more basic parameters
in the dialog via a button.

I would still encourage you to treat the 11 tags not as tabs, but to  
dive
into the world of gutenprint and find out what aspects of printing
really interest your audience. and then assign the parameters you have  
to
one or more tags.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



