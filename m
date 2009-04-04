From: "Hal V. Engel" <hvengel@astound.net>
Date: Fri, 3 Apr 2009 17:35:52 -0700
References: <49CAA2A1.6000906@gmail.com>
	<200904031332.06660.hvengel@astound.net>
	<49D6778F.7040208@gmail.com>
In-Reply-To: <49D6778F.7040208@gmail.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200904031735.53288.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Printing-summit] OpenPrinting Summit
	2009: Registration / Participation by Phone / Presentations
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

On Friday 03 April 2009 01:54:39 pm Till Kamppeter wrote:
> Hal V. Engel wrote:
> > Or how about using mumble or something similar like teamtalk?  No need
> > for people to sign up for anything and all they would need is a password
> > for the mumble session along with info on how to connect to the server
> > both of which could be made available here.
>
> Can mumble connect to a usual phone? We have a phone conference hub for
> calling with a ususal phone. We will dial into this hub with the Polycom
> to connect the conference room. We planned to start a conference call on
> Skype where one "participant" is the conference hub, so that the Skype
> conference is bridged to the phone conference. Is it possible to do the
> same thing with mumble?
>
>     Till


All mumble needs is an alsa input (which for a normal user would be connected 
to a mic) and an alsa output (for a normal user this would be connected to a 
speaker or a set of headphones).  I have not looked at a newer polycom unit 
but I do remember them having both audio in (for more mics and other audio 
sources) and audio out jacks but this may also depend on the model.  These 
could be attached to a computer near the polycom with a set of RCA cables.  
This would connect the polycom line out to computer line in (this is located 
on the interface module of most polycoms) and polycom mic/line in  (this is 
probably labeled as AUX IN) to computer line out.  Then mumble would be setup 
to use those alsa ports and it should work (IE this created a conference room 
to mumble bridge at the polycom).  But I don't have a polycom sitting here so 
I can't test it myself.  And I think that this is something that someone has 
to setup in advance and have everything sorted out and tested to make sure 
everything is OK.

So if someone already knows how to setup Skype to act as a conference bridge 
then this would also be OK.  Setting up a Skype account is free and setting up 
the software is simple.  Making calls to another skype account is also free.

Hal
