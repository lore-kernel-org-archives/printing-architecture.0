Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 780CB402D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B26EE40136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=esDaIOInnqed0ckJymkIEEwtPruzGqE9cGn3mSJwAug=;
 b=pn17XO5D6BhiHbNY5w+YI0vS7ZNCWY9WshvcQTW/eJGuKystGES3pJh76LhgTYUCeh
 2pPt4kG3vmYvPrAWOB8wiNnjVPsCOTd9VQRL5w7x+8dD9OvgjOBaCi/vO3WyncIKXIkv
 Jv7TiFJLsEGxGY851k9n2Q2Q299Ud8m2gu27vhGMdWIjYO1axC9fIGDmovEuL8/+p6H2
 OEMc/KGb//NGgttxuZ6V4pVV+ZoCYrG7zKNa4CQdBr7umsBtAQkBl1tnmfciNbCQs6lH
 GsSUGR0mxx+VmSemdzVd75WTAIzFDy2oB7ByFs+Ddl5KeOUK7qcpBmUIMPExx0DcdnXz
 S4Aw==
Message-ID: <69be55b0-2c9d-4bdb-28ab-650516546a58@gmail.com>
Date: Mon, 16 Jan 2023 16:06:48 -0300
MIME-Version: 1.0
Content-Language: en-US
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <CAP-5=fVDc8FBzDJiNHXsuynr0f-5bQcHD0qJHcrbpKkx7Y5arw@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAP-5=fVDc8FBzDJiNHXsuynr0f-5bQcHD0qJHcrbpKkx7Y5arw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Google Summer of Code 2023 - Project
 ideas page for the Linux Foundation online
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ian Rogers <irogers@google.com>
Cc: "Bogdan, Dragos" <Dragos.Bogdan@analog.com>, linux-wireless <linux-wireless@vger.kernel.org>, Gary O'Neall <garysourceauditor@gmail.com>, Mats Wichmann <mats@wichmann.us>, Tobias Hoffmann <smilingthax@googlemail.com>, Aveek Basu <basu.aveek@gmail.com>, Nicholas Mc Guire <der.herr@hofr.at>, Alexey Khoroshilov <khoroshilov@ispras.ru>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, =?UTF-8?Q?Jan-Simon_M=c3=b6ller?= <jsmoeller@linuxfoundation.org>, Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, Vadim Mutilin <mutilin@ispras.ru>, Jeff Licquia <jeff@licquia.org>, Julia Lawall <julia.lawall@lip6.fr>, Deepak Patankar <patankardeepak04@gmail.com>, Rithvik Patibandla <rithvikp98@gmail.com>, Daniel Baluta <daniel.baluta@gmail.com>, "Luis R. Rodriguez" <mcgrof@gmail.com>, Bhavna Kosta <bhavnakosta2020@gmail.com>, Matt Germonprez <germonprez@gmail.com>, dl9pf@gmx.de, Philippe Ombredanne <pombredanne@nexb.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>

On 16/01/2023 14:28, Ian Rogers wrote:
> Hi Till,
> 
> This is great news! Could you clarify the "newcomers in free software"
> a bit. Is it the same as last year? Last year we had somebody working
> in a closed source environment who applied because they had only a few
> years experience and had never sent patches to LKML. We also had
> somebody working for a tech giant but in a managerial role, who wanted
> to work on some open source software. Beside the challenge of trying
> to fit open source work in with a day job, we decided that the
> candidates didn't fit the idea of newcomer and so weren't eligible for
> the GSoC funding. We offered to help them outside of GSoC but none
> accepted that.
> 
> Thanks,
> Ian

"Newcomer" means newcomer in free software coding not newcomer in IT in 
general, so people who have only worked in closed-source before or 
people who were only managing in open-source but not coding are 
eligible. I assume, but do not know, that Googlers will google for free 
software coding activity (e. g. commits in project repositories) to 
determine whether a contributor is eligible.

There is also a rule that one contributor can be GSoC contributor a 
maximum of 2 times, but I do not know whether this is also valid for 
newcomers, as with the first participation you got already free software 
experience and a certain commit history. Perhaps a 1-year experience is 
still tolerated.

So your last year's candidates should be eligible.

    Till
