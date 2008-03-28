Message-ID: <47ED5534.601@gmail.com>
Date: Fri, 28 Mar 2008 21:29:40 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <e942fc210803221558p3c22c219p79f09e94da47e17e@mail.gmail.com>	<47E59FA6.5060405@gmail.com>	<e395be80803230946t1e7e7535q2c8879c19a8c4b47@mail.gmail.com>	<e942fc210803241856u1da4d98by5c035557ef462e78@mail.gmail.com>
	<47EC6B80.9090407@Sun.COM>
In-Reply-To: <47EC6B80.9090407@Sun.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Summer of Code PAPI project
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Norm Jacobs <Norm.Jacobs@sun.com>
Cc: printing-architecture@lists.linux-foundation.org

Norm, thank you very much for these explanations. One thing I want to 
ask you. Would you (or Wendy) mentor a student doing the CUPS 
integration of PAPI? I have my name as interim in the project proposal 
as I did not succeed to contact you in the last days and Mike Sweet does 
not want, but it would be much better if you or Wendy mentors the 
student and not me.

If you or Wendy are willing to mentor, please register at

http://code.google.com/soc/mentor_step1.html

choose the Linux Foundation as organization, wait for my approval, you 
are ready to see all applications, and add comments to them. After the 
application deadline on the coming Monday (if no prolongation) you can 
request the mentorship on an application which I will approve then.

    Till

Norm Jacobs wrote:
> The libpapi-cups code that you found in the papi tarball was originally 
> written by Alan Hlava at IBM.  He wrote it as a prototype against an 
> earlier draft of the PAPI (pre v0.92 I think).  It is probably pretty 
> close to  what's in the PAPI spec, but I don't know for certain.  The 
> extent of my experience with it was a fairly quick review of it and some 
> porting work to make it build against libcups.
> 
> My recollection of the history of the libpapi-cups code is that it was 
> written by Alan Hlava at IBM as a proof of concept of PAPI prior to the 
> v0.92 draft of the API.  He wrote it to build against the a version of 
> the libcups http and ipp interfaces that were split out from libcups.  
> The extent of my experience with that particular code was a fairly quick 
> review of it and some porting work to make it build against libcups (not 
> his broken out subset).  I have some vaque recollection that it used 
> some libcups interfaces that would pose problems handling multiple 
> papi_service_t service contexts in the long run.
> 
> The most recent PAPI code in the sourceforge openprinting project's SVN 
> repository includes a complete PAPI over IPP implementation that works 
> with CUPS IPP service.  That being said, one of the things that has been 
> discussed several times in the OpenPrinting Workgroup is the desire to 
> build a PAPI implementation that would integrate into the CUPS code 
> base.  While the PAPI over IPP implementation works with CUPS, it 
> probably wouldn't be exactly what I would integrate into the CUPS code 
> base if I were doing so.  A version that were to integrate into the CUPS 
> code base would probably want to
> 
>     * leverage some of the building blocks in the libcups interfaces
>       (aside from the http and ipp interfaces).
>     * avoid using a portion of the CUPS convenience interfaces
>     * maintain CUPS http and ipp constructs per papi_service_t object.
> 
> Another thing that is very important to cover here is unit testing of 
> the various interfaces.
> 
>     -Norm
> 
> Cherif YAYA wrote:
>> Till, Ira,
>> Thanks a lot for your answers.
>> I'm looking forward to hearing from Norm and Wendy. Particularly about 
>> the progress status of the existing implementation.
>>
>> Cherif
>>
>>
>> 2008/3/23, Ira McDonald <blueroofmusic@gmail.com 
>> <mailto:blueroofmusic@gmail.com>>:
>>
>>     Hi Norm and Wendy,
>>
>>     Could one of you answer Cherif's questions below, please?
>>
>>     Thanks very much,
>>     - Ira
>>
>>     --
>>     Ira McDonald (Musician / Software Architect)
>>     Chair - Linux Foundation Open Printing WG
>>     Blue Roof Music/High North Inc
>>     email: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
>>     winter:
>>       579 Park Place Saline, MI 48176
>>       734-944-0094
>>     summer:
>>       PO Box 221 Grand Marais, MI 49839
>>       906-494-2434
>>
>>
>>
>>     On Sat, Mar 22, 2008 at 8:09 PM, Till Kamppeter
>>     <till.kamppeter@gmail.com <mailto:till.kamppeter@gmail.com>> wrote:
>>     > Cherif YAYA wrote:
>>     >  > Also in the TODO file, under the libpapi-cups entry it is
>>     said that
>>     >  > "Once libpapi-ipp is complete this can be dropped, because
>>     CUPS will
>>     >  > accept jobs from "any" IPP client and the PAPI IPP support is
>>     guaranteed
>>     >  > to work." Does that mean that any work done for this project
>>     would be
>>     >  > practically useless? It's probably not the case and I'm
>>     probably missing
>>     >  > something. But I'd like some clarification as to how the
>>     deliverables of
>>     >  > this CUPS integration will contribute to the PAPI effort.
>>     >
>>     >  For me this looks more like that libpapi-cups' functionality
>>     gets merged
>>     >  into libpapi-ipp. Norm, Wendy, am I correct?
>>     >
>>     >
>>     >
>>     >     Till
>>     >
>>
>>     >  _______________________________________________
>>     >  Printing-architecture mailing list
>>     >  Printing-architecture@lists.linux-foundation.org
>>     <mailto:Printing-architecture@lists.linux-foundation.org>
>>     >  https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>>     >
>>
>>
>> ------------------------------------------------------------------------
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>>   
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> 

