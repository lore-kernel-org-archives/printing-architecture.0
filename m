Message-ID: <b801b6f40805220730k4c2f035fr27346fb2008bbc0e@mail.gmail.com>
Date: Thu, 22 May 2008 09:30:25 -0500
From: "Alex Wauck" <alex.wauck@gmail.com>
In-Reply-To: <48355362.8010600@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_4085_16522965.1211466625957"
References: <48355362.8010600@gmail.com>
Subject: Re: [Printing-architecture] Common Printing Dialog: News from the
	Ubuntu Developer Summit in Prague
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Celeste Lyn Paul <celeste@kde.org>, Jonathan Riddell <jriddell@ubuntu.com>

------=_Part_4085_16522965.1211466625957
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I applied the patch and uploaded the changes.  The wiki page has been edited
accordingly.

Alex

On Thu, May 22, 2008 at 6:05 AM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> I have been on the Ubuntu Developer Summit (UDS) in Prague now and there I
> have run two discussion sessions about the dialog and I had also some
> discussion outside these sessions.
>
> Especially we are trying to get as many applications as possible using a
> Common Printing Dialog in Ubuntu Intrepid and also to have the
> OpenUsability-designed dialog to be the Common Printing Dialog of Ubuntu
> Intrepid. Feature Freeze for Ubuntu Intrepid is end of August.
>
> The Ubuntu Blueprint is here
>
> https://launchpad.net/distros/ubuntu/+spec/applications-printing
>
> and the blueprint Wiki (editable by everyone) with the minutes of the
> meetings, suggestions, problems, plans, ... is here:
>
> https://wiki.ubuntu.com/PrintingStandardization
>
> Especially please everyone with contacts to desktop application developers,
> tell them that we would like to have this dialog and to help with the needed
> modifications of the applications.
>
> Biggest challenge currently is that several apps modify the standard
> dialogs of KDE and GNOME by defining their own dialog class inheriting the
> library's dialog class so that they can add application-specific options. To
> get the application-specific options in with DBUS-plugged dialog which can
> be of another desktop these apps need to be modified.
>
> We have also tried out Alex'code which he has uploaded to the BZR
> repository. Unfortunately, it does not compile out of the box. Please use
> the patch linked in the Blueprint Wiki to make the code working. Alex, can
> you incorporate the patch? Thanks.
>
>   Till
>

------=_Part_4085_16522965.1211466625957
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I applied the patch and uploaded the changes.&nbsp; The wiki page has been edited accordingly.<br><br>Alex<br><br><div class="gmail_quote">On Thu, May 22, 2008 at 6:05 AM, Till Kamppeter &lt;<a href="mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br>
<blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Hi,<br>
<br>
I have been on the Ubuntu Developer Summit (UDS) in Prague now and there I have run two discussion sessions about the dialog and I had also some discussion outside these sessions.<br>
<br>
Especially we are trying to get as many applications as possible using a Common Printing Dialog in Ubuntu Intrepid and also to have the OpenUsability-designed dialog to be the Common Printing Dialog of Ubuntu Intrepid. Feature Freeze for Ubuntu Intrepid is end of August.<br>

<br>
The Ubuntu Blueprint is here<br>
<br>
<a href="https://launchpad.net/distros/ubuntu/+spec/applications-printing" target="_blank">https://launchpad.net/distros/ubuntu/+spec/applications-printing</a><br>
<br>
and the blueprint Wiki (editable by everyone) with the minutes of the meetings, suggestions, problems, plans, ... is here:<br>
<br>
<a href="https://wiki.ubuntu.com/PrintingStandardization" target="_blank">https://wiki.ubuntu.com/PrintingStandardization</a><br>
<br>
Especially please everyone with contacts to desktop application developers, tell them that we would like to have this dialog and to help with the needed modifications of the applications.<br>
<br>
Biggest challenge currently is that several apps modify the standard dialogs of KDE and GNOME by defining their own dialog class inheriting the library&#39;s dialog class so that they can add application-specific options. To get the application-specific options in with DBUS-plugged dialog which can be of another desktop these apps need to be modified.<br>

<br>
We have also tried out Alex&#39;code which he has uploaded to the BZR repository. Unfortunately, it does not compile out of the box. Please use the patch linked in the Blueprint Wiki to make the code working. Alex, can you incorporate the patch? Thanks.<br>
<font color="#888888">
<br>
 &nbsp; Till<br>
</font></blockquote></div><br>

------=_Part_4085_16522965.1211466625957--
