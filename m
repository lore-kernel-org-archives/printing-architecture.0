Return-Path: <jpopelka@redhat.com>
Message-ID: <51EFA853.8030501@redhat.com>
Date: Wed, 24 Jul 2013 12:11:31 +0200
From: Jiri Popelka <jpopelka@redhat.com>
MIME-Version: 1.0
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
	<AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
	<51EEBF83.2090006@gmail.com>
	<14E6A268-7B57-4F95-9384-647E0A8D3C47@apple.com>
	<51EECDF8.9070209@gmail.com>
	<000AC9EF-2754-4A7D-805B-4832B50EB57A@apple.com>
	<51EEECD8.4030002@gmail.com>
In-Reply-To: <51EEECD8.4030002@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] printers.conf frequently gets truncated
 to zero length after unclean shutdowns
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Steve Bergman <sbergman27@gmail.com>, Eric Sandeen <sandeen@redhat.com>

As I mentioned in the initial mail, I've had a patch
https://bugzilla.redhat.com/attachment.cgi?id=776945
which makes cupsdOpenConfFile() read filename.O in case filename is 
truncated to zero.
Previously the filename.O was read only if filename had not existed.
Wouldn't that be an alternative ?

--
Jiri

On 07/23/2013 10:51 PM, Till Kamppeter wrote:
> As a measure of automatic recovery one could perhaps let the startup
> script of CUPS check whether printers.conf is zero length and if so,
> copy printers.conf.O to printers.conf.

