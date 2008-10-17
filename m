Message-ID: <9624da290810170450g6401b162w598f9d51ac7d8a61@mail.gmail.com>
Date: Fri, 17 Oct 2008 07:50:41 -0400
From: "Matt Gessner" <magembcons@gmail.com>
In-Reply-To: <48F83E55.7080907@gmx.de>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_127118_15706361.1224244241210"
References: <9624da290810162221p57b55292l7f51e1cc155d6fd9@mail.gmail.com>
	<48F83E55.7080907@gmx.de>
Subject: Re: [Printing-architecture] Associate printer
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tobias Hoffmann <th55@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org

------=_Part_127118_15706361.1224244241210
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello,

On Fri, Oct 17, 2008 at 3:27 AM, Tobias Hoffmann <th55@gmx.de> wrote:

> Matt Gessner wrote:
>
>> I'm missing an important detail.  Can someone point me to an example that
>> shows how to tell HPIJS which printer I wish to use?  From the 0.35 hpijs
>> tar ball, I think I have enough information to do other things, but this
>> part is eluding me.
>>
> All the communication between your program and the hpijs is done via a
> protocol called ijs, for which there is a simple library (libijs) under MIT
> license. It can be found either as part of the ghostscript sourcecode or at
> http://www.linuxprinting.org/ijs/. It includes the protocol description
> and an example ijs_client_example using libijs.
>
> Roughly sketched you do:
>  ijs_invoke_server("hpijs");
>  ijs_client_{open, begin_job}
>  ijs_client_set_param({DeviceManufacturer,DeviceModel,....},"*your
> values*");
>  ijs_client_{begin_page,send_data,...}
>  ... more pages and/or jobs and cleanup
>

Well, I actually understand MOST of that... but I think what I was missing
was the DeviceManufacturer and DeviceModel set_param stuff.

Thanks for filling that in.

So, by specifying the DeviceManufacturer and DeviceModel fields, THAT'S how
HPIJS knows that it's a USB printer versus, say, a network printer or a
parallel printer?  (Does it even support network printers without CUPS?)

Thanks,


>
>  Tobias
>

Matt

------=_Part_127118_15706361.1224244241210
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div dir="ltr">Hello,<br><br><div class="gmail_quote">On Fri, Oct 17, 2008 at 3:27 AM, Tobias Hoffmann <span dir="ltr">&lt;<a href="mailto:th55@gmx.de">th55@gmx.de</a>&gt;</span> wrote:<br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
<div class="Ih2E3d">Matt Gessner wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
I&#39;m missing an important detail. &nbsp;Can someone point me to an example that shows how to tell HPIJS which printer I wish to use? &nbsp;From the 0.35 hpijs tar ball, I think I have enough information to do other things, but this part is eluding me.<br>

</blockquote></div>
All the communication between your program and the hpijs is done via a protocol called ijs, for which there is a simple library (libijs) under MIT license. It can be found either as part of the ghostscript sourcecode or at <a href="http://www.linuxprinting.org/ijs/" target="_blank">http://www.linuxprinting.org/ijs/</a>. It includes the protocol description and an example ijs_client_example using libijs.<br>

<br>
Roughly sketched you do:<br>
&nbsp;ijs_invoke_server(&quot;hpijs&quot;);<br>
&nbsp;ijs_client_{open, begin_job}<br>
&nbsp;ijs_client_set_param({DeviceManufacturer,DeviceModel,....},&quot;*your values*&quot;);<br>
&nbsp;ijs_client_{begin_page,send_data,...}<br>
&nbsp;... more pages and/or jobs and cleanup<br><font color="#888888">
</font></blockquote><div><br>Well, I actually understand MOST of that... but I think what I was missing was the DeviceManufacturer and DeviceModel set_param stuff.<br><br>Thanks for filling that in.<br><br>So, by specifying the DeviceManufacturer and DeviceModel fields, THAT&#39;S how HPIJS knows that it&#39;s a USB printer versus, say, a network printer or a parallel printer?&nbsp; (Does it even support network printers without CUPS?)<br>
<br>Thanks,<br>&nbsp;</div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"><font color="#888888"><br>
&nbsp;Tobias<br>
</font></blockquote></div><br>Matt<br></div>

------=_Part_127118_15706361.1224244241210--
