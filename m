Message-Id: <BB29EDDD-6842-4FCF-A55E-C379E111701B@mmiworks.net>
From: peter sikking <peter@mmiworks.net>
In-Reply-To: <4A6DFCAB.1050503@gmail.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v935.3)
Date: Fri, 31 Jul 2009 17:58:45 +0200
References: <4A6DFCAB.1050503@gmail.com>
Subject: Re: [Printing-architecture] Clarifications about the Presets
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till wrote:

> I had a phone call with Peter Sikking and asked him about tyhe exact  
> behavior of the presets. They should work as follows:
>
> If the user chooses a preset, all options are set to CUPS system  
> defaults and the options defined by the preset in the PPD are set as  
> defined in the preset. The dialog has to add a preset with the menu  
> entry "Default Settings" which sets everything to the CUPS system  
> defaults.

"Default Settings" being a 'working title' of course, exact default  
labelling needs a bit of careful thought from our side.

> This preset gets pre-selected when the dialog comes up for the first  
> time.
>
> This preset would be equivalent to
>
> *APPrinterPreset Default/Default Settings: ""
>
> in the PPD file (not defining any option settings, we only set the  
> options to the CUPS defaults). So the "Default Settings" preset  
> should only get added if there is no preset with empty option list.  
> This way a manufacturer could customize the UI string by adding this  
> to the PPD:
>
> *APPrinterPreset CanonDefaults/Canon's Defaults: ""
>
> If a user changes options on the right hand side of the level 3  
> dialog, the Preset Zone should change its layout from
>
>          +------------------------------+-+
> Presets:  |Web page                      |v|
>          +------------------------------+-+
>
> (http://wiki.openusability.org/printing/images/thumb/300px-Level2.png)
>
> to
>
>                                 +-------+-+
> Current Settings:  Save...       |Presets|v|
>                   -------       +-------+-+
>
> (http://wiki.openusability.org/printing/images/Level3_extended.png)
>
>
> In the first case, the drop-down menu contains "Default Settings" as  
> first item (if there is no empty preset in the PPD) and all presets  
> defined in the PPD (or defined by a fallback if the PPD has no  
> presets).
>
> In the second case the drop-down contains "Presets" as the first  
> entry and this is pre-selected.

Presets is a non-selectable label of the menu itself (so not an item).
as I said on the phone, we still have to look into the form of the
pop-up itself, if more advanced layouts bring more value. the fact
that we have this non-selectable "Presets" is a good reason to look
beyond a plain menu.

> The following entries are the same as in the first case. The  
> "Save ..." link allows to save the current settings. Saved settings  
> are added as new presets to the presets drop-down.
>
> In the second case selecting a Preset leads to the Preset Zone  
> returning to the first case.
>
> Note that with a preset selected no "Save..." is needed, as the  
> Preset puts all options to well-defined values and one can always  
> return to this state by selecting the preset.
>
> If the user selects a preset which he has defined (saved settings),  
> I would suggest that then a little icon to delete this preset  
> appears (a trash can or so). preferably in the preset zone. Peter,  
> what do you suggest?

the pop-up with the presets will contain further commands to manage
the presets (delete, rename) and to share presets (import/export,
upload to linuxprinting.org, download from linuxprinting.org).
this is a second reason to look at an advanced layout, beyond
a plain menu.

     --ps

         founder + principal interaction architect
             man + machine interface works

         http://mmiworks.net/blog : on interaction architecture



