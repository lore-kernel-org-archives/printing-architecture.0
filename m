Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=wpyNYChUfF1/djVMCv07MWZsmzB5tQ3x6GtVV4vIIbc=;
 b=KzdlnOuCbXx4brU6j/ujDtdpApMrvha2yHvjKXLQsMlRFLmX380pH+6im6MUv+++0G
 SmtpXaoKZRuD29njYdq6RHbJejUcgJO1fhbUpltpnx+ujhZW5snydrY2+fjSlKiKX1PF
 RW8Cd7duA7DdG6d7L+REdUj8QTwjw52qOz/+uRwK9F8WWuQgOSMij8/QU7nJEKrhDnCy
 AR1YZfbuvHLdhKkiTPhfFAmOBuQ4mwJvD0KnQrUXbLqd+4c7WCXbz3SsZ7n0NQN8Rn+Z
 PH8bV7pH7DFgOtayImM0+g3pZKdPNHR83vvXKrfrT9XA9+Xfx5kxVypYXmqYIazD8wIB
 9qfg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
Date: Tue, 27 Apr 2021 19:46:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Human-readable strings for standard IPP
 options/choices/attributes/propertirs
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

while I was looking through the code of the PPD file generators in CUPS 
and cups-filters for creating CUPS queues for driverless IPP printers I 
wa thinking about where the human-readable strings for the PPD files 
(and also for print dialogs) come from and whether one could also 
generate PPD files translated into non-English languages.

I have also seen that printers supply human-readable strings for options 
and choices via the URL listed in the printer-strings-uri IPP attribute, 
but these strings are only for the options and choices which are not IPP 
or PWG standard.

Seeing this I thought that the wide majority of IPP attributes, options, 
choices, and properties ar IPP/PWG standardized, and so they should 
always be well served by the same human-readable strings, independent of 
operating system, desktop, or other client software being used.

So it would be great to have some central repository for these strings 
for any operating system and application software to use when working 
with IPP printers. Is there something like that? Was susch a thing 
already discussed at the PWG? Or is every OS or application developer 
supposed to "invent" his own, personal set of human-readable strings for 
standard IPP attributes?

    Till
