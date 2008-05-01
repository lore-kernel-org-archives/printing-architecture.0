Message-ID: <4819F84F.40501@gmail.com>
Date: Thu, 01 May 2008 19:05:19 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com>
	<481131B6.5050809@gmail.com>	<4811C5C7.2070803@gmail.com>
	<4812642B.5040406@gmail.com>	<48145E03.6080505@gmail.com>
	<4819E5CC.3040106@gmx.de>
In-Reply-To: <4819E5CC.3040106@gmx.de>
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
To: Lars Uebernickel <larsuebernickel@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org

Lars Uebernickel wrote:
> Till Kamppeter wrote:
>>> In this case, storing the configs along with the dialog would be enough,
>>> as it would be cross-referenced against printer queue and application
>>> being used.
>>>
>>> You are right, perhaps the application would want to store it matching
>>> against the document being printed. But that could be handled by the
>>> dialog too, it would just be another field or even a matter of defining
>>> a format for that domain name I talked about, "app[/doc hash]"..
>> OpenOffice.org saves printing settings (selected print queue and option 
>> settings) in its documents. To not require OOo to change the feature 
>> with the introduction of the Common Printing Dialog we should support 
>> this in our interface between application and dialog.
> 
> I see two possibilities for this problem:
> 
> (1) Applications can enable/disable the saving of the printing options 
> via the dialog API. This would mean that OpenOffice can keep its own per 
> document settings and other applications can take advantage of the 
> dialogs capabilities for that. But, they need to explicitly tell the 
> dialog to do so.
> 
> (2) Options are always saved on a per application/document basis by the 
> dialog. The saved options are applied _before_ any application settings 
> take place. The application will not be notified. Afterwards, the 
> application sets its own settings, effectively overwriting the saved 
> ones. So OpenOffice's per document options would still work, and all 
> other applications would gain the same feature transparently. It would 
> also keep the API cleaner.

Support both possibilities in a switchable way. Let application 
developers choose between option saving/remembering per

- Document file (saved in document file)
- Document (saved in personal config directory of the dialog)
- Application (saved in personal config directory of the dialog)
- Globally per user (saved in ~/.cups/lpoptions)

Only in the first case option settings which are not 
application-specific have to be reported back to the application.

    Till
