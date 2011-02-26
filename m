From: "Hal V. Engel" <hvengel@gmail.com>
Date: Sat, 26 Feb 2011 13:40:55 -0800
References: <201102252000.59079.hvengel@gmail.com>
	<201102260816.01720.hvengel@gmail.com> <4D694B17.2010506@gmail.com>
In-Reply-To: <4D694B17.2010506@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="Boundary-01=_nNXaNPIPHYG3W5d"
Content-Transfer-Encoding: 7bit
Message-Id: <201102261340.55287.hvengel@gmail.com>
Subject: Re: [Printing-architecture] Qt only CPD.
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
Cc: Printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>

--Boundary-01=_nNXaNPIPHYG3W5d
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Saturday, February 26, 2011 10:48:55 AM Till Kamppeter wrote:
> On 02/26/2011 05:16 PM, Hal V. Engel wrote:
> > I already have the test app using Qt calls only at this point since it
> > only took about 1/2 hour to do. Since I have not used BZR before I will
> > spend some time getting a handle on what I need to do and then commit
> > the changes after doing a little clean up on the code. I will also see
> > what I can do to clean up the build over the next day or two and then
> > commit those changes.
> 
> A short introduction for using BZR you find here:
> 
> https://www.linuxfoundation.org/collaborate/workgroups/openprinting/databas
> e/instructionsforcontributors
> 
> > Is there a todo document/list some place that covers what work is needed
> > for the Qt CPD? Or is this something that we need to work out as things
> > are getting underway?
> 
> Here you find the TODO list of the whole project:
> 
> https://www.linuxfoundation.org/collaborate/workgroups/openprinting/plan-co
> mpletion-common-printing-dialog
> 
>     Till

Thanks that helped.  I think I commited my current changes.  At least the 
messages I got looked like it worked.  But it does not apear to show up in the 
web interface to the repository.  But perhaps that needs some time to sync up.  
Please feel free to give the dialog a test run if it actually made it into the 
repository.  The dialog looks and behaves just like the original version for 
the most part.  Things related to this that still need to be done:

1.  I did not do much with the cmake setup as I am far from an expert on how 
cmake does things and I wanted to get the rest of this checked in.  So this 
still needs to be modified to remove kde references.

2.  I had to add some icon files that where apparently included in KDE.  An 
application resource needs to be created for these and the code modified to use 
the resource instead of the files.

3. The directory should probably be renamed from kde4-dialog to qt4-dialog.

Hal

--Boundary-01=_nNXaNPIPHYG3W5d
Content-Type: text/html;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'DejaVu Sans'; font-size:12pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">On Saturday, February 26, 2011 10:48:55 AM Till Kamppeter wrote:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; On 02/26/2011 05:16 PM, Hal V. Engel wrote:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; I already have the test app using Qt calls only at this point since it</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; only took about 1/2 hour to do. Since I have not used BZR before I will</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; spend some time getting a handle on what I need to do and then commit</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; the changes after doing a little clean up on the code. I will also see</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; what I can do to clean up the build over the next day or two and then</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; commit those changes.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; A short introduction for using BZR you find here:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; https://www.linuxfoundation.org/collaborate/workgroups/openprinting/databas</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; e/instructionsforcontributors</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; Is there a todo document/list some place that covers what work is needed</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; for the Qt CPD? Or is this something that we need to work out as things</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; are getting underway?</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Here you find the TODO list of the whole project:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; https://www.linuxfoundation.org/collaborate/workgroups/openprinting/plan-co</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; mpletion-common-printing-dialog</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt;     Till</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Thanks that helped.  I think I commited my current changes.  At least the messages I got looked like it worked.  But it does not apear to show up in the web interface to the repository.  But perhaps that needs some time to sync up.  Please feel free to give the dialog a test run if it actually made it into the repository.  The dialog looks and behaves just like the original version for the most part.  Things related to this that still need to be done:</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">1.  I did not do much with the cmake setup as I am far from an expert on how cmake does things and I wanted to get the rest of this checked in.  So this still needs to be modified to remove kde references.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">2.  I had to add some icon files that where apparently included in KDE.  An application resource needs to be created for these and the code modified to use the resource instead of the files.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">3. The directory should probably be renamed from kde4-dialog to qt4-dialog.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hal</p></body></html>
--Boundary-01=_nNXaNPIPHYG3W5d--
