Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=eQAOc6aGw3zJq4lrEegqlBeNf2KmJi+PbJtOQ0LliDQ=;
	b=ht/iafH74VZW2EtdQxQbMiiZaGzzeNrAesmPpW9GeBPEMMVfSFryUJUb/LUulkfRP4
	6N+eDplh6+1XwfY49aKKQgXNw7P6nmW4nl5UI93BlrYzvhBBHoVZ6Fip4IGS5ZWH4jEs
	ggMldD5bAwtRvdyfN8qok6E3kR++Rk8nCOISJEfr5eWm5lHvM9C1Az2iqAoBsvknrU3Y
	uw2POqxqKoUPTy+M+fIs7qm6KqKbMbYoS09Smkncki/ngNG2N1iquba60ey/qqKJRGtf
	/wcrDwFX96cRyP6EEQhqQcHvfyagxPzMxCagWbAPXAPYojFZDvxWqBJGwLwD8XBsDgS5
	n3ew==
References: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
	<7d77ba75-2721-40b1-dc70-26e3ea98fb1d@gmail.com>
	<BC20E3C6-5FC2-4E3C-B943-2A2429A7D149@apple.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <75c175f0-eedd-8db5-6aed-989b08c9715a@gmail.com>
Date: Tue, 3 Oct 2017 14:57:33 -0300
MIME-Version: 1.0
In-Reply-To: <BC20E3C6-5FC2-4E3C-B943-2A2429A7D149@apple.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] OpenPrinting code repositories in GIT
	format
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Abhijeet Dubey <dubey.abhijeet09@gmail.com>, Aveek Basu <aveek.basu@lexmark.com>, Jeff Licquia <licquia@linuxfoundation.org>, Jeff Licquia <jeff@licquia.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Nilanjana Lodh <nilanjanalodh@gmail.com>

Finally decided on setting up the repos on GitHub as Linux Foundation 
admins want to get rid of the BZR repos and suggested to move to GitHub. 
The site for the repos is

https://github.com/OpenPrinting

now.

The print-dialog-related projects, ippusbxd, and Snappy packaging of the 
printing stack are there now, cups-filters, Foomatic, ... will follow soon.

Thank you very much for all your answers.

    Till


On 09/26/2017 05:04 PM, Michael Sweet wrote:
> Till,
> 
> No objections.
> 
> 
>> On Sep 26, 2017, at 4:00 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> Hi,
>>
>> another suggestion is Launchpad (launchpad.net), the service created by Canonical, mainly for Ubuntu, but any other independent project can use it (like for example HPLIP from HP).
>>
>> Launchpad supports so-called project groups to join projects (would be OpenPrinting" in our case). The projects would be the upstream sources: cups-filters, foomatic-db, foomatic-db-engine, ippusbxd, ... and Nilanjana's new projects. As a Launchpad user (and the owner of the OpenPrinting project group) I can create projects and add them to the project group.
>>
>> GIT as VCS is supported. There is also a way that users can suggest branches to get merged into the upstream repo, like GitHub's pull requests.
>>
>> The bug tracker is much more sophisticated, and it supports attaching all kinds of files.
>>
>> There are also many other development helpers: Blueprints, translations, questions, ...
>>
>> For code series, milestones, and releases can be defined.
>>
>> Bugs can get linked with all of this.
>>
>> WDYT about hosting on Launcpad?
