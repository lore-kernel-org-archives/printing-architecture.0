Return-Path: <code@funwithsoftware.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CC3E427C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 418B4427C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 funwithsoftware.org; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1684362464; x=1684448864; bh=SK
 pVO1ZGNaM8Mc/aIfgvyaF3kB8x8FHBnplbKCkZ4kM=; b=LKI2KKzN86qL61B2qu
 U1sPXdouFQES8z3RAzv+WPsgEavpFp58tBzJBnvC0eBBy/XnSHUklRSN14qzX6hI
 Uf/YqzXU9t/NRK7vnZgtM6FuEOkQI0ecqyi22kBFCiP0OgZ8MWC3OaRF4lVPS1c2
 QTgZCbePjnXQYhpY30mDl84iSPKcgF/uM1n+BLBZ3Lvdg9edo2uL+cC0JUgz3RwG
 BE41usx8C9ghE3+G+/fLKEOLkU+QDh6O63uwgFjKT59bUwI1mWNsFQTv28RJ0D56
 QSl99zaCk1hHF1TV8ADqYC0OGkDFuvRUmLPgfDrWCs5EhvFoQ07L3kkZ8Ul8RqGM
 Jyfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1684362464; x=1684448864; bh=SKpVO1ZGNaM8Mc/aIfgvyaF3kB8x8FHBnpl
 bKCkZ4kM=; b=Sn9upoFbdVLK6sdg3WKPvPuDyq7XjXSR2Y4JzSDig5VIMSH3VI6
 FFFcCvq1bGTBN7XnyyStzNULEi7zDjUnZjFU8zyjZleEG87FOHylEJszZ4GrjXAf
 QU/IYA5El2baUd/PVXybiPzVmDFtIFTvSl0MslpJxJR10UcWnhh7i2RNojv1rz4t
 KkMNXe47Em3sETivnjok14ILy0v8+VaGs1NUGig+zHURzO6HfLb1tQXx7R5OHE+5
 fsUi+RRofLNqF/QE9zZS/PQPt0VKVaTg5yC57avRpcCgIiSG1N61TFReXFBq8Fy4
 932oGHsYCUoUzOPS0kUP74Co9ddEY5ZMHqg==
Message-ID: <9bdf27a0-7775-ced7-4c6e-7f45cc2a1a0b@funwithsoftware.org>
Date: Wed, 17 May 2023 15:27:42 -0700
MIME-Version: 1.0
Content-Language: en-US
References: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
 <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
 <10fdb59a-1410-8fd1-aa5d-fd048c8cc6cf@funwithsoftware.org>
 <604876BD-9FBF-489C-B1C5-15675BEF188D@msweet.org>
From: Mignon Pelletier <code@funwithsoftware.org>
In-Reply-To: <604876BD-9FBF-489C-B1C5-15675BEF188D@msweet.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] names of paper sizes
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

On 5/17/23 2:59 PM, Michael Sweet wrote:
> It might help to know what version of CUPS and what OS/Linux distribution you are using?

Oh, yes, sorry.  I'm on Ubuntu 20.04.6 LTS, which has CUPS 2.3.1.

--Mignon

