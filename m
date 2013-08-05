Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <52001C3B.8090602@gmail.com>
Date: Mon, 05 Aug 2013 19:35:02 -0400
Message-id: <753CE170-C897-4CB4-A8FC-57DED712DE1C@apple.com>
References: <52001C3B.8090602@gmail.com>
Subject: Re: [Printing-architecture] cups-browsed - What to do if
	client.conf redirects to remote CUPS
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till,

On 2013-08-05, at 5:42 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> What I would like to do is to make cups-browsed always connecting to the local CUPS daemon, ignoring any client.conf setting. Is this easily possible?

Sure, don't use cupsServer() to get the default server and don't use CUPS_HTTP_DEFAULT for any http_t * parameters.

> Or should I better simply on the first failed attempt to add or remove a print queue make cups-browsed shutting down and enter a stand-by loop until the cupsServer() output changes?


The value of cupsServer() is cached for the life of the application.  And while we *do* have a bug tracking a potential change to detect whether the client.conf file(s) have changed, we are also doing our best to move away from static configuration information in order to better function in a mobile world.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

