Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=beAw/Pod6aaUvmkzAJtTJTi+6CjNDwIRij9NUK+AjjE=;
 b=Qx04Z16NfqLps0s/5RLSCZlQuhS6J+P2UruliebAM/vazOXzWlp5Fh0lAU7N3m8Mbg
 GEFUWDT8mnm10ldKVn7OoRfZs/nRcEcqM25a7dwO4z6+1ccCdCfFBFWwF25KK5dGdV5N
 WbR5qGCLJRPop7PFUId6l8zhEIe9ev06IaNEdrpEB5ydlho/1S4VM7RU1kHBmzbkWkzR
 PI7+0HS3O6YrYuK1CWx+4z6jm0eKmgQgySv+65bn/Ib9TE5hRogvnD6oCddTIkzkuV2E
 857I/3QKHYoaSQnqrBMirHqBU86sR5zDK9u+ZxAaHsJpxEgscJPrXhb/1cZi3YV/5bKY
 G1ig==
Message-ID: <099283be-d7a2-c81e-258a-3c90e89ab3ef@gmail.com>
Date: Sun, 15 May 2022 23:47:55 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <04994e7b-3400-0c73-9b6c-be63587775df@gmail.com>
 <7A3378E6-E927-483A-9CD6-7780226A2EF2@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <7A3378E6-E927-483A-9CD6-7780226A2EF2@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
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

SNMP:
----------
$ testsuite/testpappl --get-id snmp://HP5B78A3

MFG:HP;MDL:HP OfficeJet Pro 8730;

$ testsuite/testpappl --get-status snmp://HP5B78A3

none

$ testsuite/testpappl --get-supplies snmp://HP5B78A3

                       cyan ink HP N9H71A: 54% (ink, cyan)

                    magenta ink HP N9H75A: 58% (ink, magenta)

                     yellow ink HP N9H79A: 60% (ink, yellow)

                      black ink HP N9H83A: 79% (ink, black)

$
----------

DNS-SD:
----------
$ testsuite/testpappl --get-id 
dnssd://HP%5C032OfficeJet%5C032Pro%5C0328730%5C032%5C0915B78A3%5C093._pdl-datastream._tcp.local/

MFG:HP;MDL:HP OfficeJet Pro 8730;

$ testsuite/testpappl --get-status 
dnssd://HP%5C032OfficeJet%5C032Pro%5C0328730%5C032%5C0915B78A3%5C093._pdl-datastream._tcp.local/

none

$ testsuite/testpappl --get-supplies 
dnssd://HP%5C032OfficeJet%5C032Pro%5C0328730%5C032%5C0915B78A3%5C093._pdl-datastream._tcp.local/

                       cyan ink HP N9H71A: 54% (ink, cyan)

                    magenta ink HP N9H75A: 58% (ink, magenta)

                     yellow ink HP N9H79A: 60% (ink, yellow)

                      black ink HP N9H83A: 79% (ink, black)

$
----------

The answers with the SNMP URI take some seconds, with the DNS-SD URI 
they are instantaneous.

    Till


On 15/05/2022 23:22, Michael Sweet wrote:
> Till,
> 
> Try the dnssd and snmp URIs with these commands and post the results.
> 
> 
>> On May 15, 2022, at 3:46 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>
>> Seems that ink level query on my printer is supported:
>>
>> ----------
>> $ testsuite/testpappl --get-id socket://192.168.68.101
>>
>> MFG:HP;MDL:HP OfficeJet Pro 8730;
>>
>> $ testsuite/testpappl --get-status socket://192.168.68.101
>>
>> none
>>
>> $ testsuite/testpappl --get-supplies socket://192.168.68.101
>>
>>                       cyan ink HP N9H71A: 54% (ink, cyan)
>>
>>                    magenta ink HP N9H75A: 58% (ink, magenta)
>>
>>                     yellow ink HP N9H79A: 60% (ink, yellow)
>>
>>                      black ink HP N9H83A: 79% (ink, black)
>>
>> $
>> ----------
>>
>> What else could go wrong here?
>>
>> I have tested with the original network backends (schemes, devices) of PAPPL, both the one with DNS-Sd discovery and the one with SNMP discovery, and even with them I get only the gauge.
>>
>>    Till
>>
>>
>> On 15/05/2022 21:37, Michael Sweet wrote:
>>> The "testpappl" program provided with PAPPL can be used to test the SNMP stuff:
>>>      git clone https://github.com/michaelrsweet/pappl.git
>>>      cd pappl
>>>      ./configure
>>>      make
>>>      testsuite/testpappl --get-id socket://IP-ADDRESS
>>>      testsuite/testpappl --get-status socket://IP-ADDRESS
>>>      testsuite/testpappl --get-supplies socket://IP-ADDRESS
>>
> 
> ________________________
> Michael Sweet
> 
> 
> 
