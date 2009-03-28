Message-ID: <49CE21F2.5080102@bredband.net>
Date: Sat, 28 Mar 2009 14:11:14 +0100
From: Per Hermansson <hermansson.per@bredband.net>
MIME-Version: 1.0
References: <49CB60C5.8010608@bredband.net> <49CBD444.704@gmail.com>	
	<49CBE96B.8000202@bredband.net> <49CC1430.2080603@gmail.com>
	<b801b6f40903261728h14e8b675m464f6cade51f5c96@mail.gmail.com>
In-Reply-To: <b801b6f40903261728h14e8b675m464f6cade51f5c96@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] GSOC'09: Common Printing Dialog
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

Alex Wauck skrev:
>> Yes, my original idea was to have one student finishing the two dialogs
>> and another patching the applications (see ideas list), but it is no
>> problem for example if one student does the GTK dialog and patches the
>> GTK apps and the second does the KDE dialog and patches the KDE apps.
>> And if we get only applications for the dialog stuff and nothing for
>> JTAPI, drivers and whatever we offered, we can even put a third student
>> onto the dialog. We also can move around work tasks during the GSoC
>> (this we did last year as it turned out that Lars got the CPDAPI quickly
>> together, so he did also the GTK version of the dialog which the other
>> student on the CPD was supposed to do, but the the Qt dialog turned out
>> to be more work than expected).
>>     
>
>
> Interesting.  I don't recall being expected to do the GTK dialog.  At any
> rate, it should be easier to do other implementations now that we have an
> existing implementation.  I would say the hardest part is the interface to
> CUPS.  Since CUPS has a semi-object-oriented C API, producing an idiomatic
> Qt interface for it is decidedly non-trivial.  Someone familiar with GLib
> may find it easier to think in that way, and hence have an easier time with
> it.
>
> The next hardest part is making the custom widgets (like the option grid)
> and making them look good.  I'm not much of an artist, so I tried to reuse
> existing widgets as much as possible, but that didn't look the way Peter
> wanted it too.  I still haven't produced a widget that looks right.  The
> spec says that the widget toolkit's native grid widget should be used, but
> Qt's grid widget is not designed for such use and would look really weird.
>
> Lastly, I ran into a very strange QGraphicsView layout issue that seemed to
> occur on every computer except for mine.  Hopefully, there won't be any of
> that this year.
>
> Alex
>
>   
Thanks both of you for your valuable help.
I've done some more research (reading mailing lists archive and links 
provided on the website) and I'm starting to understand what is needed know.
Till (or anyone else), could you review my project idea and see if some 
of it makes sense and that the amount of work is within what is expected.

*Idea*

The project goal for me would be to finalize the OpenUsability design in 
at least one toolkit. My first choice would be to improve and refactor 
the current design written in Gtk. This involves being continue the 
effort to be compliance with the dialog specification and implementing 
support for missing features described in the specification like custom 
options and multi-language PPDs. With good background research and 
preparation I expect this to take at most to the midterm evaluation.

During and after the first phase has been in acceptable compliance with 
the specification I expect that the project can take two ways. Either 
help in the development of finalizing the dialog written in Qt using 
experience and pitfalls gained from the previous implementation. If it's 
at that time estimated that too little time remains to complete the 
dialog (or that the work is already done) the second choice is to begin 
porting a current desktop application to use the new common printing 
dialog API. I've made some brief code inspections and except for Evince 
that was mentioned earlier KDE text editor Kate seems to be valid choices.

*Timeline*

 - Before start of coding:
First objective will be to study the OpenUsability design, probably as a 
few design questions if anything seems unclear. Also study some advanced 
topics in Qt, GTK and CUPS that will be required to implement the 
specification. Eventually look into a few applications that could be 
easily ported to use the common printing dialog, as mentioned above.

 - May 23: (Students begin coding for their GSoC projects)
Between here and the mid-term evaluation refactoring and improvement of 
the existing design is top priority. This will probably be done using 
incremental development since I expect that the features can be broken 
done into individual tasks. Initial work will be done on the GTK dialog 
but I expect that some solutions to some ideas can be shared and also 
implemented in the Qt dialog if missing.

 - July 6: (Mid-term evaluations)
Depending on how quickly the previous phase ended, work finalizing the 
Qt dialog will be given the highest priority. If it's estimated that too 
little time is available, work to implement the dialog in a simple 
desktop application will be prioritized instead.

 - August 10:  (Suggested 'pencils down' date)
At this stage I expect that a larger part of the GTK and Qt will be in 
compliance with the specification all (most?) of the major features 
being implemented and documented. If the finalization of the dialogs 
proceeded according to the timeline above then at least one desktop 
application will be modified to use the new dialog API.

Per
