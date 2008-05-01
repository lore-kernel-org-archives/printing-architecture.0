Message-ID: <b801b6f40805010844ka80fd30o64e1df4b525e00e2@mail.gmail.com>
Date: Thu, 1 May 2008 10:44:07 -0500
From: "Alex Wauck" <alex.wauck@gmail.com>
In-Reply-To: <b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_4071_16898938.1209656647907"
References: <481101A3.6030700@gmail.com> <4818BB7F.50603@gmail.com>
	<b801b6f40804301312m3a97c2eie3257cd339865be@mail.gmail.com>
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
	its interface
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

------=_Part_4071_16898938.1209656647907
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Another comment:
Forcing the columns to be a particular height is not particularly easy in Qt
(I don't know how difficult it is in GTK+), and it leads to unexpected
behavior when resizing the dialog.  Specifically, some resize operations are
not possible, and the user may not like that.  Is it really necessary to
force column height?  Perhaps that part of the spec should be relaxed to a
preferred or minimum height instead of a required height.  I got it to work
in Qt by subclassing QGridLayout, but it's a bit of a hack, and a real
solution would likely be much more difficult.

Alex

On Wed, Apr 30, 2008 at 3:12 PM, Alex Wauck <alex.wauck@gmail.com> wrote:

> One comment so far: in the "dialog specification" section, it only mentions
> the three columns in the middle part of the dialog.  Then, in the "Dialog
> Zones Specification" section, it adds a zone that spans columns 2 and 3.
> That has very different consequences for the implementation than simply
> having three columns.  It looks like the level 3 dialog always has that
> zone, so perhaps the first specification should mention it?
>
> Alex
>
>
> On Wed, Apr 30, 2008 at 1:33 PM, Till Kamppeter <till.kamppeter@gmail.com>
> wrote:
>
>> Till Kamppeter wrote:
>>
>>> 3. How the OpenUsability dialog itself has to look like and how it is
>>>   operated.
>>>
>>>    - See Peter Sikking's blog
>>>      http://www.mmiworks.net/eng/publications/labels/openPrinting.html
>>>    - Peter is working with a student on the specs.
>>>
>>>
>> Peter has started to write down the specs here:
>>
>> http://wiki.openusability.org/printing/index.php/Specification
>>
>>   Till
>>
>>
>

------=_Part_4071_16898938.1209656647907
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Another comment:<br>Forcing the columns to be a particular height is not particularly easy in Qt (I don&#39;t know how difficult it is in GTK+), and it leads to unexpected behavior when resizing the dialog.&nbsp; Specifically, some resize operations are not possible, and the user may not like that.&nbsp; Is it really necessary to force column height?&nbsp; Perhaps that part of the spec should be relaxed to a preferred or minimum height instead of a required height.&nbsp; I got it to work in Qt by subclassing QGridLayout, but it&#39;s a bit of a hack, and a real solution would likely be much more difficult.<br>
<br>Alex<br><br><div class="gmail_quote">On Wed, Apr 30, 2008 at 3:12 PM, Alex Wauck &lt;<a href="mailto:alex.wauck@gmail.com">alex.wauck@gmail.com</a>&gt; wrote:<br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
One comment so far: in the &quot;dialog specification&quot; section, it only mentions the three columns in the middle part of the dialog.&nbsp; Then, in the &quot;Dialog Zones Specification&quot; section, it adds a zone that spans columns 2 and 3.&nbsp; That has very different consequences for the implementation than simply having three columns.&nbsp; It looks like the level 3 dialog always has that zone, so perhaps the first specification should mention it?<br>
<font color="#888888">

<br>Alex</font><div><div></div><div class="Wj3C7c"><br><br><div class="gmail_quote">On Wed, Apr 30, 2008 at 1:33 PM, Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com" target="_blank">till.kamppeter@gmail.com</a>&gt; wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">

<div>Till Kamppeter wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
3. How the OpenUsability dialog itself has to look like and how it is<br>
 &nbsp; operated.<br>
<br>
 &nbsp; &nbsp;- See Peter Sikking&#39;s blog<br>
 &nbsp; &nbsp; &nbsp;<a href="http://www.mmiworks.net/eng/publications/labels/openPrinting.html" target="_blank">http://www.mmiworks.net/eng/publications/labels/openPrinting.html</a><br>
 &nbsp; &nbsp;- Peter is working with a student on the specs.<br>
<br>
</blockquote>
<br></div>
Peter has started to write down the specs here:<br>
<br>
<a href="http://wiki.openusability.org/printing/index.php/Specification" target="_blank">http://wiki.openusability.org/printing/index.php/Specification</a><br><font color="#888888">
<br>
 &nbsp; Till<br>
<br>
</font></blockquote></div><br>
</div></div></blockquote></div><br>

------=_Part_4071_16898938.1209656647907--
