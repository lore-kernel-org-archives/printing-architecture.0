Return-Path: <till.kamppeter@gmail.com>
Message-ID: <44D0D1FC.5050604@gmail.com>
Date: Wed, 02 Aug 2006 18:25:32 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <789E617C880666438EDEE30C2A3E8D10EEA3@mailsrvnt05.enet.sharplabs.com>
In-Reply-To: <789E617C880666438EDEE30C2A3E8D10EEA3@mailsrvnt05.enet.sharplabs.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Proposed filesystem layout for print
 ppd and driver files
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: "McDonald, Ira" <imcdonald@sharplabs.com>
Cc: mats.d.wichmann@intel.com, wendyp@jurassic.eng.sun.com, rusty@samba.org, printing-architecture <printing-architecture@freestandards.org>, Wendy Phillips <wendy.phillips@sun.com>

McDonald, Ira wrote:
> Hi Till,
> 
> I mostly agree with this set of directory paths - thanks for
> writing up the summary.
> 
> I think that full FHS compliance is important - partly because
> it's a requirement for inclusion in LSB - and partly because
> I dislike "reinventing the wheel".
> 
> Except that I do NOT agree that the symlinks should be
> mandatory - if a print software vendor wants to store
> directly and ONLY in '/opt/share/ppd/<supplier>/<mfg>',
> that is sufficient and _preferable_ to the creation of
> more '/opt/<supplier>' directories for a useless level
> of indirection.

Does the FHS allow files other than symlinks in subdirectories of
/opt/share/ and /opt/lib?

   Till

