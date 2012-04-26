Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
Date: Thu, 26 Apr 2012 08:09:51 -0700
Message-id: <D221590B-CE27-44C4-AC6B-D0F62C066A4E@apple.com>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
	<CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
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
To: Richard Hughes <hughsient@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Tim Waugh <cyberelk11@gmail.com>

Richard,

The only addition to the current infrastructure that I'd recommend is to create CUPS printer instances when a profile is created that contain the settings used for that profile.

For example, if a user/admin installs a profile for Acme Ultrasmooth Fine Art paper, create/replace a corresponding instance (and probably give the user a chance to rename this) called "Acme_Ultrasmooth_Fine_Art_Paper" that can be selected in the print dialog to effectively choose this profile and the corresponding settings.

I don't know if the current GTK+/GNOME print dialog exposes instances, but it would make sense to do so along with any PPD-defined presets - we've had this in OS X's print dialog for a very long time and it eliminates a lot of button pushing for the user for common usage...


On Apr 26, 2012, at 12:11 AM, Richard Hughes wrote:

> On 26 April 2012 07:06, Kai-Uwe Behrmann <ku.b@gmx.de> wrote:
>> the slides from last years colord presentation answere the question,
>> which profile will be selected inside CUPS server this way:
> 
> I hope Tim doesn't mind if I answer this one.
> 
>> "Mapping the device to the profile: Preferences are per-user" [1]
> 
> The http://www.freedesktop.org/software/colord/specifics.html page is
> a good reference to how it all really works behind the scenes.
> 
> Basically, colord is a system service. This means it can only access
> profiles in the system context. It stores system configuration in a
> sqlite database, also in the system context. What it does also allow
> is session clients (like gnome-settings-daemon or colord-kde) to
> register devices and profiles from the user (session) context with the
> system daemon using DBus. The session passes a file descriptor, so
> that the user profile can be used in the system context. A filename
> would not work due to the basic UNIX permission model and the fact
> that the files in the users home directory are different security
> contexts to files in /usr.
> 
> So, yes, you can have a file in the users home directory that is used
> by CUPS, on the assumption the user is logged in and the home
> directory is thus accessible. This isn't great for shared user
> workstations, so colord provides a privileged (controlled by a
> PolicyKit authentication) method InstallSystemWide[1] which writes the
> mapped FD to an actual file in /var/lib/colord/icc which makes the
> profile available to all users regardless if the original user is
> logged in or not. The file is identical to the file sent as a fd over
> DBus, and so has the same profile-id. This means that any existing
> mappings continue to work as system profiles are always preferred to
> identical user-profiles.
> 
> One thing we're also doing is encoding the MAPPING_format and
> MAPPING_qualifier [2] into the actual profile metadata at calibration
> time which is used if there is no apriori override from the client
> which sets up database entries in colord. This allows us to have a
> user experience quite a lot how Mike Sweet described yesterday where
> you only have one moving piece rather than two. This has the advantage
> that we *show* the user what profile what would be used for the given
> set of printer options, and don't allow the user to manually select a
> profile to use. Of course, advanced users can just set an output
> profile in the print-ready pdf itself, which means that the
> colord-provided printer system output profile is not used at all. This
> ensures that advanced color-geek users can set whatever exact profile
> they like and for people that don't care anything about how color
> management works (the 99.9999%), it "just works". Note, in the GKT GUI
> we only show the profile title[3], and don't allow a specific ICC
> output profile filename to be chosen. It's expected that apps that
> care (basically Scribus, perhaps Krita/GIMP) will add a custom print
> setup page and add the entry there.
> 
> If you've got any more questions about colord, I'd ask that you join
> the colord-users mailing list where other people can answer questions
> as well as Tim and I. Thanks,
> 
> Richard.
> 
> [1] https://gitorious.org/colord/master/blobs/master/src/org.freedesktop.ColorManager.Profile.xml#line203
> [2] https://gitorious.org/colord/master/blobs/master/doc/metadata-spec.txt#line41
> [3] http://people.freedesktop.org/~hughsient/temp/Screenshot-Print-1.png
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

