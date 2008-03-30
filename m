Message-ID: <e942fc210803291849q680e4b79v8279bb08cfc65ce7@mail.gmail.com>
Date: Sun, 30 Mar 2008 02:49:43 +0100
From: "Cherif YAYA" <chef.ya@gmail.com>
In-Reply-To: <47ED5534.601@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_18143_26327987.1206841783362"
References: <e942fc210803221558p3c22c219p79f09e94da47e17e@mail.gmail.com>
	<47E59FA6.5060405@gmail.com>
	<e395be80803230946t1e7e7535q2c8879c19a8c4b47@mail.gmail.com>
	<e942fc210803241856u1da4d98by5c035557ef462e78@mail.gmail.com>
	<47EC6B80.9090407@Sun.COM> <47ED5534.601@gmail.com>
Subject: Re: [Printing-architecture] Summer of Code PAPI project
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

------=_Part_18143_26327987.1206841783362
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Norm,
Thanks a lot for your explanations. You've made more comprehensible several
points that I didn't quite get.
I'll put my best into writing my application and I really hope to get to
work with you guys.

Cherif

2008/3/28, Till Kamppeter <till.kamppeter@gmail.com>:
>
> Norm, thank you very much for these explanations. One thing I want to
> ask you. Would you (or Wendy) mentor a student doing the CUPS
> integration of PAPI? I have my name as interim in the project proposal
> as I did not succeed to contact you in the last days and Mike Sweet does
> not want, but it would be much better if you or Wendy mentors the
> student and not me.
>
> If you or Wendy are willing to mentor, please register at
>
> http://code.google.com/soc/mentor_step1.html
>
> choose the Linux Foundation as organization, wait for my approval, you
> are ready to see all applications, and add comments to them. After the
> application deadline on the coming Monday (if no prolongation) you can
> request the mentorship on an application which I will approve then.
>
>
>     Till
>
>
> Norm Jacobs wrote:
> > The libpapi-cups code that you found in the papi tarball was originally
> > written by Alan Hlava at IBM.  He wrote it as a prototype against an
> > earlier draft of the PAPI (pre v0.92 I think).  It is probably pretty
> > close to  what's in the PAPI spec, but I don't know for certain.  The
> > extent of my experience with it was a fairly quick review of it and some
> > porting work to make it build against libcups.
> >
> > My recollection of the history of the libpapi-cups code is that it was
> > written by Alan Hlava at IBM as a proof of concept of PAPI prior to the
> > v0.92 draft of the API.  He wrote it to build against the a version of
> > the libcups http and ipp interfaces that were split out from libcups.
> > The extent of my experience with that particular code was a fairly quick
> > review of it and some porting work to make it build against libcups (not
> > his broken out subset).  I have some vaque recollection that it used
> > some libcups interfaces that would pose problems handling multiple
> > papi_service_t service contexts in the long run.
> >
> > The most recent PAPI code in the sourceforge openprinting project's SVN
> > repository includes a complete PAPI over IPP implementation that works
> > with CUPS IPP service.  That being said, one of the things that has been
> > discussed several times in the OpenPrinting Workgroup is the desire to
> > build a PAPI implementation that would integrate into the CUPS code
> > base.  While the PAPI over IPP implementation works with CUPS, it
> > probably wouldn't be exactly what I would integrate into the CUPS code
> > base if I were doing so.  A version that were to integrate into the CUPS
> > code base would probably want to
> >
> >     * leverage some of the building blocks in the libcups interfaces
> >       (aside from the http and ipp interfaces).
> >     * avoid using a portion of the CUPS convenience interfaces
> >     * maintain CUPS http and ipp constructs per papi_service_t object.
> >
> > Another thing that is very important to cover here is unit testing of
> > the various interfaces.
> >
> >     -Norm
> >
> > Cherif YAYA wrote:
> >> Till, Ira,
> >> Thanks a lot for your answers.
> >> I'm looking forward to hearing from Norm and Wendy. Particularly about
> >> the progress status of the existing implementation.
> >>
> >> Cherif
> >>
> >>
> >> 2008/3/23, Ira McDonald <blueroofmusic@gmail.com
> >> <mailto:blueroofmusic@gmail.com>>:
> >>
> >>     Hi Norm and Wendy,
> >>
> >>     Could one of you answer Cherif's questions below, please?
> >>
> >>     Thanks very much,
> >>     - Ira
> >>
> >>     --
> >>     Ira McDonald (Musician / Software Architect)
> >>     Chair - Linux Foundation Open Printing WG
> >>     Blue Roof Music/High North Inc
> >>     email: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> >>     winter:
> >>       579 Park Place Saline, MI 48176
> >>       734-944-0094
> >>     summer:
> >>       PO Box 221 Grand Marais, MI 49839
> >>       906-494-2434
> >>
> >>
> >>
> >>     On Sat, Mar 22, 2008 at 8:09 PM, Till Kamppeter
> >>     <till.kamppeter@gmail.com <mailto:till.kamppeter@gmail.com>> wrote:
> >>     > Cherif YAYA wrote:
> >>     >  > Also in the TODO file, under the libpapi-cups entry it is
> >>     said that
> >>     >  > "Once libpapi-ipp is complete this can be dropped, because
> >>     CUPS will
> >>     >  > accept jobs from "any" IPP client and the PAPI IPP support is
> >>     guaranteed
> >>     >  > to work." Does that mean that any work done for this project
> >>     would be
> >>     >  > practically useless? It's probably not the case and I'm
> >>     probably missing
> >>     >  > something. But I'd like some clarification as to how the
> >>     deliverables of
> >>     >  > this CUPS integration will contribute to the PAPI effort.
> >>     >
> >>     >  For me this looks more like that libpapi-cups' functionality
> >>     gets merged
> >>     >  into libpapi-ipp. Norm, Wendy, am I correct?
> >>     >
> >>     >
> >>     >
> >>     >     Till
> >>     >
> >>
> >>     >  _______________________________________________
> >>     >  Printing-architecture mailing list
> >>     >  Printing-architecture@lists.linux-foundation.org
> >>     <mailto:Printing-architecture@lists.linux-foundation.org>
> >>     >
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> >>     >
> >>
> >>
> >>
> ------------------------------------------------------------------------
> >>
> >> _______________________________________________
> >> Printing-architecture mailing list
> >> Printing-architecture@lists.linux-foundation.org
> >>
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> >>
> >
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> >
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> >
>
>

