From: "Hal V. Engel" <hvengel@gmail.com>
Date: Fri, 25 Feb 2011 20:00:58 -0800
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="Boundary-01=_6rHaNVQG3yYKwWp"
Content-Transfer-Encoding: 7bit
Message-Id: <201102252000.59079.hvengel@gmail.com>
Subject: [Printing-architecture] Qt only CPD.
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Printing-architecture@lists.linux-foundation.org, Lars Uebernickel <larsuebernickel@gmx.de>

--Boundary-01=_6rHaNVQG3yYKwWp
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Till expressed some concerns about how much effort it would take to convert the 
KDE CPD to a pure Qt app.  Just to let eveyone know I have now removed all KDE 
calls from the core CPD code and I have a working Qt only CPD on my system. 

There is still some stuff that needs to be done.   The view-dialog test app 
code still has some KDE widgets (KCmdLineArgs and KAboutData) that I will 
remove tomorrow and the build will need to have kde references removed.   I 
will need to clean everything up as well but it actaully took less effort than 
I had thought to remove the KDE specific widgets from the CPD core code.

Hal    

--Boundary-01=_6rHaNVQG3yYKwWp
Content-Type: text/html;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'DejaVu Sans'; font-size:12pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Till expressed some concerns about how much effort it would take to convert the KDE CPD to a pure Qt app.  Just to let eveyone know I have now removed all KDE calls from the core CPD code and I have a working Qt only CPD on my system. </p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">There is still some stuff that needs to be done.   The view-dialog test app code still has some KDE widgets (KCmdLineArgs and KAboutData) that I will remove tomorrow and the build will need to have kde references removed.   I will need to clean everything up as well but it actaully took less effort than I had thought to remove the KDE specific widgets from the CPD core code.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br /></p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hal    </p></body></html>
--Boundary-01=_6rHaNVQG3yYKwWp--
