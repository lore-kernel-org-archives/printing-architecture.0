Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=UfvwiGD25ssH8hmammQI+7w6HhOjzh0NflcL+ofSvOI=;
 b=fgPOipVSt4hN8ESMMBPoK3Xfg3GAGjGw2mls+mepquqxR3QO4AeWgKRtXBkYfZ6YFv
 C48O+ViuLKU6/3Ov6kdtzN8HxLXPgjLQZGLtne6WPqK+IROtpRFaXmWjYauw1C0I6QBD
 g25TfHeen/QZ4wgDvj/UBcQp3jzbfp7942TBYFWAyOqh+EHgdFxeykj4oNp/6C2XtTHL
 GQ4yzjsIStdVqo6Zi6eMp8HU3J/age8csV4EGJJU9rxli4gdQhg+U/g1qHlm8tPv1Rgm
 RRcZraGbwmqEpcpRkHqBryJollJ9o0js0qAuBZwI035Q8T0QlxgQ6aXFqIiORx8Z3DeV
 SUEw==
Message-ID: <23e78f69-e63c-2c73-0aab-01be3ecf2d45@gmail.com>
Date: Sat, 7 May 2022 21:16:20 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
 <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
 <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
 <2613b8ae-3d3f-ed8d-dd9a-8e241976388a@gmail.com>
 <002EC5D2-B6B8-4D82-AD42-D84AABFD6D13@msweet.org>
 <7934897f-b69a-8503-96c4-3123296b1ab4@gmail.com>
 <D7AA9F09-06C6-4F57-9235-5120FE715C8A@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <D7AA9F09-06C6-4F57-9235-5120FE715C8A@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

On 07/05/2022 21:04, Michael Sweet wrote:
> Till,
> 
>> On May 7, 2022, at 12:07 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> OK, we will offer both options. It is not our responsibility when the distros accept including Ghostscript, letting the printing stack use Ghostscript, and then use the distro for cloud services (and up to now no one complains about it). I hope it is at least no AGPL violation to use Ghostscript on a regular real-iron computer due to its closed-source BIOS.
> 
> Like I said, the AGPL is not specific enough to exclude this... :/

By all distros including Ghostscript and having it used by their 
printing stack and no one complaining we can assume they have no problem 
with that, but for outside the distro world I will continue to support 
Poppler. Ghostscript delivering high print quality in distros is a good 
advertising for them. CUPS 3.x should also support the two, GHostscript 
to make distros happy, and Poppler for correct commercial use.

    Till
