Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=9JfNeVHxORaEQaBoXG8YWPUScWN9IwvkynVp/XmpHMo=;
 b=BGhUkDgZSVCkPkxzW9Z7AXEHUnSscAO6zoCK8O+bIykqXxXDGWUQMCrqEXOdSHnb+5
 RAtlP1xlCuq6WuDREiOVLCLCu0ugVQflSQwxri3qI9DjsdJlX3m6/dG7AUp0z7zI7NDr
 11qigu0PfrO9Ohdm6dZodC1RYzbUZuhtsCjjzLJk5wUBteXvn3C3ztdsby9I/WQ8+nOK
 acPR7p6EgIsNVVsdc4eYCTSPX7XVVct+eMkaXT36/7Zjv46m/ikuGvUfL0Fj3RV+6vZl
 bpaBqZ3MlzykvMKGaYzyYOOud9PkrB5hr0acZ/NU+L7o40xLSInbUncu5AvWMUIX1AZ3
 yudQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <054489f2-ffea-0872-d422-5126a727ef3c@gmail.com>
Date: Fri, 5 Jun 2020 16:29:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.27.5 released!
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

Several fixes/improvements on cups-browsed, to correctly determine the 
CUPS server to attach to, to correctly create queues pointing to a 
second local CUPS instance, and to not remove the locally created queues 
on shutdown. Also included several bug fixes from contributors

Here we go:

https://openprinting.github.io/cups-filters-1.27.5-released/

    Till
