From: "Hal V. Engel" <hvengel@astound.net>
Date: Mon, 9 Nov 2009 15:42:42 -0800
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
In-Reply-To: <5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <200911091542.42255.hvengel@astound.net>
Subject: Re: [Printing-architecture] Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

On Monday 09 November 2009 03:14:42 am kate price wrote:
> I am working on the UI design of the CPD and  looking at the controls
> and parameters for colour, both as presets/profiles and as more
> detailed controls. Therefore, I'll need to get a good understanding of
> how this all works.
> 
> Including:
> the workflow from application to printer
> colour profiles
> color management; in applications, and printer colour management.
> what happens where?
> detailed user interaction: what controls need to be there?
> 
> 
> Can someone point me in the right direction? Provide some useful
> information or sources of information?
> 
> Thanks in anticipation,
> 
> 
> Kate

I might be able to help at least with respect to color management.  This is a 
complex area with lots of unresolved issues.  Here is some high level info 
about the current state of things.

Applications:

Currently there are two general types of applications with respect to color 
managed printing.

1. Printing color management dumb applications.  This is the most common type 
of application.  These applications either are completely color management 
dumb (IE. don't know anything about color management and do not use it 
anywhere) or are lacking color management in the printing work flow.  GIMP is 
an example of an app that knows about color management but has no CM support 
in the printing work flow.

2. Apps that are fully color management aware.  This includes apps like 
PhotoPrint, CinePaint and Scribus.  These applications allow users to 
transform the document to the printers color space before it is spooled to the 
printing back end.

CUPS:

Currently CUPS is architected to allow for color management in the server IF 
the *toraster filter being used supports color management.  At present none of 
the open source filters do (unless recent versions of the pdftoraster filter 
have this support now - what is the status of this?).

CUPS server side CM is setup in the PPD file for the printer in the 
*cupsICCProfile settings.   Currently in the PPD files that come with GutenPrint 
these settings are completely wrong and point to profiles that do not exist in 
directories that do not exist on most *nix machines (these appear to be OS/X 
specific IE. "/System/Library/ColorSync/Profiles/sRGB Profile.icc").   In 
addition when I change these and later install a newer version of the driver 
these settings get stomped on (not good - we should be able to do better).

Only admins can change the CUPS settings for the profiles that will be used by 
the server and this can only be done by editing the PPD file.  The only 
application that I am aware of that will display a list of these profiles for 
end users is Kolor Manager which is in the playground area of KDE SVN.  The 
current CUPS web admin app does not display these nor does it have facilities 
for making changes to these settings.

CUPS will only use profiles (logically) installed in the correct location on 
the server.  Typically /usr/share/cups/profiles on linux machines.  This 
location is not compliant with other standards (XDG & OpenICC) regarding where 
files like this should be located.

For more detail see the CUPS PPD documentation.

In an ideal world:

1.  CUPS would have *toraster filters that are CM aware (I think this work is 
underway at least with the pdftoraster filter).

2. Server side CM settings for printers would be persistent across upgrades.

3. The CUPS web admin app would display these settings and allow users with 
the correct privileges to make changes to them.

4. Default printer CM settings in the PPD files would be nominally correct for 
each platform.

5. Applications that are CM dumb would have color management handled in a 
transparent way by CUPS.  This should be the case once #1 and #4 are 
corrected.

6. Applications that are CM aware would be able to disable CUPS server side CM 
and handle CM locally.  This is also needed for printing color management 
targets for creating custom profiles.

7. The CPD has the potential to make all applications printer CM aware.

8. CPD would integrate with system level CM configuration tools like Kolor 
Manager/Oyranos.

The above is mostly high level and may not have been particularly useful.  
There is a lot of complexity and many unresolved issues that may make it 
difficult to implement CM in the CPD at this time.  For example the server side 
CUPS CM facilities are currently not working so that means that the best we 
can hope for at this time is for the CPD to somehow handle doing this before 
spooling the print job.  Later when the CUPS server side CM becomes functional 
changes will need to be made in the CPD to allow users to select either server 
side or local CM.

Does the CPD still use poppler for pdf rendering?  If so recent versions of 
poppler now support CM although this support is limited (you can't set 
rendering intents for example).  If that is the case then it might be possible 
to leverage poppler to make user space printer CM possible.   If you have 
switched to GhostScript then you will need to wait for them to complete their 
CM work that they have underway.

You might also consider asking on the OpenICC email list since I am sure that 
you will get lots of feedback there about how this should work.   Many of 
those that work on printer stuff are also members of the OpenICC list (Till and 
Robert Krawitz for example).  In addition the developers of Oyranos and Kolor 
Manager are members along with most of the other CM people who are doing open 
source work.

Hal
