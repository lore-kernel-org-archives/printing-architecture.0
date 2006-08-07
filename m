Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D761CD.9000806@gmail.com>
Date: Mon, 07 Aug 2006 17:52:45 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <1B47D24854C7BC4FA8DA28BEBB59B0BA4176AE@orsmsx419.amr.corp.intel.com>
In-Reply-To: <1B47D24854C7BC4FA8DA28BEBB59B0BA4176AE@orsmsx419.amr.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [lsb-discuss] Agreement on directory
	structure for printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "Bastian, Waldo" <waldo.bastian@intel.com>
Cc: lsb-discuss <lsb-discuss@freestandards.org>, printing-architecture <printing-architecture@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

Thank you for this, i have not seen that Wendy suggested something
completely different for /usr/local/. What I mean is this:

---------------------------------------------------------------------
3. Files created, downloaded, or modified by a system administrator.

         a. Installation path for PPD files
                 /usr/local/share/ppd/<supplier>/<manufacturer>

         b. Installation path for print drivers
                 /usr/local/lib/printdriver/<supplier>
---------------------------------------------------------------------

This way it is the very same structure as in /usr/ and/opt/.

   Till

Bastian, Waldo wrote:
> Given these directories:
> 	/usr/share/ppd/<supplier>/<manufacturer>/
> 	/usr/lib/printdriver/<supplier>
> Is there any particular reason for using 
> 	/usr/local/print/ppd/<supplier>/<manufacturer>
> 	/usr/local/print/driver/<supplier>
> Instead of
> 	/usr/local/share/ppd/<supplier>/<manufacturer>
> 	/usr/local/lib/printdriver/<supplier>
> ??

