Message-ID: <116DB56CD7DED511BC7800508B2CA53735CF73@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Tue, 8 Apr 2003 11:25:23 -0700 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] RE: string abbreviations
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
To: 'Mark Hamzy' <hamzy@us.ibm.com>, "'printing-architecture@freestandards.org'" <printing-architecture@freestandards.org>

Hi folks,

Of course the note below went right into the 'wait for Moderator
action' bucket, because I'm not subscribed to 'printing-driver'.
So I tried to subscribe.  But I can't because the FSG Mailman
Web page won't even show me the name of that list except as
an administrator.

Help?

Cheers,
- Ira McDonald
  High North Inc


-----Original Message-----
From: McDonald, Ira 
Sent: Sunday, April 06, 2003 6:39 PM
To: 'Mark Hamzy'; printing-driver@freestandards.org
Subject: RE: string abbreviations


Hi Mark,

Yes, your language tags are OK, in so far as they go.  In order to
correctly render MANY languages (even in hardcopy, much less in
text-to-speech rendering), it is necessary to qualify language tags
with a country code (e.g., 'en-US') or a dialect variant code (e.g., 
'no-nynorsk' for Norwegian or 'en-cockney' for English).  Each 
sub-element may be up to 8 characters.

The authoritative reference for syntax and content of language tags 
is RFC 3166 "Tags for the Identification of Languages" (January 2001)
which has IETF status of "Best Current Practice" (binding requirements 
on all Internet-based protocols).  IETF IPP, PWG PSI, IETF HTTP, and 
many other modern protocols send VARIABLE length string language tags 
in RFC 3166 format.  IANA has a registry for ones not currently covered 
by the ISO language (ISO 3166) and country code (ISO 639) registries.

Note that language tag comparison must be case insensitive.  For
consistency of user display, IPP requires that language tags be
normalized to lowercase.

Cheers,
- Ira McDonald
  High North Inc


-----Original Message-----
From: Mark Hamzy [mailto:hamzy@us.ibm.com]
Sent: Wednesday, April 02, 2003 5:28 PM
To: imcdonald@sharplabs.com
Subject: string abbreviations






Ira,

Here are the abbreviations I was considering for the languages (if you
ignore LANGUAGE_ of course):

http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/omniprint/Omni/StringResource
.hpp?rev=1.9&content-type=text/vnd.viewcvs-markup

Is that correct?

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/

