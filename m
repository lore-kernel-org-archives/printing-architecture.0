Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_A5ufaqN4f99WxyR0AUqkzQ)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CD26E4AD-B675-4850-AAC4-BF07BDA5AA2B@apple.com>
Date: Fri, 03 Feb 2012 09:09:36 -0800
Message-id: <7A22A6B8-0C18-4710-B7BA-FA015950317F@apple.com>
References: <CD26E4AD-B675-4850-AAC4-BF07BDA5AA2B@apple.com>
Subject: Re: [Printing-architecture] Removal of features in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


--Boundary_(ID_A5ufaqN4f99WxyR0AUqkzQ)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Till Kamppeter wrote:
> On 01/12/2012 11:51 AM, Tim Waugh wrote:
> > I think that CUPS Browsing is also being removed in 1.6, leaving Avahi
> > as the sanest of the remaining discovery methods.
> >
> > The current state of the Avahi support patches is that service
> > announcement is working in the scheduler, and service discovery is
> > working in the dnssd backend -- i.e. by manual user intervention.
> >
> > What is currently missing is automatic service discovery in the
> > scheduler, so that shared queues can be discovered by CUPS itself as
> > used to happen with CUPS Browsing.
> 
> Does libdnssd-based upstream CUPS do automatic service discovery by the 
> scheduler, meaning that your Avahi patch is not yet complete in this 
> sense or is automatic service discovery by the scheduler even not 
> implemented at all upstream, meaning that by removing IPP browsing one 
> of the most important features of CUPS gets lost?

No, the scheduler does not maintain a constant browse for shared printers - that is done in libcups, and there are new APIs for dealing with dynamically-available printers in CUPS 1.6.  You can also manually add specific shared printers you use, and the CUPS 1.6 web interface will automagically use the "raw" driver for shared printers.
The only functionality that is lost is the notion of implicit classes.
_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_A5ufaqN4f99WxyR0AUqkzQ)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Till =
Kamppeter wrote:<div><blockquote type=3D"cite"><span =
class=3D"Apple-style-span" style=3D"font-family: 'Helvetica Neue'; =
"><pre>On 01/12/2012 11:51 AM, Tim Waugh wrote:
&gt;<i> I think that CUPS Browsing is also being removed in 1.6, leaving =
Avahi
</i>&gt;<i> as the sanest of the remaining discovery methods.
</i>&gt;<i>
</i>&gt;<i> The current state of the Avahi support patches is that =
service
</i>&gt;<i> announcement is working in the scheduler, and service =
discovery is
</i>&gt;<i> working in the dnssd backend -- i.e. by manual user =
intervention.
</i>&gt;<i>
</i>&gt;<i> What is currently missing is automatic service discovery in =
the
</i>&gt;<i> scheduler, so that shared queues can be discovered by CUPS =
itself as
</i>&gt;<i> used to happen with CUPS Browsing.
</i>
Does libdnssd-based upstream CUPS do automatic service discovery by the=20=

scheduler, meaning that your Avahi patch is not yet complete in this=20
sense or is automatic service discovery by the scheduler even not=20
implemented at all upstream, meaning that by removing IPP browsing one=20=

of the most important features of CUPS gets lost?
</pre></span></blockquote></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: 'Helvetica Neue'; "><pre>No, the scheduler does =
not maintain a constant browse for shared printers - that is done in =
libcups, and there are new APIs for dealing with dynamically-available =
printers in CUPS 1.6.  You can also manually add specific shared =
printers you use, and the CUPS 1.6 web interface will automagically use =
the "raw" driver for shared printers.</pre><pre>The only functionality =
that is lost is the notion of implicit =
classes.</pre></span></div><div><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Boundary_(ID_A5ufaqN4f99WxyR0AUqkzQ)--
