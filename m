Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=7wWGmeWKN7tPt0K1sydsVj+SPYPVhIJtLja4sM/MkpA=;
 b=pWJJbCG6CTv1qFfwZe29CKGpPklSTgBnZ32fjU+W3BmZhGT5DuOyvtT2QPQ67LnUCI
 XFofGtstbRAU3dDY3h5brYPjM5BW60Z+ce2UX4OqEzB28829390FAdYgKPaJz22VNHg7
 mFGyFy8GhnyzMGWulAANai5+IA1cdZPZydrI2q6xMwszUM2Tw3pxsx33Lc7ZWLWe/tY8
 7AOC7PiVpx+LmRpJjnYIG4QLUbDM9iMGE8Ab0G5XlXGe8XJv1P++Jirg7aXDc13ujdHy
 BCbfRrL0b+GamgJfUrBOnNht2M14f0SM7ty76Fz1SHzM+FzaTgirXFUjhFmzpJJMZdHf
 8s2w==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <31cfe5fa-07d0-ffd0-bc58-1ecded292a52@gmail.com>
Date: Sun, 26 Jan 2020 19:09:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.27.0 released!
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

in this release cups-browsed does not need to know the port number of the CUPS 
daemon it is attached to any more when it connects via domain socket and many 
additional filters support zero-page jobs now.

Here we go:

https://openprinting.github.io/cups-filters-1.27.0-released/

    Till
