Message-ID: <3EA989C0.4000400@easysw.com>
Date: Fri, 25 Apr 2003 15:17:20 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <116DB56CD7DED511BC7800508B2CA53735CF9E@mailsrvnt02.enet.sharplabs.com>
In-Reply-To: <116DB56CD7DED511BC7800508B2CA53735CF9E@mailsrvnt02.enet.sharplabs.com>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: IPP> FW: Summary of PWG Document Object issues
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: "'Hastings, Tom N'" <hastings@cp10.es.xerox.com>, printing-architecture@freestandards.org, "'ipp@pwg.org'" <ipp@pwg.org>

McDonald, Ira wrote:
> Hi Tom,
> 
> I disagree entirely with your reasoning below.
> 
> The main purpose of PSI is print-by-reference.  If Send-URI
> remains OPTIONAL (and therefore rarely implemented and not
> interoperable) in IPP, then gateways based on FSG PAPI/1.0 
> interfaces between PSI and IPP transports will fail (unless
> the gateway fetches the referenced document, which introduces
> a different set of security issues).
> 
> This isn't a percentage kind of thing.  The most important
> operation in PSI is AddDocumentByReference.  All of the mobile
> scenarios depend on it.  Mobile devices _cannot_ fetch local
> copies of large documents, in order to use AddDocumentByValue.

Well, if mobile devices cannot fetch large documents (to display
them), then printing them is a bit useless, right?  Better to just
provide web-enabled applications for wireless devices to access
when they need to handle large documents.

The only operational scenario that I see where this would make *any*
sense is when viewing a large PDF file that has been linearized
("optimized") for the web, and even then you cannot have a proxy
between the client and server or none of the byte serving (which
allows a light-weight client to view the PDF file in pieces) will
work anyways.

I have yet to be convinced that print-by-reference is anything other
than a "gee wiz" feature.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Printing Software for UNIX                       http://www.easysw.com




