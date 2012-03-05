Return-Path: <martyj19@comcast.net>
Message-ID: <4F5527CB.9000101@comcast.net>
Date: Mon, 05 Mar 2012 15:53:31 -0500
From: Marty Jack <martyj19@comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Heads up on Poppler development release
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

I see it is a perfect time to bring up something Poppler related.

The development release 0.19.0 has changed the interface to the error() function and replaced setErrorFunction with another setup interface in such a way that cups-filters no longer builds against it.
