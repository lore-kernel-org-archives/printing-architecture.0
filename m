Date: Mon, 01 Mar 2004 09:28:34 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Message-Id: <20040301092027.B400.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Bi-di Plug-in API draft document
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org, printing-japan@freestandards.org

Hi,

I've uploaded the Bi-di Plug-in API draft document at:
http://www2s.biglobe.ne.jp/~papadon/OpenPrinting/BidiPluginAPI/

You can download the latest document from the above location,
and it's a first draft version fully translated in English.

I think, we need more clarifications in the near future version's
docutment for:

- The standard "idRequest" value for the bidiCtrl() function.
  (Currently, no standard idRequest is defined.)
- Sample bi-di implementation under CUPS.
- Mapping some of the printer status data to IPP attributes.
- PPD keywords related to Bi-di Plug-in modules.
- Guidelines for saving the printer status data as a local file.

Comments are welcome.
Regards,

-----------------------------------------
TORATANI Yasumasa
Computer Technology Development Dept. 12
CANON INC. Shimomaruko Office, Japan


