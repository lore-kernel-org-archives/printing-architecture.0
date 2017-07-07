Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=sJuYLuM+SHRkv+SlPoa3cs2LopJM2M14BVhNGrJhQjw=;
	b=dJe+UGfobGUgri6mV1oCvs8Y/Wim0RHgP+itrNxeW02Ho6Gg6lEjJ+MA03/lIpxRoh
	6QI8EdKdyrBgGHsW3/tiX1lkPLkmKaLq+ALn+QKnkP2wFbAw9zWcQV8ys4PEjMWIGk+K
	FH+ccTkFolKrzycAgCCQ4jyb5Ycbq0OjyZvUODEJvgTxXAxqJiRzCzs4yWcwFmPrDT/C
	f5TFOFnpT/X7nA9LyqkghQBkqRsz3MUINA+YKMNc6HdfU8v5Et0cJQTOLfimzhAPPDmF
	jkCsBdkS97kUIwla3qDU0mpJz3zeUYvsxylAR1wSeG5+W21ChncchTRHcUfQujPBU9/8
	u2lQ==
MIME-Version: 1.0
In-Reply-To: <29F8415E-54FF-4FEC-BB1D-CACF4B12C900@hp.com>
References: <29F8415E-54FF-4FEC-BB1D-CACF4B12C900@hp.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Fri, 7 Jul 2017 19:56:48 -0400
Message-ID: <CAN40gSsnX=GEBJoXKro5DZbFe2EepCBPwGOeHYj0fF6oH=qCmg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11479a86bbba290553c2fd6b"
Subject: [Printing-architecture] Fwd: PWG / OpenPrinting Collaboration
	Opportunities - notes
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "pwg-announce@pwg.org" <pwg-announce@pwg.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>

--001a11479a86bbba290553c2fd6b
Content-Type: text/plain; charset="UTF-8"

Hi,

With my apologies for failing to forward in May (egg on face)...

Smith's excellent summary of our PWG/OP Collaboration Opportunities
topic at the PWG/OP Summit Virtual F2F in May 2017.

Cheers,
- Ira

---------- Forwarded message ----------
From: Kennedy, Smith (Wireless Architect) <smith.kennedy@hp.com>
Date: Thu, May 4, 2017 at 2:27 PM
Subject: PWG / OpenPrinting Collaboration Opportunities - notes
To: Ira McDonald <blueroofmusic@gmail.com>


Hi Ira,

Here's what I recorded:


   - Collaboration Opportunities brainstorming
   - Driverless scanning using IPP Scan - implement an IPP Scan Client that
      can be integrated into systems that now interface with scanners today
      (image editors, GIMP, LibreOffice, etc.) but requires
pre-configuration of
      scanner attributes via a driver
      - extend "ippsample" tools (ipptool) to support these other service
      types (is there work to be done?)
      - IPP Scan
         - IPP Fax Out
         - IPP Transform
         - IPP System
         - Extend IPP Everywhere certification suite to test other IPP
      service types
         - IPP Scan
         - IPP Fax Out
         - IPP Transform
         - IPP System
         - System to implement testing the quality or correctness of a
      Client implementation
         - extension to ippserver?
         - external system (tshark? ippserver log analysis?) that inspects
         the network traffic received by ippserver and "comments" on
that traffic's
         quality
         - ippserver extension to cover all MFD services (Fax Out, Scan,
      etc.)
         - This might help facilitate testing the quality / correctness of
         client implementations targeting the various IPP service types
      - Driverless 3D printing via IPP 3D Printing Extensions - implement
      an IPP 3D Print Client that can be integrated into systems that now
      interface with 3D printers today (CAD programs, slicers) but requires
      pre-configuration of 3D printer attributes via a driver
   - Near term (next 6 months) objectives
   - IPP Scan Client objectives
      - Tools etc. that facilitates IPP Client testing
      - Extending ippserver and ippclient to support IPP Scan



Smith

