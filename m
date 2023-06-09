Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACFA983F04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C97483EFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686287693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oEmfHsRA4g0XVZr/jFlCllr8Ozv8HZFt8hznVtEqhPQ=;
 b=c3I+zbchAqIE81NX0EXEZ91RkuoLer6UMCDlpZWOG3d6aRd5kKjMyh/k7dsRuwkoAJBWSd
 DpDZSLAn0FV3lWb1UtyZgnU9Gz0S5+ZJ/4wtoPpaIf5gMKJWdZteJ505GgZyKKudXpHBhM
 OQVBJMjRzQ51JbfdvYP9W22nHypSHVc=
Message-ID: <128e6538-b8e0-8a94-0b24-5f603c9bd665@redhat.com>
Date: Fri, 9 Jun 2023 07:14:36 +0200
MIME-Version: 1.0
References: <681e8990-eb04-b1b0-dfdb-ab04cd0de619@gmail.com>
 <CAN40gSvM_mhiGQTCKyQqUdpoeD7tFsJhRmtLaOphFBDW2J9F=g@mail.gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <CAN40gSvM_mhiGQTCKyQqUdpoeD7tFsJhRmtLaOphFBDW2J9F=g@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------fiOewJwO0koQmRCXB2oGEFyV"
Content-Language: en-US
Subject: Re: [Printing-architecture] OpenPrinting micro-conference 2023
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Piotr Pawliczek <pawliczek@chromium.org>, Aveek Basu <basu.aveek@gmail.com>, Benjamin Gordon <bmgordon@google.com>

This is a multi-part message in MIME format.
--------------fiOewJwO0koQmRCXB2oGEFyV
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit

Working days would be great for me as well, but if there is no other 
way, I can manage, but working days are preferred.


Zdenek

On 6/5/23 23:19, Ira McDonald wrote:
> Hi Till,
>
> This idea all makes sense, EXCEPT that 9-10 September is a 
> Saturday/Sunday.
>
> For me (and probably Mike and others), that's out-of-the-question.
>
> If you could back up two days to 7-8 September on Thursday/Friday, 
> then I could
> possibly call in.
>
> Remember that there is a 9 1/2 hour time difference between IST in 
> India and EDT
> in US.  So the only practical timeslot is very early EDT in US (e.g., 
> 7am) and late
> afternoon in India (e.g., 4:30pm) and early afternoon in Europe (e.g., 
> 1pm CEST).
>
> Thoughts?
>
> Cheers,
> - Ira
>
> /Ira McDonald (Musician / Software Architect)/
> /Chair - SAE Trust Anchors and Authentication TF
> /
> /Co-Chair - TCG Trusted Mobility Solutions WG/
> /Co-Chair - TCG Metadata Access Protocol SG
> /
> /Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> (permanent) PO Box 221  Grand Marais, MI 49839 906-494-2434/
>
>
> On Mon, Jun 5, 2023 at 4:54 PM Till Kamppeter 
> <till.kamppeter@gmail.com> wrote:
>
>     Hi,
>
>     this year the Linux Plumbers takes place on Nov 13-15, clashing
>     with the
>     PWG Virtual F2F on Nov 14-16. Also the date is very late in the year.
>
>     So we (Aveek and me) decided to do this year's micro-conference on a
>     different platform.
>
>     The DebConf takes place in India this year, in Kochi (near the
>     southern
>     tip of India), on Sep 10-17 (8 days, Sun-Sun), this led me to the
>     idea
>     to travel to India this year and I suggested to Aveek to do a
>     panel with
>     him and the GSoC contributors/mentors on the DebConf.
>
>     Then we realized that India is huge and Kochi in the very South,
>     Aveek's
>     home in the very East, and Mandi, where most of the contributors
>     study,
>     is in the very North of India, so we cannot easily meet all in Kochi.
>
>     So Aveek suggested that we all should meet in Mandi (he already
>     organized such an event some years ago, with ~150 attendees) and
>     then I
>     suggested to run a 2-day OpenPrinting conference there, with 2 panels
>     (one technical, one community), talks of the contributors, also
>     Michael
>     Sweet or others speaking remotely, a workshop of recycling old
>     printers
>     and scanners with a Raspberry Pi, ...
>
>     We came also to the conclusion to not only have sessions about
>     printing
>     and for that to run a second track in a second room for which we
>     post a CfP.
>
>     And after discussing all this we came to the conclusion why not
>     taking
>     half a day of the OpenPrinting track and use it for the
>     micro-conference, running the micro-conference with students and
>     professors of the IIT Mandi as audience. Michael, Zdenek, Piotr, ...
>     could connect remotely while Aveek, me and the contributors are on
>     the
>     stage.
>
>     As the date we have though about the weekend of 9-10 of Sep, so that
>     after the conference I could move to DebConf and there also give a
>     talk
>     about the conference.
>
>     So WDYT?
>
>     The MC would happen on Sat or Sun in the afternoon Indian time.
>
>     Would this work for you? Or do we have to run it on a workday?
>
>     I have also talked with the Community Team of Canonical and they
>     would
>     provide me the system for remote speaking, live streaming, and
>     recording
>     the conference (Streamyard, what is also used for the Indabas and was
>     used for the Ubuntu Summit 2022 in Prague).
>
>         Till
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