------=_Part_18143_26327987.1206841783362
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Norm,<br>Thanks a lot for your explanations. You&#39;ve made more comprehensible several points that I didn&#39;t quite get. <br>I&#39;ll put my best into writing my application and I really hope to get to work with you guys.<br>
<br>Cherif<br><br><div><span class="gmail_quote">2008/3/28, Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;:</span><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
Norm, thank you very much for these explanations. One thing I want to<br> ask you. Would you (or Wendy) mentor a student doing the CUPS<br> integration of PAPI? I have my name as interim in the project proposal<br> as I did not succeed to contact you in the last days and Mike Sweet does<br>
 not want, but it would be much better if you or Wendy mentors the<br> student and not me.<br> <br> If you or Wendy are willing to mentor, please register at<br> <br> <a href="http://code.google.com/soc/mentor_step1.html">http://code.google.com/soc/mentor_step1.html</a><br>
 <br> choose the Linux Foundation as organization, wait for my approval, you<br> are ready to see all applications, and add comments to them. After the<br> application deadline on the coming Monday (if no prolongation) you can<br>
 request the mentorship on an application which I will approve then.<br> <br><br>&nbsp;&nbsp;&nbsp;&nbsp;Till<br> <br><br> Norm Jacobs wrote:<br> &gt; The libpapi-cups code that you found in the papi tarball was originally<br> &gt; written by Alan Hlava at IBM.&nbsp;&nbsp;He wrote it as a prototype against an<br>
 &gt; earlier draft of the PAPI (pre v0.92 I think).&nbsp;&nbsp;It is probably pretty<br> &gt; close to&nbsp;&nbsp;what&#39;s in the PAPI spec, but I don&#39;t know for certain.&nbsp;&nbsp;The<br> &gt; extent of my experience with it was a fairly quick review of it and some<br>
 &gt; porting work to make it build against libcups.<br> &gt;<br> &gt; My recollection of the history of the libpapi-cups code is that it was<br> &gt; written by Alan Hlava at IBM as a proof of concept of PAPI prior to the<br>
 &gt; v0.92 draft of the API.&nbsp;&nbsp;He wrote it to build against the a version of<br> &gt; the libcups http and ipp interfaces that were split out from libcups.<br> &gt; The extent of my experience with that particular code was a fairly quick<br>
 &gt; review of it and some porting work to make it build against libcups (not<br> &gt; his broken out subset).&nbsp;&nbsp;I have some vaque recollection that it used<br> &gt; some libcups interfaces that would pose problems handling multiple<br>
 &gt; papi_service_t service contexts in the long run.<br> &gt;<br> &gt; The most recent PAPI code in the sourceforge openprinting project&#39;s SVN<br> &gt; repository includes a complete PAPI over IPP implementation that works<br>
 &gt; with CUPS IPP service.&nbsp;&nbsp;That being said, one of the things that has been<br> &gt; discussed several times in the OpenPrinting Workgroup is the desire to<br> &gt; build a PAPI implementation that would integrate into the CUPS code<br>
 &gt; base.&nbsp;&nbsp;While the PAPI over IPP implementation works with CUPS, it<br> &gt; probably wouldn&#39;t be exactly what I would integrate into the CUPS code<br> &gt; base if I were doing so.&nbsp;&nbsp;A version that were to integrate into the CUPS<br>
 &gt; code base would probably want to<br> &gt;<br> &gt;&nbsp;&nbsp;&nbsp;&nbsp; * leverage some of the building blocks in the libcups interfaces<br> &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (aside from the http and ipp interfaces).<br> &gt;&nbsp;&nbsp;&nbsp;&nbsp; * avoid using a portion of the CUPS convenience interfaces<br>
 &gt;&nbsp;&nbsp;&nbsp;&nbsp; * maintain CUPS http and ipp constructs per papi_service_t object.<br> &gt;<br> &gt; Another thing that is very important to cover here is unit testing of<br> &gt; the various interfaces.<br> &gt;<br> &gt;&nbsp;&nbsp;&nbsp;&nbsp; -Norm<br>
 &gt;<br> &gt; Cherif YAYA wrote:<br> &gt;&gt; Till, Ira,<br> &gt;&gt; Thanks a lot for your answers.<br> &gt;&gt; I&#39;m looking forward to hearing from Norm and Wendy. Particularly about<br> &gt;&gt; the progress status of the existing implementation.<br>
 &gt;&gt;<br> &gt;&gt; Cherif<br> &gt;&gt;<br> &gt;&gt;<br> &gt;&gt; 2008/3/23, Ira McDonald &lt;<a href="mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a><br> &gt;&gt; &lt;mailto:<a href="mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt;&gt;:<br>
 &gt;&gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; Hi Norm and Wendy,<br> &gt;&gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; Could one of you answer Cherif&#39;s questions below, please?<br> &gt;&gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; Thanks very much,<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Ira<br> &gt;&gt;<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; --<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; Ira McDonald (Musician / Software Architect)<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; Chair - Linux Foundation Open Printing WG<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; Blue Roof Music/High North Inc<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; email: <a href="mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a> &lt;mailto:<a href="mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt;<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; winter:<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 579 Park Place Saline, MI 48176<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 734-944-0094<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; summer:<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PO Box 221 Grand Marais, MI 49839<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 906-494-2434<br> &gt;&gt;<br>
 &gt;&gt;<br> &gt;&gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; On Sat, Mar 22, 2008 at 8:09 PM, Till Kamppeter<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a> &lt;mailto:<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;&gt; wrote:<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt; Cherif YAYA wrote:<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; Also in the TODO file, under the libpapi-cups entry it is<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; said that<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; &quot;Once libpapi-ipp is complete this can be dropped, because<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; CUPS will<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; accept jobs from &quot;any&quot; IPP client and the PAPI IPP support is<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; guaranteed<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; to work.&quot; Does that mean that any work done for this project<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; would be<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; practically useless? It&#39;s probably not the case and I&#39;m<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; probably missing<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; something. But I&#39;d like some clarification as to how the<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; deliverables of<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&gt; this CUPS integration will contribute to the PAPI effort.<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;For me this looks more like that libpapi-cups&#39; functionality<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; gets merged<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;into libpapi-ipp. Norm, Wendy, am I correct?<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp; Till<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br> &gt;&gt;<br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;_______________________________________________<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;Printing-architecture mailing list<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;<a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &lt;mailto:<a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a>&gt;<br> &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;<a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br>
 &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;<br> &gt;&gt;<br> &gt;&gt;<br> &gt;&gt; ------------------------------------------------------------------------<br> &gt;&gt;<br> &gt;&gt; _______________________________________________<br> &gt;&gt; Printing-architecture mailing list<br>
 &gt;&gt; <a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br> &gt;&gt; <a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br>
 &gt;&gt;<br> &gt;<br> &gt; _______________________________________________<br> &gt; Printing-architecture mailing list<br> &gt; <a href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a><br>
 &gt; <a href="https://lists.linux-foundation.org/mailman/listinfo/printing-architecture">https://lists.linux-foundation.org/mailman/listinfo/printing-architecture</a><br> &gt;<br> <br> </blockquote></div><br>

------=_Part_18143_26327987.1206841783362--
