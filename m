Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=UUrJF9SPJzURydhIHS19sJQPnphkHxBjNy8LakukPVk=;
 b=JbImcx98zIOILsMv8CXc7ez58Mmw1eD+seDedzdNpEdeDq/8ELlK0KvQPadgTQQPat
 a4/mDxrXS2Ju+kBa7nC7DC7HpdcsTLqtJY8i1UvYM3N5lGDo68q+byURdl+l5wJLDmn/
 gRDSRqeY/14pFXCd3mAv/P+TveBkypI6DXxfPL4gzRZ0fkau1YMBUXq4ulHlj3lNGDTR
 mD0VEoNivfxSmvEdX3dvoV1jdtB9APvXar+hWptkB9ZWVEx5WciHZbt+bb1N/+g/4cVI
 QGF1wJF3AFAjvuUAppExAZQVGr9h+PpO+JjQrK106jISCOesfy2M0rEW9JQ/UJF9XIL6
 gIjg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <8b1744e2-7bff-c84d-90f9-71b727a2babe@gmail.com>
Date: Sun, 16 Feb 2020 21:37:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.27.1 released!
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

Bug fix release: All filters support zero-page jobs now, option and 
choice names in PPDs are changed to work around a bug in CUPS when 
generating IPP attributes, cups-browsed creates queues for all emote IPP 
printers by default, and several smaller fixes in the filters

Here we go:

https://openprinting.github.io/cups-filters-1.27.1-released/

    Till