--------------fiOewJwO0koQmRCXB2oGEFyV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Working days would be great for me as well, but if there is no
      other way, I can manage, but working days are preferred.</p>
    <p><br>
    </p>
    <p>Zdenek<br>
    </p>
    <div class="moz-cite-prefix">On 6/5/23 23:19, Ira McDonald wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAN40gSvM_mhiGQTCKyQqUdpoeD7tFsJhRmtLaOphFBDW2J9F=g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi Till,</div>
        <div><br>
        </div>
        <div>This idea all makes sense, EXCEPT that 9-10 September is a
          Saturday/Sunday.</div>
        <div><br>
        </div>
        <div>For me (and probably Mike and others), that's
          out-of-the-question.</div>
        <div><br>
        </div>
        <div>If you could back up two days to 7-8 September on
          Thursday/Friday, then I could</div>
        <div>possibly call in.</div>
        <div><br>
        </div>
        <div>Remember that there is a 9 1/2 hour time difference between
          IST in India and EDT <br>
        </div>
        <div>in US.  So the only practical timeslot is very early EDT in
          US (e.g., 7am) and late <br>
        </div>
        <div>afternoon in India (e.g., 4:30pm) and early afternoon in
          Europe (e.g., 1pm CEST).</div>
        <div><br>
        </div>
        <div>Thoughts?</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>- Ira</div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div>
                  <div dir="ltr">
                    <div>
                      <div dir="ltr">
                        <div>
                          <div dir="ltr">
                            <div>
                              <div dir="ltr">
                                <div>
                                  <div dir="ltr">
                                    <div>
                                      <div dir="ltr">
                                        <div>
                                          <div dir="ltr">
                                            <div>
                                              <div dir="ltr"><i><font
                                                    size="1">Ira
                                                    McDonald (Musician /
                                                    Software Architect)</font></i></div>
                                              <div><i><font size="1">Chair
                                                    - SAE Trust Anchors
                                                    and Authentication
                                                    TF<br>
                                                  </font></i></div>
                                              <div dir="ltr"><i><font
                                                    size="1">Co-Chair -
                                                    TCG Trusted Mobility
                                                    Solutions WG</font></i></div>
                                              <div><i><font size="1">Co-Chair
                                                    - TCG Metadata
                                                    Access Protocol SG<br>
                                                  </font></i></div>
                                              <div dir="ltr"><i><font
                                                    size="1">Chair -
                                                    Linux Foundation
                                                    Open Printing WG<br>
                                                    Secretary -
                                                    IEEE-ISTO Printer
                                                    Working Group<br>
                                                    Co-Chair - IEEE-ISTO
                                                    PWG Internet
                                                    Printing Protocol WG<br>
                                                    IETF Designated
                                                    Expert - IPP &amp;
                                                    Printer MIB<br>
                                                    Blue Roof Music /
                                                    High North Inc<br>
                                                    <a
                                                      style="color:rgb(51,51,255)"
