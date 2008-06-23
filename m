Message-ID: <485F6319.8060101@fujixerox.co.jp>
Date: Mon, 23 Jun 2008 17:47:21 +0900
From: Osamu MIHARA <osamu.mihara@fujixerox.co.jp>
MIME-Version: 1.0
References: <001b01c8d263$64a884a0$9e72150a@nsl.ad.nec.co.jp>	<485B44C5.4000509@gmail.com>
	<485B5347.3090408@fujixerox.co.jp>
	<485B71CB.9090209@fujixerox.co.jp>
In-Reply-To: <485B71CB.9090209@fujixerox.co.jp>
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-japan] OpenPrinting Japan
	June Meeting Minutes
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
Cc: printing-japan@lists.linux-foundation.org

Here is the second (last) part of the quick translation of the last
OPWP-J meeting minutes.

(4) CPD Specification Review
----------------------------
Following documents (as of 6/19/2008) are reviewed.  Due to the limited
time, we only review these 2 documents.  May needs to review in deep in
July again.

OpenPrinting/CommonPrintingDialogRequirements
<http://www.linuxfoundation.org/en/OpenPrinting/CommonPrintingDialogRequirements>

OpenPrinting/PPDExtensions
<http://www.linuxfoundation.org/en/OpenPrinting/PPDExtensions>


==== Overall (Terminology) ====
  In order to avoid confusion, keyword must/should/may should be in
capital case (MUST/SHOULD/MAY)

==== Requirements ====
- Open Icon
  Icon format should be defined (PNG or SVG are discussed in ML)

- Preview
  We need to consider what kind of information should be shown in the
preview window.

- Mutiple Print Dialogs
  The document states one print dialog can be shown per one application
(or process).  It is sometimes inconvenient for users.  Some members
have opinion that one dialog for a opened document is preferable.

- Access method to PPD
  The dialog should access PPD file via CUPS API.  It shouldn't handle
th PPD directly to avoid access conflict, configuration problem, etc.

- Option Change Notification
  Some members pointed out that applications/dialogs should be notified
when PPD is updated or printer configuration is updated.

- Document Size

  What does the "Size" mean?  File size, or document dimension?
  Which of dialog or application submit the document into the print
queue?  Is it preferable that the dialog submit the data, because it
does not require application to be largely modified.

  Anyway, the print data flow should be defined clearly.


- Option Hints

  May need concrete example.

- Option Saving

  Options saved by CPD and application may be different.

  It is difficult to save option settings for dialogs not depending on
application or document data.

  Applications can save option settings with document data.

  It is really needed to save option settings INDEPENDENT from app?

- General

  Shouldn't the changes in printer-specific setting need to notify to apps?

  With current idea, it takes too much time for a dialog shown up after
clicking print button, because an app needs to generates PDF to do it.

  Multilingual should be supported in CPD in early stage.  CPD should
refer locale to switch format of units or dates.

  Need provide library file which is needed by apps.

==== PPD Extensions ====
- Quick Presets
  The definition should be in formal matter such as BNF.

  Need more explanation for each items, in special a) in Quick Presets
(no one can understand relationship of a) and b)).

  Need detail explanation for Lecacy case

- Option Tagging
  Is it a MUST item?  What happens for a PPD without tagging?

- Icons for options and chises
  Icons should be switched based on language settings.



(5) Others
Opvp drivers cannot execute in SELinux environment.
 - dlopen causes error
 - driver vendors should provide policy, but it is difficult because the
policy spec is not stable.
 - SUSE Linux uses another mechanism (AppArmor) ... need confirmation.
 - Continue investigation.


// Osamu Mihara

