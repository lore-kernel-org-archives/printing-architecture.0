Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore17; t=1504307142;
	bh=gY5v94i6h7gx2lMi84nHaoICuaDB+YlTOYzY/npNodU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=RT5HoNWTTiaeCPy8dqJyerbZX+p6ikbPhcsWyfbmZhOVepaNnAOKBnC4gMSAM400G
	77eM0SZKFzZupiG+G70aUG+k6t3VAwTNFvaYxx5FtPQYJDiZwSkPzdZrEBSCf/DGFt
	cKJj39gtJ4FtpnkENvbhufWaex4lVxH4dQnwcExXEnUG2eQ/+dNXfJt9E6XGPwNBVy
	xg0A8rEhEd9kXODhXDhTL/okodZGcu15B6eBJjkxGbf/5ehk3UmnoQKQsJSO8/2QpO
	XMswYnKWhnrI6dg9yWaGcproZNfikhcv4/X+lHW0L1ccYsnITH+N8cyn7Nx/4/dVrV
	fweeXz44cj5Vg==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com> (Till
	Kamppeter's message of "Wed, 30 Aug 2017 19:10:26 -0300")
References: <41a1f0b5-ff8b-47ed-c024-698f4b3525d5@gmail.com>
Date: Fri, 01 Sep 2017 19:00:05 -0400
Message-ID: <m3a82ehvnu.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] OpenPrinting code repositories in GIT
	format
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Abhijeet Dubey <dubey.abhijeet09@gmail.com>, Aveek Basu <aveek.basu@lexmark.com>, Jeff Licquia <jeff@licquia.org>, Jeff Licquia <licquia@linuxfoundation.org>, Open Printing <printing-architecture@lists.linux-foundation.org>, Nilanjana Lodh <nilanjanalodh@gmail.com>

I prefr bugzilla, gitolite and cgit.

Gitolite works perfectly well for managing rw access, cgit is fine for
web access to the git tree, and bugzilla is vastly better than github.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
