Return-Path: <johnlayt@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=sender:from:to:reply-to:subject:date:message-id:organization
	:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:content-type;
	bh=ZZR8NKmvM1B/4+nJBKks6tTkfPiYBoQGiuC+k7jMClE=;
	b=v9TK8lYQV1b+1gaB74qtWXl52HZ8MYH/K/d5B15ji4CIijf0/dbuBN1QNb7Tpl/uP/
	OJwJvWxDFFTmFapiKTRmyZDY2Kzgmiu2jIh5CQu8h3vwMW2GtZGg7yIekLZf6UY8Wtif
	5PE1Ef3a3JuXczepzWiN0yD4z7+n+I7NBsFTo=
Sender: John Layt <johnlayt@googlemail.com>
From: John Layt <jlayt@kde.org>
Date: Thu, 27 Oct 2011 18:20:24 +0100
Message-ID: <1923986.CutFMD6I4E@argo.layt.net>
In-Reply-To: <201106222349.13063.johnlayt@googlemail.com>
References: <201106222349.13063.johnlayt@googlemail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Printing-architecture] Printing in Qt/KDE
Reply-To: John Layt <jlayt@kde.org>
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

On Wednesday 22 Jun 2011 23:49:12 John Layt wrote:
> You may have heard that Qt have decided the forthcoming Qt 4.8 release will
> be the last in the Qt4 series and will be followed by Qt5, the first
> release under the new OpenGovernance development model.

Hi,

Just as a follow up to this, you may have seen that Nokia has now launched the 
Qt Open Governance project at qt-project.org and if you look closely enough 
you will see I have been appointed maintainer of the QPrinter module.  
Basically it means I am now responsible for the ongoing maintenance of 
QPrinter in Qt 4.8, and have the final say on any new code going into QPrinter 
from Qt 5 onwards.  So if you have any issues with Qt printing, you know who 
to kick :-)

With regards to future plans not much has changed, my time is tied up with 
other stuff for Qt 5.0 so I'm starting with a bug triage for now, with new 
code to come in 5.1 or 5.2.

Cheers!

John.
