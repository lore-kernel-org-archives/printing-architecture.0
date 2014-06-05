Return-Path: <ku.b-list@gmx.de>
Message-ID: <53905B8C.5090906@gmx.de>
Date: Thu, 05 Jun 2014 13:59:08 +0200
From: Kai-Uwe Behrmann <ku.b-list@gmx.de>
MIME-Version: 1.0
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>	<m3oayc85fp.fsf@carbon.jhcloos.org>	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>	<m361kj88z0.fsf@carbon.jhcloos.org>	<3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com>	<m3zjhv6sle.fsf@carbon.jhcloos.org>	<m38upe4ya7.fsf@carbon.jhcloos.org>
	<538DB6C0.60507@gmx.de> <m3k38v1zg7.fsf@carbon.jhcloos.org>
In-Reply-To: <m3k38v1zg7.fsf@carbon.jhcloos.org>
Content-Type: multipart/alternative;
	boundary="------------060506070407050301030607"
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>
Cc: printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.
--------------060506070407050301030607
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

Am 05.06.2014 11:23, schrieb James Cloos:
>>>>>> "KB" == Kai-Uwe Behrmann <ku.b-list@gmx.de> writes:
> KB> Data Color Space: Unknown 'sGra' = 73477261
>
> So Data Color Space is a 32bit int, then?

Yes, big endian.
http://www.color.org/ICC_Minor_Revision_for_Web.pdf
6.1.5 Color Space signature
grayData
'GRAY'
47524159h
uInt32Number

>
> Fixed.
>
> As I wrote, I based this on the xml conversion of the sRGB shipped with
> Argyll.
>
> Are the viewingConditionsType and measurementType sections of value?

Not many software uses these tags. Can not test. Otherwiese they should
be fine in plain copying.

kind regards
Kai-Uwe

--------------060506070407050301030607
Content-Type: text/html; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-15"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Am 05.06.2014 11:23, schrieb James
      Cloos:<br>
    </div>
    <blockquote cite="mid:m3k38v1zg7.fsf@carbon.jhcloos.org" type="cite">
      <blockquote type="cite">
        <blockquote type="cite">
          <blockquote type="cite">
            <blockquote type="cite">
              <blockquote type="cite">
                <pre wrap="">"KB" == Kai-Uwe Behrmann <a class="moz-txt-link-rfc2396E" href="mailto:ku.b-list@gmx.de">&lt;ku.b-list@gmx.de&gt;</a> writes:
</pre>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
      </blockquote>
      <pre wrap="">
KB&gt; Data Color Space: Unknown 'sGra' = 73477261

So Data Color Space is a 32bit int, then?</pre>
    </blockquote>
    <br>
    Yes, big endian.<br>
    <a class="moz-txt-link-freetext" href="http://www.color.org/ICC_Minor_Revision_for_Web.pdf">http://www.color.org/ICC_Minor_Revision_for_Web.pdf</a><br>
    6.1.5 Color Space signature<br>
    <div dir="ltr" style="font-size: 16.4px; font-family: sans-serif;
      left: 181.667px; top: 954.866px; transform: rotate(0deg)
      scale(0.958176, 1); transform-origin: 0% 0% 0px;" data-angle="0"
      data-font-name="Helvetica" data-canvas-width="68.03047841758728">grayData</div>
    <div dir="ltr" style="font-size: 16.4px; font-family: sans-serif;
      left: 601.667px; top: 954.866px; transform: rotate(0deg)
      scale(1.07116, 1); transform-origin: 0% 0% 0px;" data-angle="0"
      data-font-name="Helvetica" data-canvas-width="54.70055872764588">&#8216;GRAY&#8217;</div>
    <div dir="ltr" style="font-size: 16.4px; font-family: sans-serif;
      left: 721.667px; top: 954.866px; transform: rotate(0deg)
      scale(0.924486, 1); transform-origin: 0% 0% 0px;" data-angle="0"
      data-font-name="Helvetica" data-canvas-width="83.2037580646515">47524159h<br>
      uInt32Number<br>
    </div>
    <br>
    <blockquote cite="mid:m3k38v1zg7.fsf@carbon.jhcloos.org" type="cite">
      <pre wrap="">

Fixed.

As I wrote, I based this on the xml conversion of the sRGB shipped with
Argyll.

Are the viewingConditionsType and measurementType sections of value?
</pre>
    </blockquote>
    <br>
    Not many software uses these tags. Can not test. Otherwiese they
    should be fine in plain copying.<br>
    <br>
    kind regards<br>
    Kai-Uwe<br>
  </body>
</html>

--------------060506070407050301030607--