href="http://sites.google.com/site/blueroofmusic" target="_blank"
                                                      moz-do-not-send="true"
class="moz-txt-link-freetext">http://sites.google.com/site/blueroofmusic</a><br>
                                                    <a
                                                      style="color:rgb(102,0,204)"
href="http://sites.google.com/site/highnorthinc" target="_blank"
                                                      moz-do-not-send="true"
class="moz-txt-link-freetext">http://sites.google.com/site/highnorthinc</a><br>
                                                    mailto: <a
                                                      href="mailto:blueroofmusic@gmail.com"
                                                      target="_blank"
                                                      moz-do-not-send="true"
class="moz-txt-link-freetext">blueroofmusic@gmail.com</a><br>
                                                    (permanent) PO Box
                                                    221  Grand Marais,
                                                    MI 49839 
                                                    906-494-2434</font></i></div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Jun 5, 2023 at 4:54 PM
          Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com"
            moz-do-not-send="true" class="moz-txt-link-freetext">till.kamppeter@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
          <br>
          this year the Linux Plumbers takes place on Nov 13-15,
          clashing with the <br>
          PWG Virtual F2F on Nov 14-16. Also the date is very late in
          the year.<br>
          <br>
          So we (Aveek and me) decided to do this year's
          micro-conference on a <br>
          different platform.<br>
          <br>
          The DebConf takes place in India this year, in Kochi (near the
          southern <br>
          tip of India), on Sep 10-17 (8 days, Sun-Sun), this led me to
          the idea <br>
          to travel to India this year and I suggested to Aveek to do a
          panel with <br>
          him and the GSoC contributors/mentors on the DebConf.<br>
          <br>
          Then we realized that India is huge and Kochi in the very
          South, Aveek's <br>
          home in the very East, and Mandi, where most of the
          contributors study, <br>
          is in the very North of India, so we cannot easily meet all in
          Kochi.<br>
          <br>
          So Aveek suggested that we all should meet in Mandi (he
          already <br>
          organized such an event some years ago, with ~150 attendees)
          and then I <br>
          suggested to run a 2-day OpenPrinting conference there, with 2
          panels <br>
          (one technical, one community), talks of the contributors,
          also Michael <br>
          Sweet or others speaking remotely, a workshop of recycling old
          printers <br>
          and scanners with a Raspberry Pi, ...<br>
          <br>
          We came also to the conclusion to not only have sessions about
          printing <br>
          and for that to run a second track in a second room for which
          we post a CfP.<br>
          <br>
          And after discussing all this we came to the conclusion why
          not taking <br>
          half a day of the OpenPrinting track and use it for the <br>
          micro-conference, running the micro-conference with students
          and <br>
          professors of the IIT Mandi as audience. Michael, Zdenek,
          Piotr, ... <br>
          could connect remotely while Aveek, me and the contributors
          are on the <br>
          stage.<br>
          <br>
          As the date we have though about the weekend of 9-10 of Sep,
          so that <br>
          after the conference I could move to DebConf and there also
          give a talk <br>
          about the conference.<br>
          <br>
          So WDYT?<br>
          <br>
          The MC would happen on Sat or Sun in the afternoon Indian
          time.<br>
          <br>
          Would this work for you? Or do we have to run it on a workday?<br>
          <br>
          I have also talked with the Community Team of Canonical and
          they would <br>
          provide me the system for remote speaking, live streaming, and
          recording <br>
          the conference (Streamyard, what is also used for the Indabas
          and was <br>
          used for the Ubuntu Summit 2022 in Prague).<br>
          <br>
              Till<br>
        </blockquote>
      </div>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC</pre>
  </body>
</html>

--------------fiOewJwO0koQmRCXB2oGEFyV--

