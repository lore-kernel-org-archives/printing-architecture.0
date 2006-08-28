Return-Path: <spillner@kde.org>
From: Josef Spillner <spillner@kde.org>
Date: Mon, 28 Aug 2006 11:58:27 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200608281158.32769.spillner@kde.org>
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printer dialog generation
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

Hello,

a few weeks ago I talked to some people about the possibility of having print 
dialogs generated from a formal schema and some GUI generation hints.
[I hope this is the correct list for such topics.]

I'm involved with research in this area, particularly in ad-hoc usage of web 
services, but most of the concepts apply to any schema-based GUI generation. 
A schema in the world of printing would be a data model which includes 
choices about the paper size, printer capabilities and document-specific 
options.

Creating type-safe dialogs which represent the schema are not an issue, there 
are proven concepts and we have work in progress code for KDE, for example. 
However, creating GUIs which follow HCI standards and are at least basically 
usable is a challenge. Layouting algorithms in particular are not well 
explored yet and almost always need human correction.

As someone not coming from the world of printers, I find PPD files slightly 
weird, to put it mildly. They contain both information about printers and 
interaction code akin to an embedded programming language. However, they seem 
to contain all the necessary information needed for user configuration, 
especially multi-language strings.

Now there are a few questions to those who could help:
* What are the issues with current print dialogs that could or should be 
solved with GUI generation?
* Are there other printer description formats I should have a look at?
* Is there any work being done in this area already?

Josef

