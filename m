Return-Path: <lprint-list@thax.hardliners.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 201E642268
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6CA742249
Content-Type: multipart/alternative;
 boundary="------------T777uxPf8r2GOpQhks1HF9k7"
Message-ID: <6f83f586-b358-c2ba-4a81-e23b10f98e99@thax.hardliners.org>
Date: Thu, 7 Dec 2023 21:17:49 +0100
MIME-Version: 1.0
Content-Language: en-US, de-DE
References: <c7a55ce9-b1a0-49f9-869a-b3c021fc51fb@gmail.com>
 <C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org>
From: Tobias Hoffmann <lprint-list@thax.hardliners.org>
In-Reply-To: <C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org>
Subject: Re: [Printing-architecture] PDFio: Replaced QPDF by PDFio in
 libcupsfilters as GSoC project?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------T777uxPf8r2GOpQhks1HF9k7
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit

Hi,

AFAIR the hard thing was exactly this: To transform(move, rotate) the 
annotations (just keeping them when no transformations are applied was 
never the problem), as required esp. for n-up.

At the time, the "easiest" way – actually the only way I've seen it 
implemented in other open source projects – was to first convert the 
annotations into regular /Content commands (called "flatten" – 
implemented by Jay in QPDF) that are then simply subject to all the 
transformations applied there (which is not the case for /Annots, IIRC). 
AFAIK this also the only way to "clip" annotations to only be drawn 
inside a given area.

But I would be delighted to see a different implementation.

As a side note, when sufficiently complex transformations are required 
(e.g. n-up), the current qpdf based pdftopdf implementation converts 
pages to "Form XObjects", that could be draw just like Images onto new 
pages. But these XObjects cannot have Annotations themselves, only the 
Page where they would be drawn to has /Annots.

   Tobias


On 07/12/2023 18:38, Michael Sweet via Printing-architecture wrote:
> Till,
>
>> On Dec 7, 2023, at 8:58 AM, Till Kamppeter <till.kamppeter@gmail.com> 
>> wrote:
>>
>> Hi,
>>
>> Michael Sweet has closed the PDFio issue in which I ask for support 
>> of PDF forms and annotations, telling that inside PDFio nothing 
>> further needs to be done, that everything can be solved outside 
>> PDFio, by the calling application.
>>
>> As we want to get rid of C++ in libcupsfilters I plan to let it use 
>> PDFio where it is currently using QPDF.
>>
>> Mike, as you tell that PDFio is OK for handling PDF files with filled 
>> forms/annotations, I want to post a GSoC project idea to switch over 
>> libcupsfilters from using QPDF to PDFio. WDYT? Is this possible 
>> already? Or are there still any features missing in PDFio?
>
> It is entirely possible.  The ipptransform program (part of the 
> libcups project) shows how to do this, but it is really only necessary 
> if you are doing N-up or other combinations of multiple pages from the 
> input document.  If all you do is copy pages as-is then pdfioPageCopy 
> will handle copying all of the annotations referenced by the Annots 
> key in the page dictionary.
>
> (ipptransform needs to be updated to copy/merge the Annots values, and 
> I filed issue #71 in the libcups project to track that change...)
>
> ________________________
> Michael Sweet
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture


--------------T777uxPf8r2GOpQhks1HF9k7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Hi,</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">AFAIR the hard thing was exactly this:
      To transform(move, rotate) the annotations (just keeping them when
      no transformations are applied was never the problem), as required
      esp. for n-up.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">At the time, the "easiest" way –
      actually the only way I've seen it implemented in other open
      source projects – was to first convert the annotations into
      regular /Content commands (called "flatten" – implemented by Jay
      in QPDF) that are then simply subject to all the transformations
      applied there (which is not the case for /Annots, IIRC). AFAIK
      this also the only way to "clip" annotations to only be drawn
      inside a given area.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">But I would be delighted to see a
      different implementation.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">As a side note, when sufficiently
      complex transformations are required (e.g. n-up), the current qpdf
      based pdftopdf implementation converts pages to "Form XObjects",
      that could be draw just like Images onto new pages. But these
      XObjects cannot have Annotations themselves, only the Page where
      they would be drawn to has /Annots.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">  Tobias</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 07/12/2023 18:38, Michael Sweet via
      Printing-architecture wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:C4E3B308-74D8-43D7-9790-859BEE0CAB62@msweet.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Till,
      <div><br>
      </div>
      <div>
        <div>
          <blockquote type="cite">
            <div>On Dec 7, 2023, at 8:58 AM, Till Kamppeter
              <a class="moz-txt-link-rfc2396E" href="mailto:till.kamppeter@gmail.com">&lt;till.kamppeter@gmail.com&gt;</a> wrote:</div>
            <br class="Apple-interchange-newline">
            <div>
              <div>Hi,<br>
                <br>
                Michael Sweet has closed the PDFio issue in which I ask
                for support of PDF forms and annotations, telling that
                inside PDFio nothing further needs to be done, that
                everything can be solved outside PDFio, by the calling
                application.<br>
                <br>
                As we want to get rid of C++ in libcupsfilters I plan to
                let it use PDFio where it is currently using QPDF.<br>
                <br>
                Mike, as you tell that PDFio is OK for handling PDF
                files with filled forms/annotations, I want to post a
                GSoC project idea to switch over libcupsfilters from
                using QPDF to PDFio. WDYT? Is this possible already? Or
                are there still any features missing in PDFio?<br>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
      <div>It is entirely possible.  The ipptransform program (part of
        the libcups project) shows how to do this, but it is really only
        necessary if you are doing N-up or other combinations of
        multiple pages from the input document.  If all you do is copy
        pages as-is then pdfioPageCopy will handle copying all of the
        annotations referenced by the Annots key in the page dictionary.</div>
      <div><br>
      </div>
      <div>(ipptransform needs to be updated to copy/merge the Annots
        values, and I filed issue #71 in the libcups project to track
        that change...)</div>
      <div><br>
      </div>
      <div>
        <div>
          <div dir="auto" style="overflow-wrap: break-word;
            -webkit-nbsp-mode: space; line-break: after-white-space;">________________________<br>
            Michael Sweet<br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
Printing-architecture mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Printing-architecture@lists.linux-foundation.org">Printing-architecture@lists.linux-foundation.org</a>
<a class="moz-txt-link-freetext" href="https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture">https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------T777uxPf8r2GOpQhks1HF9k7--
