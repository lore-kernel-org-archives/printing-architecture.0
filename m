From: "Hal V. Engel" <hvengel@astound.net>
Date: Mon, 13 Jul 2009 12:51:25 -0700
References: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
	<200907101600.36756.hvengel@astound.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F4188AD@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F4188AD@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="Boundary-00=_9A5WKc3hHfBpm1Q"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200907131251.25838.hvengel@astound.net>
Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on CPD
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

--Boundary-00=_9A5WKc3hHfBpm1Q
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 13 July 2009 06:25:45 am Petrie, Glen wrote:
> I am not going to argue with you; you simply missed the point.

I don't think I missed the point.  Perhaps I didn't communicate my points 
effectively and if so I apologize.  Let me try again.  

In a round about way Glen asked how media characteristics and color management 
were related and if color management was (or could be) used to tailor how 
colorants were applied to the media based on media characteristics.  

Referring how "color-to-ink processing" could/should be tailored to a specific 
media Glen wrote: 

"Note, I have not seen this kind of processing done in color-management 
processing software." 

I pointed out that this is in fact exactly what color management of printers 
does and is designed to do.  And that using profiles and color management was 
very specific about tailoring the colorant output to the media characteristics 
(including the specific device and the device settings) since it did this 
based on detailed media/device/device settings specific measurements.  How 
could it possibly be more tailored then that?

Looking at the CUPS PPD extension documentation about the cupsICCProfile 
keyword CUPS uses various bits of information including the media type and 
resolution to select which output profile to use for a particular print job.  
Unfortunately CUPS restricts this to three values that are used for this 
selection process which is probably too restrictive to be as flexible as we 
would like in actual practice.  But the current CUPS design, with in these 
limits, does exactly the thing that Glen has "not seen done in color-
management processing software" by selecting different profiles, which means 
different "color-to-ink processing", based on printer queue, color model, 
media type and resolution settings.  To be clear my point is that using the 
existing CUPS design users can set up color management in CUPS (once color 
management aware *toraster filters are available) to do exactly the type of 
processing Glen was talking about.  CUPS, in fact, does this on OS/X systems 
using the OS/X proprietary color management aware *toraster filters and has 
for a long time so we know it can work. 

I also tried to point out some incorrect assumptions and terminology.  I did 
this to try to clarify the subject since fuzzy terminology and incorrect 
assumptions make for bad design.   I did not intend to be confrontational and 
if I appeared to be let me apologize.    

The incorrect assumptions and fuzzy terminology include:

1. Users could "easily find" paper "brightness" and "color" (media white 
point?) "information on the cover of the media".  This is at best true in only 
a limited number of cases and then only for "brightness" information.   I have 
never seen a paper package or product sheet with  "color" information of any 
kind. 

In fairness to Genn, unlike most paper manufacturers, Epson papers do have 
published ISO brightness specifications so I think the disagreement here is 
over how common this is and how useful this information is.

2. There is an apparent assumption that this information is colorimetricaly 
meaningful.  Some papers come with a stated brightness number but I have 
measured some of these papers with a spectrophotometer and the stated 
"brightness" does not appear to correspond to the measured colorimentric 
values.  The stated "brightness" is usually significantly higher than the 
measured L* value probably because of FWA enhancers. I found a research paper 
about this on-line and these "brightness" values are in fact not colorimentric 
and in it's Conclusion section it stated:

"Brightness is not a parameter related to color of substrate; actually it is 
not even connected to its appearance. It is a number related to the color of 
substrate viewed under a blue stained glass. Brightness is related to 
reflectance values in a narrow region of the total visible spectra around 460 
nm. Due to this limitation, values of brightness cannot be connected or 
correlated to (white) appearance of pulp or manufactured paper, not even in 
those cases where no FWAs are applied."*  

* See www.axiphos.com/BrightnessReview.pdf

So these "brightness" numbers are in fact a measurement of the blue spectrum 
(457 nm +- 44nm) reflectivity of the paper plus blue region florescence caused 
by UV interaction with the FWA.

3. The assumption that the "brightness" and "color" information for these 
media is of some use to the driver.  

Even if colorimentricly meaningful white point and brightness information was 
available on the media box or product specification sheet how would this be 
used in a non-color managed work flow?   

