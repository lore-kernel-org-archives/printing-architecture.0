Return-Path: <konstantin@linuxfoundation.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B73160F34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3389160A7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1702940541;
 bh=3MMLBDBRdINi8ffa1IqCI8uDAfXuuG9VL3kaMJnOiFU=;
 h=Date:From:To:Subject:From;
 b=SRnzIPX9qG53D61Z8zWXwc4XpyRZ1p+8enP02HDvMJR0Mk8mGw0vMZVAJKUCAKGne
 X3t8+4jQ+2kWD8O2Rp8LLsBTzDLEEB6aGeBHyU9gFqPMEr0ViUxYiOXbJnySRs4avI
 PiFCFGCi8CQAbb3qELdSwLVeE68T9IMWbrPj9I6c=
Date: Mon, 18 Dec 2023 18:02:20 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <20231218-khaki-adder-from-eldorado-aa4f1a@lemur>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [Printing-architecture] PSA: this list is moving to lists.linux.dev
	(no action required)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linuxfoundation.org


Hello, all:

The mailman-2 system running on lists.linuxfoundation.org is being
decommissioned, so all lists currently hosted there will be found new homes.

This Thursday, December 21, at 11AM PST (19:00 UTC), this list will be migrated
to live on lists.linux.dev, but the impact of this move should be minor:

1. The new canonical list address will be printing-architecture@lists.linux.dev.

2. *The old address will continue to work* for the foreseeable future, so any
   existing conversations can continue and any new messages sent to the old
   list address will be properly delivered to all subscribers.

3. All members will be automatically subscribed to the new list, so no action
   is required on anyone's part to keep receiving list mail.

4. The list will be archived on https://lore.kernel.org/printing-architecture/
   with all prior archives automatically imported.

5. The List-ID header will change, regardless to which address the message is
   sent:

   before: List-Id: <printing-architecture.lists.linuxfoundation.org>
    after: List-Id: <printing-architecture.lists.linux.dev>

   You will need to update your filtering rules if you filter based on the
   contents of that header (on or after the migration date).

6. The mailman footer will no longer be added to message bodies and the
   subject will no longer be modified to insert [Printing-architecture]
   (because this violates DMARC).

7. Subscribing and unsubscribing will be done using the mlmmj supported
   commands, documented at https://subspace.kernel.org/subscribing.html

Please let me know if you have any questions or concerns. I will follow up
on Thursday after the migration has been completed.

Best regards,
-K
