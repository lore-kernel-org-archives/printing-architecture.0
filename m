Return-Path: <zdohnal@redhat.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 391A782BC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE05482B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686661922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=KMLGoYVpRltV59e4y9C8VpXJ/UJH57RHmOtDaUpO+HE=;
 b=gQbAwAjVTfYeaaD5CvUj9MSuphKe2hd+ERwS89ydMTJJd9SNfBzBpxbxm6qV+YhJC7OoHc
 hJHGR/R3HOAiIQW7WZgwbw2z/INv+kOqoK/2Gx7GvXC1WuJqnbygbd3RXir9ZpBGEeEPRF
 Q9YWBUzl92vK0gDavVmH4uTrZCwkEzI=
Message-ID: <92f4ad73-3bc7-5362-598c-59d2f3baccf3@redhat.com>
Date: Tue, 13 Jun 2023 15:11:55 +0200
MIME-Version: 1.0
From: Zdenek Dohnal <zdohnal@redhat.com>
Content-Type: multipart/alternative;
 boundary="------------CNq5GujW0O5SH07EXdvlV5H1"
Content-Language: en-US
Subject: [Printing-architecture] CUPS 2.4.5 hotfix is released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.
--------------CNq5GujW0O5SH07EXdvlV5H1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

CUPS 2.4.5 is a hotfix release for a bug which corrupted locally saved 
certificates, which broke secured printing via TLS after the first print 
job.

We're sorry for the inconvenience and enjoy the hotfix!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

--------------CNq5GujW0O5SH07EXdvlV5H1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div data-pjax="true" data-test-selector="body-content"
      data-view-component="true" class="markdown-body my-3">
      <p>Hi all!<br>
      </p>
      <p>CUPS 2.4.5 is a hotfix release for a bug which corrupted
        locally saved certificates, which broke secured printing via TLS
        after the first print job.</p>
      <p>We're sorry for the inconvenience and enjoy the hotfix!</p>
      <p><br>
      </p>
      <p>Zdenek<br>
      </p>
    </div>
    <p></p>
    <pre class="moz-signature" cols="72">-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC</pre>
  </body>
</html>

--------------CNq5GujW0O5SH07EXdvlV5H1--

