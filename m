Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1372025301;
	bh=UxGdGWU7af7aHX69216UQI7tPyiEnecKlIU6TZA23Hc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=MQfrCQlyjK49trp3qdgGCVR94c2G/JoE8guITnO37B1FyPW+bdC6XNENlhfW2PTjY
	RtFtKe5BiXeMhF+OON3rsdSHI47LVCEnGoKokfN0Z1R22DcgbPji47+DoBO1vSTWRV
	/NmSkhvscXs6/rfU0K2PJU2FcUSyx7HuVq1bmbyF4ow==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <CA+3RNfgknnPTaWNPHr2NLFgK9_3Jwv9KKVazutHfvQPiFTRFug@mail.gmail.com>
	(Alex Korobkin's message of "Thu, 20 Jun 2013 10:45:29 -0400")
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
	<m3txktzpf2.fsf@carbon.jhcloos.org>
	<CA+3RNfgknnPTaWNPHr2NLFgK9_3Jwv9KKVazutHfvQPiFTRFug@mail.gmail.com>
Date: Sun, 23 Jun 2013 18:05:52 -0400
Message-ID: <m3y5a0v5wm.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
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

>>>>> "AK" == Alex Korobkin <korobkin+op@gmail.com> writes:

AK> Just for the record, calling pdftops with -level2 is hardcoded into
AK> cups-filters

Till fixed that with revno 7069.

Now it checks for manufacturer =~ /^(HP)|(Hewlett-Packard)$/ and nickname eq 'laserjet'
before forcing level2.

Thanks Till.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
