Message-Id: <99D9E6F4-E23E-4FB5-8FF9-6B0AFD94FE2B@hp.com>
From: Donald Welch <donald.welch@hp.com>
In-Reply-To: <f96d234e0810030811l5ae160a9m9f5997b29e194c38@mail.gmail.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v929.2)
Date: Fri, 3 Oct 2008 08:29:55 -0700
References: <f96d234e0810030811l5ae160a9m9f5997b29e194c38@mail.gmail.com>
Subject: Re: [Printing-architecture] printing in embedded systems
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Cliff Brake <cliff.brake@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, David Suffield <david.suffield@hp.com>, Raghothama Cauligi S <raghothama.cauligi@hp.com>

For printing to an HP printer: http://hplipopensource.com/hplip-web/index.html

Specifically, the hpijs solution (a subset of hplip), provides a  
printing driver for ~1,500 HP printers.


-Don



On Oct 3, 2008, at 8:11 AM, Cliff Brake wrote:

> Hello,
>
> I am working on an industrial terminal that contains a PXA270 ARM CPU
> running Linux.  What is the recommended architecture for printing to a
> USB printer in this case?  We probably won't need spooling.  We will
> likely be printing from cairo, unless there is a better way to create
> reports from a GTK application.  Appreciate any ideas.
>
> Thanks,
> Cliff
>
> --
> =======================
> Cliff Brake
> http://bec-systems.com
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

