Message-ID: <49CBD444.704@gmail.com>
Date: Thu, 26 Mar 2009 20:15:16 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <49CB60C5.8010608@bredband.net>
In-Reply-To: <49CB60C5.8010608@bredband.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
To: Per Hermansson <hermansson.per@bredband.net>
Cc: printing-architecture@lists.linux-foundation.org

Per Hermansson wrote:
> My name is Per Hermansson and I'm a student from the Royal institute of 
> technology in Sweden. I'm interested in developing the common printing 
> dialog. Designing a printing dialog with usability in mind seems like an 
> important task which if done correct would benefit a lot of people. I 
> consider myself to be experienced in C/C++ developing and have developed 
> with GTK. Since I've recently switched to KDE I hope to also learn a bit 
> about Qt. After some investigation about the idea, I've come up with the 
> following questions I hope someone here can answer:
>

Great, this is a good start for our projects on the Common Printing Dialog.

Note that you will not design the dialog but you will implement it. 
OpenUsability has designed it and in the next days (at the latest 
presented on the OpenPrinting Summit 2009 on April 8-10) a revision of 
the design will be presented. Your task will be one of the following two 
(probably you like the first more):

1. Finish the started implementation work on the GTK and Qt incarnations 
of OpenUsability's Common Printing Dialog, especially implementing the 
embedded preview and taking care of feature-completeness (CUPS page 
management options, Custom options, multi-language PPDs, ...).

2. Modifying/patching common desktop applications to use OpenUsability's 
dialog with live preview via the D-Bus CPDAPI. Priority depends on 
popularity of the apps, starting with OpenOffice.org.

> Since designing the interface is a major component would it be possible 
> to implement the dialog with both Qt and GTK for one summer? I guess 
> this depends on skill level (but e.g. abstracting the dialog model would 
> make it easier).
>

I think there will be enough time, as the design is already complete and 
most of the dialogs already implemented.

> Except for the printing dialog and the cpdapi implementation I guess 
> that some kind of abstraction is needed so that the underlying print 
> method is decoupled from D-Bus in order to use the api for systems 
> without D-Bus?
>

We mostly have the current desktop Linux distros in mind, and they all 
have a D-Bus. We have nothing against alternative coupling methods but 
they do not have the highest priority.


> Also, if two students are chosen for the project what would be a good 
> measure for success in modifying other application to use the dialog?
> 

Dialogs completed and at least OpenOffice.org, Firefox, Thunderbird, 
Evince, and the GIMP being patched (but I have no idea how long patching 
onme app takes). We also need to patch some common KDE apps (for example 
the Konqueror web browser (or however it got renamed in KDE 4).

> Finally is the cpdapi used (or experimented with) by any applications 
> today that you know of?

Not in released software, but Lars Uebernickel (CCed) is implementing 
the CPDAPI in GTK and Qt currently, so that if someone runs GNOME and 
starts a KDE app that he gets the GNOME dialog and vice versa (a first 
stage based only on patching the libs and not using the OpenUsability 
dialog yet).

    Till
