Message-ID: <49CC84E5.8030604@gmail.com>
Date: Fri, 27 Mar 2009 03:48:53 -0400
From: Svilen Kanev <mighty.frost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] GSoC 09: Modifying applications to use the
	new printing dialog
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

Hello,

My name is Svilen Kanev and I am a student at Harvard College. I am 
interested in changing applications so that they use the new common 
dialog with cpdapi. I have developed under C++/C and I think I am able 
to read and modify other people's code.

Here's what I found out for the project from this mailing list, the IRC 
channel and simply common sense:
Some commonly used applications that need to be modified are Open 
Office, Firefox, Thunderbird, Evince, the GIMP, etc... Open Office has 
highest priority, but presumably Evince is simplest to patch.

I set up development environments for some of the applications and here 
are my first impressions from skimming through their code:

- Evince has, as expected, pretty self-contained printing code. It uses 
the default GTK dialog, not modifying it in any way. From what I saw, it 
uses PS format for print preview (which should probably be changed when 
the live preview is actually implemented). This makes it suitable for an 
application that can be used to test the new dialog. The modifications 
shouldn't take long (hopefully the first week or two of SoC), but would 
help a lot with the learning curve of modifying more complex applications.

- Firefox also uses the GTK dialog, but extends it, adding customized 
options about frames, headers, etc... The positive side is that it is 
cross-platform and because of that it uses interfaces to abstract away 
the actual printing dialog (which is different on different platforms). 
So, in an ideal world, the changes would be only in the implementation 
of these interfaces which, compared to the total printing code size, 
isn't that much. Adding live preview would probably complicate things 
more, but there is a lot of code that can be reused from the "static" 
print preview.

- Open Office uses its own printing dialog that looks much like the 
Windows one. In fact, most of the printing settings are hidden under 
another dialog, called "Printing Options". Both dialogs are supposed to 
be platform-independent, i.e. there is only one implementation for all 
environments. The actual code mixes GUI and data members in one class 
per dialog. All this means it will be harder to use the new dialog 
without breaking the platform independence and would require some 
restructuring of the current code. A possible approach would be to 
abstract away the different implementations that will be created with 
interfaces and choose an implementation based on the target platform (or 
for example, based on whether cpdapi is running).

So, a pessimistic SoC schedule would probably include Evince to get 
started, Open Office and Firefox. An optimistic may include Thunderbird, 
the GIMP or other applications as well, depending on how fast everything 
goes. I guess that after the first two, changing more would be 
repetitive and much easier in general. Do you think this is the right 
way to go and that the work can be done for the summer?

Svilen
