From: Lars Uebernickel <larsuebernickel@gmx.de>
In-Reply-To: <49CC84E5.8030604@gmail.com>
References: <49CC84E5.8030604@gmail.com>
Content-Type: text/plain
Date: Fri, 27 Mar 2009 10:23:57 +0100
Message-Id: <1238145837.5930.37.camel@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] GSoC 09: Modifying applications to use
 the new printing dialog
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

On Fri, 2009-03-27 at 03:48 -0400, Svilen Kanev wrote:
> Hello,
> 
> My name is Svilen Kanev and I am a student at Harvard College. I am 
> interested in changing applications so that they use the new common 
> dialog with cpdapi. I have developed under C++/C and I think I am able 
> to read and modify other people's code.

Thank you for your interest. I am Lars (larsu on #openprinting) and I
would probably be mentoring you for this project.

> Here's what I found out for the project from this mailing list, the IRC 
> channel and simply common sense:
> Some commonly used applications that need to be modified are Open 
> Office, Firefox, Thunderbird, Evince, the GIMP, etc... Open Office has 
> highest priority, but presumably Evince is simplest to patch.

I am currently working on getting support for the dialog into GTK/Qt
themselves. This means that applications might be able to use it right
away. I hope this will be the preferred way for applications to use the
dialog (via their toolkit, not an external dependency).

However, many applications (e.g. GIMP, Firefox) provide custom widgets
for the dialog, which set application specific options (e.g. the
"options" Tab in Firefox). Naturally, this doesn't work over D-Bus ...
Therefore, we have a way for applications to send option specifications
(such as the name, type, default value of the option) over the bus to
the common printing dialog. So they would have to be modified in such a
way that they do not make use of the 'custom widget' feature anymore and
send their options another way.

Hence, these applications can all continue to use the GTK dialog API
(which might be a bit extended). This reduces the amount of work done
per application substantially.

IIRC, evince does not have any extra options, so it can continue using
the GTK API. But a similar simple project for you to start on could be
gedit. It too uses the GTK printing API, but it enhances it with custom
options such as printing syntax highlighting and enabling line numbers.


> I set up development environments for some of the applications and here 
> are my first impressions from skimming through their code:
> 
> - Evince has, as expected, pretty self-contained printing code. It uses 
> the default GTK dialog, not modifying it in any way. From what I saw, it 
> uses PS format for print preview (which should probably be changed when 
> the live preview is actually implemented). This makes it suitable for an 
> application that can be used to test the new dialog. The modifications 
> shouldn't take long (hopefully the first week or two of SoC), but would 
> help a lot with the learning curve of modifying more complex applications.
>
> - Firefox also uses the GTK dialog, but extends it, adding customized 
> options about frames, headers, etc... The positive side is that it is 
> cross-platform and because of that it uses interfaces to abstract away 
> the actual printing dialog (which is different on different platforms). 
> So, in an ideal world, the changes would be only in the implementation 
> of these interfaces which, compared to the total printing code size, 
> isn't that much. Adding live preview would probably complicate things 
> more, but there is a lot of code that can be reused from the "static" 
> print preview.
> 
> - Open Office uses its own printing dialog that looks much like the 
> Windows one. In fact, most of the printing settings are hidden under 
> another dialog, called "Printing Options". Both dialogs are supposed to 
> be platform-independent, i.e. there is only one implementation for all 
> environments. The actual code mixes GUI and data members in one class 
> per dialog. All this means it will be harder to use the new dialog 
> without breaking the platform independence and would require some 
> restructuring of the current code. A possible approach would be to 
> abstract away the different implementations that will be created with 
> interfaces and choose an implementation based on the target platform (or 
> for example, based on whether cpdapi is running).

Yes, OO.o will probably be the hardest to patch. I would definitely not
start with it, but as Till already said, it has a high priority.

> So, a pessimistic SoC schedule would probably include Evince to get 
> started, Open Office and Firefox. An optimistic may include Thunderbird, 
> the GIMP or other applications as well, depending on how fast everything 
> goes. I guess that after the first two, changing more would be 
> repetitive and much easier in general. Do you think this is the right 
> way to go and that the work can be done for the summer?

Yes it is the right way to go. I don't know if *all* of the applications
you mentioned can be ported in one summer, but a few of them should be
doable.

    Lars


