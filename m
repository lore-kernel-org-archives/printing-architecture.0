Received: from sender-pp-o91.zoho.in (sender-pp-o91.zoho.in [103.117.158.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB911EF38D
	for <printing-architecture@lists.linux.dev>; Wed,  2 Apr 2025 13:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.117.158.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743601767; cv=none; b=Qf+w6OJp6/arEpcCvrlHyJiDOnyvgZwOwy4nOYAnrriTng37v7MU11f3wRmrfttmbBRSacSwodmo/QgfjeCg/q6G4kc4vWUgdqvClXuwTIjdpU7YU5sPKM474wo9ktsxphvP1MVY7YSFqjmaOPGyxX61VIUFz8EkyWtXRPVElM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743601767; c=relaxed/simple;
	bh=L0l38CL2Rer64wQiv77otbBzw26RKWd946h9qhapulY=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:Subject:MIME-Version:
	 Content-Type; b=HQdvi1cT+Smj5QERojHbn+VKJjpwAbk2decHZl49YpbkZ1LI84QK0FkrPc0tWvwS3K8zFUMYlN0j8ogKpACWisgXSAZBNltmbRql81EyZSgjuW6j56SdNelmY+z0lxDttXLeYkGL6ko5M8wN5myvzHcFgIMRFqP6wzVjyz1gTO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.in; spf=pass smtp.mailfrom=zohomail.in; dkim=pass (1024-bit key) header.d=zohomail.in header.i=soumyadeepghosh2004@zohomail.in header.b=Wo8DJ7TZ; arc=none smtp.client-ip=103.117.158.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.in
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.in
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.in header.i=soumyadeepghosh2004@zohomail.in header.b="Wo8DJ7TZ"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743601758;
	s=zoho; d=zohomail.in; i=soumyadeepghosh2004@zohomail.in;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=L0l38CL2Rer64wQiv77otbBzw26RKWd946h9qhapulY=;
	b=Wo8DJ7TZRcFe61moe/F/jhE0SMzukoNxFpRCTHRMGBVvzzQTC9FONnpqaE13Fff4
	QWF1v6zKiocoR6EwasJi8BabteyEpj2tQ6agRB4K0dN4HpYf28imPQldt1PuhF+C4Xu
	LUDs/nfklcULVTQkaEZ5jhmFpYBzBTLQmY/DDWZ0=
Received: from mail.zoho.in by mx.zoho.in
	with SMTP id 1743601757156802.1790073482008; Wed, 2 Apr 2025 19:19:17 +0530 (IST)
Received: from  [103.194.157.201] by mail.zoho.in
	with HTTP;Wed, 2 Apr 2025 19:19:17 +0530 (IST)
Date: Wed, 02 Apr 2025 19:19:17 +0530
From: Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
To: "printing-architecture" <printing-architecture@lists.linux.dev>
Cc: "Till Kamppeter" <till.kamppeter@gmail.com>,
	"Zdohnal" <zdohnal@redhat.com>
Message-ID: <195f6c36bda.7bed295d81707.2073846750099631163@zohomail.in>
In-Reply-To: 
Subject: Migrating PyCups to Python CFFI for libcups 3.x
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail

Hello everyone,=20

This mail is after a long discussion with Till about various different appr=
oaches and possibilities. PyCups for libcups 2.4.x was written in C using t=
he Python's C extensions=20

The problem with that is:

1. Very low scope of automation
2.Very less support from different python communities
3.Only source of support is the original python documentation

With libcups 3.x, I am planning to move to use Python CFFI. With this, ther=
e is also a scope for automating the bindings too. For an example, how this=
 CFFI bindings work, sharing an example here

#include

const char* isPrime(int a){
=C2=A0 int i, flag=3D0;
=C2=A0 for(i=3D2;i
=C2=A0 {=C2=A0=C2=A0 if (a%i=3D=3D0)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (flag=3D1);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (flag=3D0);
=C2=A0 }
=C2=A0 if (flag=3D=3D1)
=C2=A0=C2=A0=C2=A0 return ("Number is Non-prime.");
=C2=A0 else
=C2=A0=C2=A0=C2=A0 return ("Number is Prime.");
}

int main()
{
=C2=A0=C2=A0=C2=A0 int n;
=C2=A0=C2=A0=C2=A0 printf("Enter any number:");
=C2=A0=C2=A0=C2=A0 scanf("%d",&n);
=C2=A0=C2=A0=C2=A0 isPrime(n);
}

This is a C function, and now, we complie this as a shared object and call =
this from python

from cffi import FFI

class DeterminePrime:
=C2=A0=C2=A0=C2=A0 def __init__(self, library_path=3D"../C programme/determ=
ine_prime.so"):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ffi =3D FFI()
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.ffi.cdef("""
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const ch=
ar* isPrime(int);
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 """)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.lib =3D self.ffi.dlopen(lib=
rary_path)

=C2=A0=C2=A0=C2=A0 def check_prime(self, number):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 result =3D self.ffi.string(self.=
lib.isPrime(number))
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return result.decode('utf-8')


As one can see, we just need the signature in many cases, to call the funct=
ion properly. Please let me know what you think about this change.


Thanks and Regards,
Soumyadeep Ghosh


