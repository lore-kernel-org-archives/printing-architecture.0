Return-Path: <m.weghorn@posteo.de>
References: <56F6A4D2.8080801@posteo.de>
	<CAD2FfiHCxH7W3VfcvFt3o=9iO4Bu2PEjqKmhcJt3FNkj4JRfrA@mail.gmail.com>
	<CAM1DM6nYKfkH0TvePysc5zu35WVrwZ3xO8EruQOw0RpFGgKe1Q@mail.gmail.com>
From: Michael Weghorn <m.weghorn@posteo.de>
Message-ID: <56F6D29E.3090603@posteo.de>
Date: Sat, 26 Mar 2016 19:19:10 +0100
MIME-Version: 1.0
In-Reply-To: <CAM1DM6nYKfkH0TvePysc5zu35WVrwZ3xO8EruQOw0RpFGgKe1Q@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Status and future of the Common
 Printing Dialog (CPD)
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

Thank you for your quick replies.

If neither GTK+ nor Qt are planning to support the CPD, this does not
sound like it had a very bright future.

Maybe it might be a good idea to add some note about the current status
in the CPD section on the website so that other people looking at it can
quickly get an idea of it.

Are there possibly other plans/ideas to provide a more consistent user
experience in printing dialogs across various applications?
The current situation with so many different printing dialogs (e.g. GTK,
KDE, LibreOffice, Java, several applications having their one one's,
...) that look differently and have a different set of features does not
seem optimal to me.

Also, from a developer's point of view it is non-optimal when adding a
new feature or fixing a bug potentially requires making that change
several times in totally different code bases (I only know LibreOffice,
Qt 4 and GTK)...

Best regards,
Michael

On 2016-03-26 18:01, John Layt wrote:
> On 26 March 2016 at 15:42, Richard Hughes <hughsient@gmail.com> wrote:
>> On 26 March 2016 at 15:03, Michael Weghorn <m.weghorn@posteo.de> wrote:
>>> Could somebody possibly say something about the current status of the
>>> Common Printing Dialog?
>>
>> Last time I spoke to the GTK maintainers and the GNOME Design team
>> there was a total lack of support for the project.
>>
>> Richard
> 
> While the usual Qt policy is to use the host platform facilities where
> available, Qt has no interest in using CPD either, at least not in the
> architecture proposed. There were too many implementation issues and
> no funding for the required cross-platform architectural changes that
> Qt would have required.
> 
> John.
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 
