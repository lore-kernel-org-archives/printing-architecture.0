Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A442404D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BBD940463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4hHHbn4YNNNFf+NQSR0Qr/iUtYbycUA3UHuPXxhhJOk=;
 b=cteKwjcknc3PRtepD7DG2lpqjrw2lUOLERksuLrvaLipwhsYlmMELMshT1HpCIj8Si
 iHm2i4hq6iUAsbyN8hMng3pyZ2uiWxkl6idreSY0GW4Lyd7ecP3F1ZqWU0em6/4oQxqO
 u4kc7kUx4hXu3UNdQriyikqSxRHwoiWJuBLlszlU6Yri+cX9BAX53Y3zAqJDwBvKR+HH
 9eNakG6ECtRbpYOopSUeFHqFlZHk9DD1oVaNuw4KY4VUtMvZwafb5UQyzRj7G3yg+chl
 exSZAjGRbXvA2y8dkHIzcsT5JgTJvVcX2Ax6BhET49DwGZAlUKAXlj4E5e3VQY8WxFRc
 iz+w==
Message-ID: <1ea9f7d3-e1c0-2e7c-64fb-7ce18a5202b7@gmail.com>
Date: Sun, 29 Jan 2023 19:48:36 -0300
MIME-Version: 1.0
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] New issue on GitHub: Bug/Feature/Security
	selection screen
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

now I have activated the functionality of reporting security bugs 
privately on all repositories of OpenPrinting, but unfortunately, in the 
web UI of GitHub it is not intuitive to find the way to the place for 
reporting a security issue privately.

When I am on your private GitHub, usually on PAPPL, and click the "New 
Issue" button on the Issues page, there appears a selection screen, to 
tell whether my report is about a bug, a feature request, or a security 
bug. The normal GitHub interface is that if I click on "New Issue" I am 
immediately in the form for a public issue report. The private one is 
hidden in the "Security" section ...

Other bug trackers, like good old Bugzilla or Launchpad allow you to 
choose between public and private in the bug input form.

How can I add such a selection page to the GitHub repos of OpenPrinting? 
Or could you add this feature?

    Till