Would there be a place for users to enter this information so the driver would 
know about it?  

Are there any existing drivers that make use of this information on any 
platform?  

How would the driver use this information since it does not have access to 
characterization data about how it's colorants interact with the media unless 
there is an ICC profile available?   IE. unless detailed measurements had been 
done.

If there is an ICC profile the media white point and "brightness" information 
is already part of the profile and there is no reason for users to get this 
information from the box even if this were available. 

4. Use of the term "color" when Glen probably should have used a term like 
"media white point" or "white point".  For color people the term color is not 
very useful or even meaningful but white point has a very specific meaning.  
Using the term color is like calling something a printer.  It tells us that 
the device is a printer but it does not tell us anything specific about the 
device where as calling something an Epson R2400 tells us a lot about the 
device.

The problem Glen was describing in item E: is exactly the problem that color 
management was designed to solve.  Why not use a tool set that is designed to 
solve that problem rather than reinventing the wheel if the existing tool set 
is not badly broken?  Admittedly there are currently issues with how this is 
handled by CUPS on non-OS/X systems because of the lack of open source CM 
aware *toraster filters.  But this issue is being worked on and will 
eventually be resolved.  

Hal

>
> > -----Original Message-----
> > From: printing-architecture-bounces@lists.linux-foundation.org
> > [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> > Behalf Of Hal V. Engel
> > Sent: Friday, July 10, 2009 4:01 PM
> > To: printing-architecture@lists.linux-foundation.org
> > Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on
>
> CPD
>
> > On Thursday 09 July 2009 09:39:14 am Petrie, Glen wrote:
> > >  E: Another "option" to consider for this section is an advanced
>
> button.
>
> > > The key to printing a specific print-quality (actually, better
>
> stated as
>
> > > a specific print-intent) is to know more about the media being
>
> printed
>
> > > to.   That is, for example using paper; what is brightness, the
>
> weight,
>
> > > the finish (rough, smooth, polished), color, etc.  From these facts,
>
> the
>
> > > printer driver can tune its color-to-ink processing and other
>
> factors to
>
> > > achieve the best output for the user print intent.  Typically, a
>
> user
>
> > > can easily find this information on the cover of the media being
>
> used in
>
> > > the printer.  Note, I have not seen this kind of processing done in
> > > color-management processing software.
> >
> > You are incorrect.  This is exactly what should happen in a proper
>
> color
>
> > managed work flow and this is exactly what color management is for.
> > Proper
> > profiles are media (as well as device and device settings) specific.
>
> They
>
> > are
> > created by measuring the media white point (you called this color) and
> > brightness (these are actually the same thing) as well as the
>
> resulting
>
> > absolute (meaning CIE XYZ or CIE L*a*b*) colors/tones of various
>
> amounts
>
> > and
> > combinations of inks/colorants on that media (we usually measure 1,000
>
> to
>
> > 3,000 color patches when creating a printer profile).
> >
> > The correct use of a printer ICC profile should optimize how the
> > inks/colorants are put down on the paper to match the paper white
>
> point to
>
> > the
> > grays/blacks created by the inks/colorants (I have assumed relative
> > colorimentric intent) as well as to optimize the gamut/dynamic range
>
> of
>
> > the
> > resulting prints without over inking.
> >
> > I am not sure if I have ever seen a paper package that had the media
>
> white
>
> > point listed at least not in a form that would have colorimetric
>
> meaning.
>
> > Although these may exist I have NEVER seen a printer driver that had
>
> the
>
> > ability to accept this data (paper white point) as user input other
>
> than
>
> > by
> > using an ICC profile.  I just looked at the box and the product sheet
>
> from
>
> > the
> > box of the Ilford paper that I use and it did NOT list the paper white
> > point
> > or brightness of the paper.  If it did I would expect to find
>
> something
>
> > like:
> >
> > White point: XYZ: 84.550000 88.240000 74.960000, D50 Lab: 95.261904 -
> > 0.999796
> > -1.888369
> >
> > (The above is the measured white point of a sample of Ilford Galerie
> > Smooth
> > Gloss paper - note the first Lab value is also the "brightness" -
>
> actually
>
> > Luminosity - of the paper).
> >
> > Isn't the media type setting what is used to denote the general
> > characteristics of the media such as finish and weight....
> >
> > Hal
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
>
> https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
> e


--Boundary-00=_9A5WKc3hHfBpm1Q
Content-Type: text/html;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-=
html40/strict.dtd"><html><head><meta name=3D"qrichtext" content=3D"1" /><st=
yle type=3D"text/css">p, li { white-space: pre-wrap; }</style></head><body =
style=3D" font-family:'Sans Serif'; font-size:11pt; font-weight:400; font-s=
tyle:normal;">On Monday 13 July 2009 06:25:45 am Petrie, Glen wrote:<br>
&gt; I am not going to argue with you; you simply missed the point.<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>I don't think I missed the point.  Perhaps I didn't c=
ommunicate my points effectively and if so I apologize.  Let me try again. =
 <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>In a round about way Glen asked how media characteris=
tics and color management were related and if color management was (or coul=
d be) used to tailor how colorants were applied to the media based on media=
 characteristics.  <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>Referring how "color-to-ink processing" could/should =
be tailored to a specific media Glen wrote: <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>"Note, I have not seen this kind of processing done i=
n color-management processing software." <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>I pointed out that this is in fact exactly what color=
 management of printers does and is designed to do.  And that using profile=
s and color management was very specific about tailoring the colorant outpu=
t to the media characteristics (including the specific device and the devic=
e settings) since it did this based on detailed media/device/device setting=
s specific measurements.  How could it possibly be more tailored then that?=
<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>Looking at the CUPS PPD extension documentation about=
 the cupsICCProfile keyword CUPS uses various bits of information including=
 the media type and resolution to select which output profile to use for a =
particular print job.  Unfortunately CUPS restricts this to three values th=
at are used for this selection process which is probably too restrictive to=
 be as flexible as we would like in actual practice.  But the current CUPS =
design, with in these limits, does exactly the thing that Glen has "not see=
n done in color-management processing software" by selecting different prof=
iles, which means different "color-to-ink processing", based on printer que=
ue, color model, media type and resolution settings.  To be clear my point =
is that using the existing CUPS design users can set up color management in=
 CUPS (once color management aware *toraster filters are available) to do e=
xactly the type of processing Glen was talking about.  CUPS, in fact, does =
this on OS/X systems using the OS/X proprietary color management aware *tor=
aster filters and has for a long time so we know it can work. <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>I also tried to point out some incorrect assumptions =
and terminology.  I did this to try to clarify the subject since fuzzy term=
inology and incorrect assumptions make for bad design.   I did not intend t=
o be confrontational and if I appeared to be let me apologize.    <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>The incorrect assumptions and fuzzy terminology inclu=
de:<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>1. Users could "easily find" paper "brightness" and "=
color" (media white point?) "information on the cover of the media".  This =
is at best true in only a limited number of cases and then only for "bright=
ness" information.   I have never seen a paper package or product sheet wit=
h  "color" information of any kind. <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>In fairness to Genn, unlike most paper manufacturers,=
 Epson papers do have published ISO brightness specifications so I think th=
e disagreement here is over how common this is and how useful this informat=
ion is.<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>2. There is an apparent assumption that this informat=
ion is colorimetricaly meaningful.  Some papers come with a stated brightne=
ss number but I have measured some of these papers with a spectrophotometer=
 and the stated "brightness" does not appear to correspond to the measured =
colorimentric values.  The stated "brightness" is usually significantly hig=
her than the measured L* value probably because of FWA enhancers. I found a=
 research paper about this on-line and these "brightness" values are in fac=
t not colorimentric and in it's Conclusion section it stated:<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>"Brightness is not a parameter related to color of su=
bstrate; actually it is not even connected to its appearance. It is a numbe=
r related to the color of substrate viewed under a blue stained glass. Brig=
htness is related to reflectance values in a narrow region of the total vis=
ible spectra around 460 nm. Due to this limitation, values of brightness ca=
nnot be connected or correlated to (white) appearance of pulp or manufactur=
ed paper, not even in those cases where no FWAs are applied."*  <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>* See <a name=3D"main"></a><span style=3D" font-style=
:italic;">w</span><span style=3D" font-style:italic;">ww.axiphos.com/</span=
><span style=3D" font-weight:600; font-style:italic;">Brightness</span><spa=
n style=3D" font-style:italic;">Review.pdf</span><br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0; font-style:italic;"><br></p><span style=3D" font-style:italic;=
">So these "brightness" numbers are in fact a measurement of the blue spect=
rum (457 nm +- 44nm) reflectivity of the paper plus blue region florescence=
 caused by UV interaction with the FWA.</span><br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>3. The assumption that the "brightness" and "color" i=
nformation for these media is of some use to the driver.  <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>Even if colorimentricly meaningful white point and br=
ightness information was available on the media box or product specificatio=
n sheet how would this be used in a non-color managed work flow?   <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>Would there be a place for users to enter this inform=
ation so the driver would know about it?  <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>Are there any existing drivers that make use of this =
information on any platform?  <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>How would the driver use this information since it do=
es not have access to characterization data about how it's colorants intera=
ct with the media unless there is an ICC profile available?   IE. unless de=
tailed measurements had been done.<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>If there is an ICC profile the media white point and =
"brightness" information is already part of the profile and there is no rea=
son for users to get this information from the box even if this were availa=
ble. <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>4. Use of the term "color" when Glen probably should =
have used a term like "media white point" or "white point".  For color peop=
le the term color is not very useful or even meaningful but white point has=
 a very specific meaning.  Using the term color is like calling something a=
 printer.  It tells us that the device is a printer but it does not tell us=
 anything specific about the device where as calling something an Epson R24=
00 tells us a lot about the device.<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>The problem Glen was describing in item E: is exactly=
 the problem that color management was designed to solve.  Why not use a to=
ol set that is designed to solve that problem rather than reinventing the w=
heel if the existing tool set is not badly broken?  Admittedly there are cu=
rrently issues with how this is handled by CUPS on non-OS/X systems because=
 of the lack of open source CM aware *toraster filters.  But this issue is =
being worked on and will eventually be resolved.  <br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>Hal<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p>&gt;<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: printing-architecture-bounces@lists.linux-foundation.org<br>
&gt; &gt; [mailto:printing-architecture-bounces@lists.linux-foundation.org]=
 On<br>
&gt; &gt; Behalf Of Hal V. Engel<br>
&gt; &gt; Sent: Friday, July 10, 2009 4:01 PM<br>
&gt; &gt; To: printing-architecture@lists.linux-foundation.org<br>
&gt; &gt; Subject: Re: [Printing-architecture] Questions, Concern, Disscusi=
on on<br>
&gt;<br>
&gt; CPD<br>
&gt;<br>
&gt; &gt; On Thursday 09 July 2009 09:39:14 am Petrie, Glen wrote:<br>
&gt; &gt; &gt;  E: Another "option" to consider for this section is an adva=
nced<br>
&gt;<br>
&gt; button.<br>
&gt;<br>
&gt; &gt; &gt; The key to printing a specific print-quality (actually, bett=
er<br>
&gt;<br>
&gt; stated as<br>
&gt;<br>
&gt; &gt; &gt; a specific print-intent) is to know more about the media bei=
ng<br>
&gt;<br>
&gt; printed<br>
&gt;<br>
&gt; &gt; &gt; to.   That is, for example using paper; what is brightness, =
the<br>
&gt;<br>
&gt; weight,<br>
&gt;<br>
&gt; &gt; &gt; the finish (rough, smooth, polished), color, etc.  From thes=
e facts,<br>
&gt;<br>
&gt; the<br>
&gt;<br>
&gt; &gt; &gt; printer driver can tune its color-to-ink processing and othe=
r<br>
&gt;<br>
&gt; factors to<br>
&gt;<br>
&gt; &gt; &gt; achieve the best output for the user print intent.  Typicall=
y, a<br>
&gt;<br>
&gt; user<br>
&gt;<br>
&gt; &gt; &gt; can easily find this information on the cover of the media b=
eing<br>
&gt;<br>
&gt; used in<br>
&gt;<br>
&gt; &gt; &gt; the printer.  Note, I have not seen this kind of processing =
done in<br>
&gt; &gt; &gt; color-management processing software.<br>
&gt; &gt;<br>
&gt; &gt; You are incorrect.  This is exactly what should happen in a prope=
r<br>
&gt;<br>
&gt; color<br>
&gt;<br>
&gt; &gt; managed work flow and this is exactly what color management is fo=
r.<br>
&gt; &gt; Proper<br>
&gt; &gt; profiles are media (as well as device and device settings) specif=
ic.<br>
&gt;<br>
&gt; They<br>
&gt;<br>
&gt; &gt; are<br>
&gt; &gt; created by measuring the media white point (you called this color=
) and<br>
&gt; &gt; brightness (these are actually the same thing) as well as the<br>
&gt;<br>
&gt; resulting<br>
&gt;<br>
&gt; &gt; absolute (meaning CIE XYZ or CIE L*a*b*) colors/tones of various<=
br>
&gt;<br>
&gt; amounts<br>
&gt;<br>
&gt; &gt; and<br>
&gt; &gt; combinations of inks/colorants on that media (we usually measure =
1,000<br>
&gt;<br>
&gt; to<br>
&gt;<br>
&gt; &gt; 3,000 color patches when creating a printer profile).<br>
&gt; &gt;<br>
&gt; &gt; The correct use of a printer ICC profile should optimize how the<=
br>
&gt; &gt; inks/colorants are put down on the paper to match the paper white=
<br>
&gt;<br>
&gt; point to<br>
&gt;<br>
&gt; &gt; the<br>
&gt; &gt; grays/blacks created by the inks/colorants (I have assumed relati=
ve<br>
&gt; &gt; colorimentric intent) as well as to optimize the gamut/dynamic ra=
nge<br>
&gt;<br>
&gt; of<br>
&gt;<br>
&gt; &gt; the<br>
&gt; &gt; resulting prints without over inking.<br>
&gt; &gt;<br>
&gt; &gt; I am not sure if I have ever seen a paper package that had the me=
dia<br>
&gt;<br>
&gt; white<br>
&gt;<br>
&gt; &gt; point listed at least not in a form that would have colorimetric<=
br>
&gt;<br>
&gt; meaning.<br>
&gt;<br>
&gt; &gt; Although these may exist I have NEVER seen a printer driver that =
had<br>
&gt;<br>
&gt; the<br>
&gt;<br>
&gt; &gt; ability to accept this data (paper white point) as user input oth=
er<br>
&gt;<br>
&gt; than<br>
&gt;<br>
&gt; &gt; by<br>
&gt; &gt; using an ICC profile.  I just looked at the box and the product s=
heet<br>
&gt;<br>
&gt; from<br>
&gt;<br>
&gt; &gt; the<br>
&gt; &gt; box of the Ilford paper that I use and it did NOT list the paper =
white<br>
&gt; &gt; point<br>
&gt; &gt; or brightness of the paper.  If it did I would expect to find<br>
&gt;<br>
&gt; something<br>
&gt;<br>
&gt; &gt; like:<br>
&gt; &gt;<br>
&gt; &gt; White point: XYZ: 84.550000 88.240000 74.960000, D50 Lab: 95.2619=
04 -<br>
&gt; &gt; 0.999796<br>
&gt; &gt; -1.888369<br>
&gt; &gt;<br>
&gt; &gt; (The above is the measured white point of a sample of Ilford Gale=
rie<br>
&gt; &gt; Smooth<br>
&gt; &gt; Gloss paper - note the first Lab value is also the "brightness" -=
<br>
&gt;<br>
&gt; actually<br>
&gt;<br>
&gt; &gt; Luminosity - of the paper).<br>
&gt; &gt;<br>
&gt; &gt; Isn't the media type setting what is used to denote the general<b=
r>
&gt; &gt; characteristics of the media such as finish and weight....<br>
&gt; &gt;<br>
&gt; &gt; Hal<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Printing-architecture mailing list<br>
&gt; &gt; Printing-architecture@lists.linux-foundation.org<br>
&gt;<br>
&gt; https://lists.linux-foundation.org/mailman/listinfo/printing-architect=
ur<br>
&gt; e<br>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-u=
ser-state:0;"><br></p></body></html>
--Boundary-00=_9A5WKc3hHfBpm1Q--
