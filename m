Return-Path: <dottedmag@dottedmag.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dottedmag.net;
 h=from:to:subject:date:message-id:mime-version:content-type; s=
 fm3; bh=3Nu02XqtG5j3PDg9Sr4uwr10GFs9PU5FmJBSGqVz2Pk=; b=Zw5NGk8D
 s0D9iDosS24cmlrveGUegW0qJo64vSoG2CB0KYJZ0bLL/brbeZgSnu15vWoSaAyY
 Eaf7gO4Z8VkX8K4VSHIdUx8wzNkCreu5SJFU50uxET1LJpOfXrCFEM2DPD7xyrCM
 fUkYpmDNMq0kevOrHcITuKyvhvMfXlKq+qARvjncd1mBB5GBm7S8ELWhr/CByJPJ
 hh2ApxufV7IZXsLSAWEloaPXGXd+TvqyzdwSMah73RSh4g9IeSebXJSRCqIFL+WL
 mpUxfqAy1EzRZIC7G8+GwPYE9Up12zsc9IXJolSfrrfi23FuEU1TtBdxZ3E0cLTQ
 VoZMot/HJ8Xtvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=3Nu02XqtG5j3PDg9Sr4uwr10GFs9P
 U5FmJBSGqVz2Pk=; b=b2fjthGX/mCHR0IbMXQP6sLBmwxA+tlrSD4JFWUxAVWMS
 I+ZOPQIs5EziCYVbVofUilOzDShQ2U4JD0KSl6YxGn+GMnlak45fq6i+di7EKl51
 PzKR6D3uuKoPWgiZGirxKxtZe/q0vdIboscA172oWBwzh6z9SAk3sEqX7nvgIDFt
 p9mItsTgOGodh+beZ0CoyP9YNYEeHyFxLG4tlR4AKtW/kibOosnNHTnNMXhhhMuR
 H0teK+Tol+CGeY/5K+quy8RMB2/PzAbyk9X8JiE8DMNUIwEpInsZn3okjjc+Xt3k
 LR0iGIOX18qaQQSR8ig29lo4fqCJWS+nx9SwnI3BQ==
From: "Misha Gusarov" <dottedmag@dottedmag.net>
Date: Sun, 05 Sep 2021 08:33:46 +0200
Message-ID: <D8F97724-8C64-4FC7-A7FA-326B3BF08DD7@dottedmag.net>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
Subject: [Printing-architecture] Right place to put the code: label size
 protocol for Brother QL720NW label printer
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

Hello.

I have reverse-engineered the protocol Brother QL720NW networked label 
printer (and similar)
use to report the size of installed labels reel (it's a custom SNMP 
attribute, heh).

I'd like to add this support to the corresponding driver, however I'm at 
loss
where the corresponding driver is.

Could you please guide me to the proper place?

Best,
Misha.
