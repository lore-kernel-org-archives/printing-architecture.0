Message-ID: <481A0307.6040504@gmx.de>
Date: Thu, 01 May 2008 19:51:03 +0200
From: Lars Uebernickel <larsuebernickel@gmx.de>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com>
	<481131B6.5050809@gmail.com>	<4811C5C7.2070803@gmail.com>
	<4812642B.5040406@gmail.com>	<48145E03.6080505@gmail.com>
	<4819E5CC.3040106@gmx.de> <4819F84F.40501@gmail.com>
In-Reply-To: <4819F84F.40501@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Till Kamppeter wrote:
> Lars Uebernickel wrote:
>> Till Kamppeter wrote:
>>>> In this case, storing the configs along with the dialog would be 
>>>> enough,
>>>> as it would be cross-referenced against printer queue and application
>>>> being used.
>>>>
>>>> You are right, perhaps the application would want to store it matching
>>>> against the document being printed. But that could be handled by the
>>>> dialog too, it would just be another field or even a matter of defining
>>>> a format for that domain name I talked about, "app[/doc hash]"..
>>> OpenOffice.org saves printing settings (selected print queue and 
>>> option settings) in its documents. To not require OOo to change the 
>>> feature with the introduction of the Common Printing Dialog we should 
>>> support this in our interface between application and dialog.
>>
>> I see two possibilities for this problem:
>>
>> (1) Applications can enable/disable the saving of the printing options 
>> via the dialog API. This would mean that OpenOffice can keep its own 
>> per document settings and other applications can take advantage of the 
>> dialogs capabilities for that. But, they need to explicitly tell the 
>> dialog to do so.
>>
>> (2) Options are always saved on a per application/document basis by 
>> the dialog. The saved options are applied _before_ any application 
>> settings take place. The application will not be notified. Afterwards, 
>> the application sets its own settings, effectively overwriting the 
>> saved ones. So OpenOffice's per document options would still work, and 
>> all other applications would gain the same feature transparently. It 
>> would also keep the API cleaner.
> 
> Support both possibilities in a switchable way. Let application 
> developers choose between option saving/remembering per
> 
> - Document file (saved in document file)
> - Document (saved in personal config directory of the dialog)
> - Application (saved in personal config directory of the dialog)
> - Globally per user (saved in ~/.cups/lpoptions)
> 
> Only in the first case option settings which are not 
> application-specific have to be reported back to the application.

What I was suggesting with (2), is that there is no need for 
applications to switch between those possibilities at all. Everything 
would be handled transparently.

The dialog would _always_ store all options for the documents and 
applications. Applications like OpenOffice, which save the options in 
the documents themselves, would just overwrite the stored settings, 
because their settings would be applied after the stored ones.

This way, we'd simplify the API, reducing the amount of work for 
application developers. Also, users could choose themselves whether they 
want options stored for applications/documents (IMHO, this shouldn't be 
decided by the applications anyway). They could even set standard 
options for specific applications or specific types of documents (eg. by 
mime type).

     Lars
