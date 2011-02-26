From: "Hal V. Engel" <hvengel@gmail.com>
Date: Sat, 26 Feb 2011 08:16:00 -0800
References: <201102252000.59079.hvengel@gmail.com> <4D68F9F7.5090702@gmail.com>
In-Reply-To: <4D68F9F7.5090702@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="Boundary-01=_BdSaN6kX5xXzeqJ"
Content-Transfer-Encoding: 7bit
Message-Id: <201102260816.01720.hvengel@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>, Lars Uebernickel <larsuebernickel@gmx.de>
Cc: Printing-architecture@lists.linux-foundation.org

--Boundary-01=_BdSaN6kX5xXzeqJ
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Saturday, February 26, 2011 05:02:47 AM Till Kamppeter wrote:
> Great news. Please commit it to the BZR. You can already commit the
> changes on the core CPD. And after you finished the test app, commit
> these changes, too.
> 
>     Till

Till & Lars,

I already have the test app using Qt calls only at this point since it only 
took about 1/2 hour to do.  Since I have not used BZR before I will spend some 
time getting a handle on what I need to do and then commit the changes after 
doing a little clean up on the code.  I will also see what I can do to clean 
up the build over the next day or two and then commit those changes.

Is there a todo document/list some place that covers what work is needed for 
the Qt CPD?  Or is this something that we need to work out as things are 
getting underway?    

Hal

> 
> On 02/26/2011 05:00 AM, Hal V. Engel wrote:
> > Till expressed some concerns about how much effort it would take to
> > convert the KDE CPD to a pure Qt app. Just to let eveyone know I have
> > now removed all KDE calls from the core CPD code and I have a working Qt
> > only CPD on my system.
> > 
> > 
> > There is still some stuff that needs to be done. The view-dialog test
> > app code still has some KDE widgets (KCmdLineArgs and KAboutData) that I
> > will remove tomorrow and the build will need to have kde references
> > removed. I will need to clean everything up as well but it actaully took
> > less effort than I had thought to remove the KDE specific widgets from
> > the CPD core code.
> > 
> > 
> > Hal

--Boundary-01=_BdSaN6kX5xXzeqJ
Content-Type: text/html;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'DejaVu Sans'; font-size:12pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">On Saturday, February 26, 2011 05:02:47 AM Till Kamppeter wrote:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Great news. Please commit it to the BZR. You can already commit the</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; changes on the core CPD. And after you finished the test app, commit</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; these changes, too.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt;     Till</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Till &amp; Lars,</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">I already have the test app using Qt calls only at this point since it only took about 1/2 hour to do.  Since I have not used BZR before I will spend some time getting a handle on what I need to do and then commit the changes after doing a little clean up on the code.  I will also see what I can do to clean up the build over the next day or two and then commit those changes.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Is there a todo document/list some place that covers what work is needed for the Qt CPD?  Or is this something that we need to work out as things are getting underway?    </p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hal</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; On 02/26/2011 05:00 AM, Hal V. Engel wrote:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; Till expressed some concerns about how much effort it would take to</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; convert the KDE CPD to a pure Qt app. Just to let eveyone know I have</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; now removed all KDE calls from the core CPD code and I have a working Qt</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; only CPD on my system.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; There is still some stuff that needs to be done. The view-dialog test</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; app code still has some KDE widgets (KCmdLineArgs and KAboutData) that I</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; will remove tomorrow and the build will need to have kde references</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; removed. I will need to clean everything up as well but it actaully took</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; less effort than I had thought to remove the KDE specific widgets from</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; the CPD core code.</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; Hal</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p></body></html>
--Boundary-01=_BdSaN6kX5xXzeqJ--
