Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:from:subject:to
 :content-language:content-transfer-encoding;
 bh=kW8uv4+M9YUN07NfLwepeo6P4pAIxNnmEJEqCPrBIRI=;
 b=jIJEqfexSks2veVR3dBD5koj3udbNqSq/i1Xlt/SRWG6bUxPi6/0DdBLuycnW2CVc4
 Gj8tru2bnwC32UXQVfYxJj/WLjvHqM2GgKNZVdkfpx2SU2OjzrkzHuUQLZlgMoZfxRsv
 jdo7jTKZ/jRWR//qYy0LYnRIrThaAq5UwXxbToFXNT+cT2c70P3bNQkwJE942Hv78R2i
 HIfyIKrCjmNq53TZLlFyZEvUAx5y/gcyDPpaEeKQWpF1JsvWnKFohKYjXgV0jL6sZg14
 NhygVv0swR+Ngm+7dAg8LO8Ofb9xG6SA1cLSqOXZkZNirM1F6Hx+hx8COuuQmovEYb+r
 mIrw==
Message-ID: <e60b9d04-f38d-66cf-a48e-0a4f331877df@gmail.com>
Date: Thu, 17 Feb 2022 20:21:27 +0100
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] cups-filters 1.28.12 released!
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

I have done another cups-filters release now!

Bug fix release, containing backports of many of the bugs recently fixed 
during the preparation of the cups-filters 2.x release. This time many 
page geometry bugs in the pdftopdf and imageto… filters were fixed 
especially with print-scaling and number-up, but also bugs in 
cups-browsed and in the serial backend got fixed.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.12

    Till
