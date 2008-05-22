Message-ID: <48355362.8010600@gmail.com>
Date: Thu, 22 May 2008 13:05:06 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Common Printing Dialog: News from the
 Ubuntu Developer Summit in Prague
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Alexander Wauck <alex.wauck@gmail.com>, Peter Sikking <peter@mmiworks.net>, Jonathan Riddell <jriddell@ubuntu.com>, Celeste Lyn Paul <celeste@kde.org>, Josef Spillner <spillner@kde.org>

Hi,

I have been on the Ubuntu Developer Summit (UDS) in Prague now and there 
I have run two discussion sessions about the dialog and I had also some 
discussion outside these sessions.

Especially we are trying to get as many applications as possible using a 
Common Printing Dialog in Ubuntu Intrepid and also to have the 
OpenUsability-designed dialog to be the Common Printing Dialog of Ubuntu 
Intrepid. Feature Freeze for Ubuntu Intrepid is end of August.

The Ubuntu Blueprint is here

https://launchpad.net/distros/ubuntu/+spec/applications-printing

and the blueprint Wiki (editable by everyone) with the minutes of the 
meetings, suggestions, problems, plans, ... is here:

https://wiki.ubuntu.com/PrintingStandardization

Especially please everyone with contacts to desktop application 
developers, tell them that we would like to have this dialog and to help 
with the needed modifications of the applications.

Biggest challenge currently is that several apps modify the standard 
dialogs of KDE and GNOME by defining their own dialog class inheriting 
the library's dialog class so that they can add application-specific 
options. To get the application-specific options in with DBUS-plugged 
dialog which can be of another desktop these apps need to be modified.

We have also tried out Alex'code which he has uploaded to the BZR 
repository. Unfortunately, it does not compile out of the box. Please 
use the patch linked in the Blueprint Wiki to make the code working. 
Alex, can you incorporate the patch? Thanks.

    Till