--001a11479a86bbba290553c2fd6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>With my apologie=
s for failing to forward in May (egg on face)...<br><br></div>Smith&#39;s e=
xcellent summary of our PWG/OP Collaboration Opportunities<br></div>topic a=
t the PWG/OP Summit Virtual F2F in May 2017.<br><br></div>Cheers,<br></div>=
- Ira<br clear=3D"all"><div><div><div><div><div><div><div><div class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div style=3D"display:inline"></div><div style=3D"display:inli=
ne"></div><div style=3D"display:inline"></div><div></div><div></div><div></=
div><div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">---------- Forwarded message ----------<br>F=
rom: <b class=3D"gmail_sendername">Kennedy, Smith (Wireless Architect)</b> =
<span dir=3D"ltr">&lt;<a href=3D"mailto:smith.kennedy@hp.com">smith.kennedy=
@hp.com</a>&gt;</span><br>Date: Thu, May 4, 2017 at 2:27 PM<br>Subject: PWG=
 / OpenPrinting Collaboration Opportunities - notes<br>To: Ira McDonald &lt=
;<a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt;=
<br><br><br><div style=3D"word-wrap:break-word">Hi Ira,<div><br></div><div>=
Here&#39;s what I recorded:</div><div><br></div><div><ul>
  <li>Collaboration Opportunities brainstorming<br>
  </li>
  <ul>
    <li>Driverless scanning using IPP Scan - implement an IPP Scan Client t=
hat can be integrated into systems=20
that now interface with scanners today (image editors, GIMP, LibreOffice, e=
tc.) but=20
requires pre-configuration of scanner attributes via a driver
      </li>
    <li>extend &quot;ippsample&quot; tools (ipptool) to support these other=
 service types (is there work to be done?)<br>
    </li>
    <ul>
      <li>IPP Scan</li>
      <li>IPP Fax Out</li>
      <li>IPP Transform<br>
      </li>
      <li>IPP System<br>
      </li>
    </ul>
    <li>Extend IPP Everywhere certification suite to test other IPP service=
 types</li>
    <ul>
      <li>IPP Scan</li>
      <li>IPP Fax Out</li>
      <li>IPP Transform</li>
      <li>IPP System<br>
      </li>
    </ul>
    <li>System to implement testing the quality or correctness of a Client =
implementation</li>
    <ul>
      <li>extension to ippserver?</li>
      <li>external system (tshark? ippserver log analysis?) that=20
inspects the network traffic received by ippserver and &quot;comments&quot;=
 on=20
that traffic&#39;s quality<br>
      </li>
    </ul>
    <li>ippserver extension to cover all MFD services (Fax Out, Scan, etc.)=
</li>
    <ul>
      <li>This might help facilitate testing the quality / correctness of c=
lient implementations targeting the various IPP service types</li>
    </ul>
    <li>Driverless 3D printing via IPP 3D Printing Extensions -=20
implement an IPP 3D Print Client that can be integrated into systems=20
that now interface with 3D printers today (CAD programs, slicers) but=20
requires pre-configuration of 3D printer attributes via a driver</li>
  </ul>
  <li>Near term (next 6 months) objectives<br>
  </li>
  <ul>
    <li>IPP Scan Client objectives</li>
    <li>Tools etc. that facilitates IPP Client testing</li>
    <li>Extending ippserver and ippclient to support IPP Scan<span class=3D=
"HOEnZb"><font color=3D"#888888"><br>
    </font></span></li><span class=3D"HOEnZb"><font color=3D"#888888">
  </font></span></ul><span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></ul><span class=3D"HOEnZb"><font color=3D"#888888"><p><br>
</p><p><br></p></font></span></div><span class=3D"HOEnZb"><font color=3D"#8=
88888"><div>
Smith<br><br><br>

</div>
<br></font></span></div></div><br></div></div></div></div></div></div></div=
>

--001a11479a86bbba290553c2fd6b--
