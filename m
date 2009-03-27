Message-ID: <49CCEBEB.7070208@gmail.com>
Date: Fri, 27 Mar 2009 11:08:27 -0400
From: Svilen Kanev <mighty.frost@gmail.com>
MIME-Version: 1.0
References: <49CC84E5.8030604@gmail.com> <1238145837.5930.37.camel@chimera>
	<49CCA000.2020908@gmail.com>
In-Reply-To: <49CCA000.2020908@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] GSoC 09: Modifying applications to use
 the new printing dialog
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
Cc: printing-architecture@lists.linux-foundation.org

Till Kamppeter wrote:
> Lars Uebernickel wrote:
>> I am currently working on getting support for the dialog into GTK/Qt
>> themselves. This means that applications might be able to use it right
>> away. I hope this will be the preferred way for applications to use the
>> dialog (via their toolkit, not an external dependency).
>>
>> However, many applications (e.g. GIMP, Firefox) provide custom widgets
>> for the dialog, which set application specific options (e.g. the
>> "options" Tab in Firefox). Naturally, this doesn't work over D-Bus ...
>> Therefore, we have a way for applications to send option specifications
>> (such as the name, type, default value of the option) over the bus to
>> the common printing dialog. So they would have to be modified in such a
>> way that they do not make use of the 'custom widget' feature anymore and
>> send their options another way.
>>
>> Hence, these applications can all continue to use the GTK dialog API
>> (which might be a bit extended). This reduces the amount of work done
>> per application substantially.
This really makes more sense than patching each application from 
scratch. Just out of curiosity, how ready are these changes to the 
toolkits and how can I eventually use the modified versions?
>> IIRC, evince does not have any extra options, so it can continue using
>> the GTK API. But a similar simple project for you to start on could be
>> gedit. It too uses the GTK printing API, but it enhances it with custom
>> options such as printing syntax highlighting and enabling line numbers.
>>
Note taken, I'll start from something like gedit that's simple, but not 
entirely trivial. It just occurred to me that this is the case also with 
Gnome's default image viewer (EoG) - so this may also be an option.
> Another potential reason for needing to patch applications is the live 
> preview. The dialog could request a new preview from the app if 
> certain option settings are changed. It should also request the 
> preview only for selected pages to save resources on big documents.
>
>>> - Open Office uses its own printing dialog that looks much like the 
>>> Windows one. In fact, most of the printing settings are hidden under 
>>> another dialog, called "Printing Options". Both dialogs are supposed 
>>> to be platform-independent, i.e. there is only one implementation 
>>> for all environments. The actual code mixes GUI and data members in 
>>> one class per dialog. All this means it will be harder to use the 
>>> new dialog without breaking the platform independence and would 
>>> require some restructuring of the current code. A possible approach 
>>> would be to abstract away the different implementations that will be 
>>> created with interfaces and choose an implementation based on the 
>>> target platform (or for example, based on whether cpdapi is running).
>>
>> Yes, OO.o will probably be the hardest to patch. I would definitely not
>> start with it, but as Till already said, it has a high priority.
>>
>
> The Red Hat/Fedora packages of OpenOffice.org have patches to use the 
> GTK printing dialog. Perhaps one could base the changes on these 
> patches, or the patches show at least ehre changes in OOo are needed 
> to replace the printing dialog.
>
Thanks for that info. I'll definitely take a look at these packages.
