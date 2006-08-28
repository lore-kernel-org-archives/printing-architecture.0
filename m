Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44F2C465.1080907@gmail.com>
Date: Mon, 28 Aug 2006 12:24:37 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200608281158.32769.spillner@kde.org>
In-Reply-To: <200608281158.32769.spillner@kde.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Printer dialog generation
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Josef Spillner <spillner@kde.org>, "printing-summit@lists.freestanda" <printing-summit@lists.freestandards.org>
Cc: printing-architecture@lists.freestandards.org

The printing dialog is one of the main subjects of the upcoming FSG
OpenPrinting Summit in Lexington, KY, which I am organizing together
with the Free Standards Group:

http://www.freestandards.org/en/OpenPrinting/SummitLexington

There is already work in progress about printing dialogs and usability
at OpenUsability.org. This work started on the OSDL Printing Summit in
Atlanta, which I organized together with the OSDL in April this year.

The subject will be continued on the upcoming Summit:

http://www.freestandards.org/en/OpenPrinting/SummitLexington#Printing_Dialog

So I recommend to discuss this on the printing-summit mailing list (I
have cross-posted it to there now), and also on the Summit itself.
Josef, you are also invited to attend the Summit, to meet the printing
and desktop developers and also the OpenUsability team.

   Till


Josef Spillner wrote:
> Hello,
> 
> a few weeks ago I talked to some people about the possibility of having print 
> dialogs generated from a formal schema and some GUI generation hints.
> [I hope this is the correct list for such topics.]
> 
> I'm involved with research in this area, particularly in ad-hoc usage of web 
> services, but most of the concepts apply to any schema-based GUI generation. 
> A schema in the world of printing would be a data model which includes 
> choices about the paper size, printer capabilities and document-specific 
> options.
> 
> Creating type-safe dialogs which represent the schema are not an issue, there 
> are proven concepts and we have work in progress code for KDE, for example. 
> However, creating GUIs which follow HCI standards and are at least basically 
> usable is a challenge. Layouting algorithms in particular are not well 
> explored yet and almost always need human correction.
> 
> As someone not coming from the world of printers, I find PPD files slightly 
> weird, to put it mildly. They contain both information about printers and 
> interaction code akin to an embedded programming language. However, they seem 
> to contain all the necessary information needed for user configuration, 
> especially multi-language strings.
> 
> Now there are a few questions to those who could help:
> * What are the issues with current print dialogs that could or should be 
> solved with GUI generation?
> * Are there other printer description formats I should have a look at?
> * Is there any work being done in this area already?
> 
> Josef
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.freestandards.org
> http://lists.freestandards.org/mailman/listinfo/printing-architecture
> 

