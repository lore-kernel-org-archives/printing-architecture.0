Message-ID: <49CB60C5.8010608@bredband.net>
Date: Thu, 26 Mar 2009 12:02:29 +0100
From: Per Hermansson <hermansson.per@bredband.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] GSOC'09: Common Printing Dialog
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

Hi,

My name is Per Hermansson and I'm a student from the Royal institute of 
technology in Sweden. I'm interested in developing the common printing 
dialog. Designing a printing dialog with usability in mind seems like an 
important task which if done correct would benefit a lot of people. I 
consider myself to be experienced in C/C++ developing and have developed 
with GTK. Since I've recently switched to KDE I hope to also learn a bit 
about Qt. After some investigation about the idea, I've come up with the 
following questions I hope someone here can answer:

Since designing the interface is a major component would it be possible 
to implement the dialog with both Qt and GTK for one summer? I guess 
this depends on skill level (but e.g. abstracting the dialog model would 
make it easier).

Except for the printing dialog and the cpdapi implementation I guess 
that some kind of abstraction is needed so that the underlying print 
method is decoupled from D-Bus in order to use the api for systems 
without D-Bus?

Also, if two students are chosen for the project what would be a good 
measure for success in modifying other application to use the dialog?

Finally is the cpdapi used (or experimented with) by any applications 
today that you know of?

/Per
