Received: from sender-pp-o91.zoho.in (sender-pp-o91.zoho.in [103.117.158.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4641CCEC8
	for <printing-architecture@lists.linux.dev>; Fri,  4 Apr 2025 10:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.117.158.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743762573; cv=none; b=R+XvzhBAvHvWp7cxNxxr/kGZsZxJMq4o7y4z0LAVXoQmaSDWegvtFo+dvuR2S2qKq4AYzzvQ3Jm/fuKbki+LJsZIvudAKRNI69H6a1ricFvHJLbjPUE31bYfb2yNyJKUgWGUD9NIrG5AptpWHQmY3lATHjj3OVMkH9mndkhetBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743762573; c=relaxed/simple;
	bh=aQNXulPBpJ8Ft5d+hO4K8Ic8kp4xVyx7r6JpuWg3OqI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MzJ4VF77VRDgQEqXArhZbDeQF8FOLymZtJvwjmpRpYDkJHiEY5XdlE+mXG+zKFiTgC8nt3SCFwiq14ifwQey1QmsmDlzldl8tWr9T4Cujcwl3qSEwhrpzMSqEkCN/wJnOZ7Mb5SdZ0MLt3aOW2IXXPwf2nIMTmI3WYBvcC4BnkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.in; spf=pass smtp.mailfrom=zohomail.in; dkim=pass (1024-bit key) header.d=zohomail.in header.i=soumyadeepghosh2004@zohomail.in header.b=MsnJjXqI; arc=none smtp.client-ip=103.117.158.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.in
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.in
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.in header.i=soumyadeepghosh2004@zohomail.in header.b="MsnJjXqI"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743762561;
	s=zoho; d=zohomail.in; i=soumyadeepghosh2004@zohomail.in;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1WOtIfARkmpapcRAHkC+rgVGxyXdsJxVeWlxESzcQbQ=;
	b=MsnJjXqIYIP+eP308wluDDYHJf3Ww4iu2Vl3FNu+gGse7aNF78LYBW6bA8QNt0Oi
	3OHkEcSbQqeHY4xB/9ri2LPI4Fkbb7TlNBv1yVc6XXDJpAWsgAc3iv1ulMS+nyscNgc
	KAwTUMR3J0S7hcTv67Y/f7iFwqJzHJGzKDgvJHtE=
Received: by mx.zoho.in with SMTPS id 1743762559366192.9267611644077;
	Fri, 4 Apr 2025 15:59:19 +0530 (IST)
Message-ID: <7712dafb-e869-46c2-83d5-382ea686b144@zohomail.in>
Date: Fri, 4 Apr 2025 15:59:18 +0530
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Migrating PyCups to Python CFFI for libcups 3.x
Content-Language: en-US
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 Johannes Meixner <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>,
 printing-architecture <printing-architecture@lists.linux.dev>
References: <195f6c36bda.7bed295d81707.2073846750099631163@zohomail.in>
 <b917b1cb-013a-4fe2-ac4a-c3d4b37f0c00@redhat.com>
From: Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
In-Reply-To: <b917b1cb-013a-4fe2-ac4a-c3d4b37f0c00@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

Hello Zdenek,

I am glad that you like my proposal. Regarding finding the correct path 
of the shared library, I took some inspiration from PyZbar. There is a 
function in the ctypes library named find_library. It looks into the 
standard paths based on which system it is running on. You can find a 
bit of documentation about it here.

https://docs.python.org/3/library/ctypes.html#ctypes.util.find_library

We can use it for finding the correct path of the shared library and 
handle the exceptions accordingly.


Regarding the duplicate email. The first email was in html instead of 
plain-text. This mailing list doesn't allow html email body. But as 
you're in CC also, you got it twice. Sorry for that noise. I'll try to 
continue the discussion in this thread.


Thanks and Regards,

Soumyadeep Ghosh

On 03/04/25 14:22, Zdenek Dohnal wrote:
> Sounds good! cffi is present at least in Centos, so I don't have a 
> dependency issue - I'm not sure about other maintainers (added 
> Johannes and Thorsten I know of).
>
> What we have to make sure (based on the example) that path to .so file 
> is not hardcoded, but configurable during setup.
>
> Thank you for working on this!
>
>
> P.S. I see two mails in the list with almost the same content - is 
> there a difference?
>
> Zdenek
>
> On 4/2/25 15:49, Soumyadeep Ghosh wrote:
>> Hello everyone,
>>
>> This mail is after a long discussion with Till about various 
>> different approaches and possibilities. PyCups for libcups 2.4.x was 
>> written in C using the Python's C extensions
>>
>> The problem with that is:
>>
>> 1. Very low scope of automation
>> 2.Very less support from different python communities
>> 3.Only source of support is the original python documentation
>>
>> With libcups 3.x, I am planning to move to use Python CFFI. With 
>> this, there is also a scope for automating the bindings too. For an 
>> example, how this CFFI bindings work, sharing an example here
>>
>> #include
>>
>> const char* isPrime(int a){
>>    int i, flag=0;
>>    for(i=2;i
>>    {   if (a%i==0)
>>          (flag=1);
>>        else
>>          (flag=0);
>>    }
>>    if (flag==1)
>>      return ("Number is Non-prime.");
>>    else
>>      return ("Number is Prime.");
>> }
>>
>> int main()
>> {
>>      int n;
>>      printf("Enter any number:");
>>      scanf("%d",&n);
>>      isPrime(n);
>> }
>>
>> This is a C function, and now, we complie this as a shared object and 
>> call this from python
>>
>> from cffi import FFI
>>
>> class DeterminePrime:
>>      def __init__(self, library_path="../C 
>> programme/determine_prime.so"):
>>          self.ffi = FFI()
>>                  self.ffi.cdef("""
>>              const char* isPrime(int);
>>          """)
>>                  self.lib = self.ffi.dlopen(library_path)
>>
>>      def check_prime(self, number):
>>          result = self.ffi.string(self.lib.isPrime(number))
>>          return result.decode('utf-8')
>>
>>
>> As one can see, we just need the signature in many cases, to call the 
>> function properly. Please let me know what you think about this change.
>>
>>
>> Thanks and Regards,
>> Soumyadeep Ghosh
>>
>>
