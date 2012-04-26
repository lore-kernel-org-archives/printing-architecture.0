Return-Path: <hughsient@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=t76PoA21nDKD+kufP5iTl9HNaJE3Em1dl9qMBet07UE=;
	b=qg1ZN+F+XQD8JkYmgbD7YiX2lomk7rDY/crgRlYgmf3EbEimI8fIecLbKeDpmDRsrs
	8+KTqEHashDx/IzYuYP/ZbX4XjI9m5A664/bIbr3Dy1tUmP6iGfumHuGuAJuMHj765PY
	YcJYh+LLThAtTVnq7BZU2dITDzsrVgrHH10MKDr6iIaIHhr2cXMf2x9NPRTM/ZtVLDJi
	n8ZSTqTSahxh+Ot453rW+GO2tnWkChP2LAVq7NsLkkUd/ey0omh/L/M/PHUgl/ZeJbVS
	XIvahaD6akxVtAkoxqtsUgVgl53sv94/M20XatF4cj6GvrVkyC1YFgQ3QkyLIqp3nClA
	mxIg==
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1204260704580.8774@siras.rasena>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
Date: Thu, 26 Apr 2012 08:11:19 +0100
Message-ID: <CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
From: Richard Hughes <hughsient@gmail.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Printing-architecture] colord profile per-user in CUPS server
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Tim Waugh <cyberelk11@gmail.com>

On 26 April 2012 07:06, Kai-Uwe Behrmann <ku.b@gmx.de> wrote:
> the slides from last years colord presentation answere the question,
> which profile will be selected inside CUPS server this way:

I hope Tim doesn't mind if I answer this one.

> "Mapping the device to the profile: Preferences are per-user" [1]

The http://www.freedesktop.org/software/colord/specifics.html page is
a good reference to how it all really works behind the scenes.

Basically, colord is a system service. This means it can only access
profiles in the system context. It stores system configuration in a
sqlite database, also in the system context. What it does also allow
is session clients (like gnome-settings-daemon or colord-kde) to
register devices and profiles from the user (session) context with the
system daemon using DBus. The session passes a file descriptor, so
that the user profile can be used in the system context. A filename
would not work due to the basic UNIX permission model and the fact
that the files in the users home directory are different security
contexts to files in /usr.

So, yes, you can have a file in the users home directory that is used
by CUPS, on the assumption the user is logged in and the home
directory is thus accessible. This isn't great for shared user
workstations, so colord provides a privileged (controlled by a
PolicyKit authentication) method InstallSystemWide[1] which writes the
mapped FD to an actual file in /var/lib/colord/icc which makes the
profile available to all users regardless if the original user is
logged in or not. The file is identical to the file sent as a fd over
DBus, and so has the same profile-id. This means that any existing
mappings continue to work as system profiles are always preferred to
identical user-profiles.

One thing we're also doing is encoding the MAPPING_format and
MAPPING_qualifier [2] into the actual profile metadata at calibration
time which is used if there is no apriori override from the client
which sets up database entries in colord. This allows us to have a
user experience quite a lot how Mike Sweet described yesterday where
you only have one moving piece rather than two. This has the advantage
that we *show* the user what profile what would be used for the given
set of printer options, and don't allow the user to manually select a
profile to use. Of course, advanced users can just set an output
profile in the print-ready pdf itself, which means that the
colord-provided printer system output profile is not used at all. This
ensures that advanced color-geek users can set whatever exact profile
they like and for people that don't care anything about how color
management works (the 99.9999%), it "just works". Note, in the GKT GUI
we only show the profile title[3], and don't allow a specific ICC
output profile filename to be chosen. It's expected that apps that
care (basically Scribus, perhaps Krita/GIMP) will add a custom print
setup page and add the entry there.

If you've got any more questions about colord, I'd ask that you join
the colord-users mailing list where other people can answer questions
as well as Tim and I. Thanks,

Richard.

[1] https://gitorious.org/colord/master/blobs/master/src/org.freedesktop.ColorManager.Profile.xml#line203
[2] https://gitorious.org/colord/master/blobs/master/doc/metadata-spec.txt#line41
[3] http://people.freedesktop.org/~hughsient/temp/Screenshot-Print-1.png
