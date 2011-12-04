Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-forwarded-message-id:content-type
	:content-transfer-encoding;
	bh=PrdIcALtzm5SPSxYLUIQ8LQl4FWYeGAVa8c3ZLCjmXU=;
	b=MxtmFgvvxIZwzCWS/l1ChgvEO1nJSKtgD1FONU+kp1hpUU0hHbU/rjikGtIUxADK6t
	O9ptNtFbmuqcH2YJ+SKsVTTghY9IchYwiAmwtmvueL3sgSb4LomIHafUitFFJpDuJbGp
	N7CSg8sZtgalLUV3j5kjtuMEda/I7jcs89QDw=
Message-ID: <4EDB49CD.9050908@gmail.com>
Date: Sun, 04 Dec 2011 11:22:05 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4EDAE1F5.1030804@linuxfoundation.org>
In-Reply-To: <4EDAE1F5.1030804@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] bzr.linuxfoundation.org is live
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <larsuebernickel@gmx.de>, David Williams <dwilliams@ricohsv.com>, "Chitpadi, Raghavendra" <raghavendra.chitpadi@hp.com>, "Hsu, Ray" <ray.hsu@eitc.epson.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Daniel Dressler <danieru.dressler@gmail.com>, Didier Raboud <odyx@debian.org>, Yuji Saito <yuji.saito@avasys.jp>
Cc: Jeff Licquia <jeff@licquia.org>

Hi,

the BZR repositories of the Linux Foundation, including the ones of 
OpenPrinting are back live and commit access is possible, too.

Browser and read-only access works the same way as before with the same 
URLs including

http://bzr.openprinting.org/

For commit access the method has changed. See the instructions below and 
contact Jeff Licquia (CCed) in case of questions.

    Till

-------- Original Message --------
Subject: bzr.linuxfoundation.org is live
Date: Sat, 03 Dec 2011 21:59:01 -0500
From: Jeff Licquia <licquia@linuxfoundation.org>
To: lsb-discuss@lists.linux-foundation.org,  Till Kamppeter 
<till.kamppeter@gmail.com>, Janina Sajka <janina@a11y.org>, 
pete@a11ysoft.com
CC: Eric Searcy <eric@linuxfoundation.org>,  Mike Woster 
<mwoster@linuxfoundation.org>

We've made bzr.linuxfoundation.org live.  Although there are likely to
be details that still need to be worked out, none of those details
should affect our ability to continue development on projects.

Access to bzr projects is divided roughly into three types: the
unofficial branches, commit/push access to project branches, and
read-only and browseable access.  We'll take those in reverse order.

Read-Only and Browser Access
----------------------------

This is pretty much exactly the same as it was before.  Point a browser
at bzr.linuxfoundation.org, and you get the loggerhead browser interface.

Once you find the path to a repository, you can branch/checkout
read-only over HTTP, with a command-line something like this:

bzr checkout http://bzr.linuxfoundation.org/lsb/devel/fhs-spec

See the bzr documentation for how to work with a read-only checkout, how
to create a local branch, etc.

Commit/Push Access
------------------

This is very different from before.  PQM is gone, as is SSH access.
Instead, read-write access is enabled via a new HTTPS interface.

When you want to make changes for pushing upstream, start with a
checkout of the branch over HTTPS, like so:

bzr checkout https+urllib://bzr.linuxfoundation.org/lsb/devel/fhs-spec

The "+urllib" part is important; bzr can use curl for Web access if it's
available, but the curl client does not work for authentication.  The
"+urllib" part tells bzr to never use curl.

You will be asked for your username and password.  This is the same
username and password you use to access other Linux Foundation services.

Access control is basically the same as it was before; if you had commit
access to a branch before, you should have it now with the new system,
using the same username as before.

NOTE: Because of the security breach, all passwords have been locked. If
you haven't logged into the Linux Foundation sites since the breach, you
will need to reset your password.  You can do that here:

https://admin.linuxfoundation.org/changepassword/

It is possible to encode the username into the checkout URL, to save a
step.  Use a URL like this:

https+urllib://username@bzr.linuxfoundation.org/...

It is also possible to encode the password into the URL, but PLEASE
DON'T DO THAT!  There is a more secure facility for remembering the
password.  Type "bzr help authentication" to learn about using
authentication.conf to store passwords.

Finally, if you have a checkout or branch from before the breach, and
you'd like to continue to use it without checking it out from scratch,
see the bzr documentation for the "bzr switch" command.  That can point
an old branch or checkout to a new location.

Unofficial Repositories
-----------------------

We used to make the "/unofficial" namespace available for the hosting of
personal or special-purpose branches.  This was possible for anyone with
SSH access.

Since SSH access is no longer available, these branches have become
read-only.  They are still available, but users with unofficial branches
should make sure to back those up, as they will go away at some point in
the future.

We're still trying to figure out a decent substitute for the unofficial
tree.  If you used this facility, your feedback is welcome.

Other Issues
------------

  - No plugins, extensions, special configuration, or whatever has been
installed other than the minimum to get the above working.  If you used
some special feature (say, email to a special list for every commit),
please let me know.

  - Creation of new repositories and branches will, for now, require a
sysadmin.  Let me know if/when you need this.  If this becomes a burden,
we may look into ways to enable branch creation without sysadmin access.

  - Loggerhead currently prints the wrong URL for its header ("To get
this branch, use:").  I'm still working on that.

  - As with any new service, I may have got some part wrong.  Let me know
right away if you experience trouble that isn't mentioned above.

-- 
Jeff Licquia
The Linux Foundation
+1 (317) 915-7441
licquia@linuxfoundation.org

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

