Message-ID: <4819E5CC.3040106@gmx.de>
Date: Thu, 01 May 2008 17:46:20 +0200
From: Lars Uebernickel <larsuebernickel@gmx.de>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com> <481131B6.5050809@gmail.com>
	<4811C5C7.2070803@gmail.com> <4812642B.5040406@gmail.com>
	<48145E03.6080505@gmail.com>
In-Reply-To: <48145E03.6080505@gmail.com>
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
> Marcelo Ricardo Leitner wrote:
>> Ok, I've no idea how each app converts its data to the print job, but is
>> that really possible? I mean, rendering page 3 on a browser wouldn't
>> require pages 1 and 2 be rendered first? Again, no idea here, but the
>> idea sounds interesting if possible.
>>
> 
> Such applications will have to rerender the whole document, but many 
> other do not, like OpenOffice.org, Scribus, photo management software, 
> ... This is no big problem, as wep pages are not so long and also not 
> very complex to render, whereas a document in OOo can have several 
> hundred pages, many fonts, vector-drawn pictures, ...
> 
>>
>> In this case, storing the configs along with the dialog would be enough,
>> as it would be cross-referenced against printer queue and application
>> being used.
>>
>> You are right, perhaps the application would want to store it matching
>> against the document being printed. But that could be handled by the
>> dialog too, it would just be another field or even a matter of defining
>> a format for that domain name I talked about, "app[/doc hash]"..
> 
> OpenOffice.org saves printing settings (selected print queue and option 
> settings) in its documents. To not require OOo to change the feature 
> with the introduction of the Common Printing Dialog we should support 
> this in our interface between application and dialog.

I see two possibilities for this problem:

(1) Applications can enable/disable the saving of the printing options 
via the dialog API. This would mean that OpenOffice can keep its own per 
document settings and other applications can take advantage of the 
dialogs capabilities for that. But, they need to explicitly tell the 
dialog to do so.

(2) Options are always saved on a per application/document basis by the 
dialog. The saved options are applied _before_ any application settings 
take place. The application will not be notified. Afterwards, the 
application sets its own settings, effectively overwriting the saved 
ones. So OpenOffice's per document options would still work, and all 
other applications would gain the same feature transparently. It would 
also keep the API cleaner.

