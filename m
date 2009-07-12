Message-Id: <60555AF1-6CA7-4C1E-88B5-499BCE19C138@mmiworks.net>
From: kate price <kate@mmiworks.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F41887E@EEAEX03.us.epson.net>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v935.3)
Date: Sun, 12 Jul 2009 15:23:29 +0200
References: <ED4094DE5E8ACD4BBDACA6AD398E608F41887E@EEAEX03.us.epson.net>
Subject: Re: [Printing-architecture] Vendor Extensions to the CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hi Glen and others

For those that don't know I am working with Peter on the CPD, and will  
be the doing the bulk of wiki maintenance.
Peter is on holiday for a few days, hence the delay in getting back to  
you...
Thus, we will comment on Glen's previous email in more detail ASAP-
However a few points-

Regarding vendor specific panel or dialog extension- (and I hope I  
understood your suggestion correctly):

It is fully anticipated that all tags and therefore the system of  
controls, which make up the level 3 of the dialog, will be adaptable  
according to the printer manufacturer's requirements. Please don't  
think that there will be a fixed set of tags defined by us, although  
we will providing guidelines and making recommendations. (One of which  
will include using some UI professionals to help in the integration of  
the system). Because it's certain universal tags would in no way be  
flexible enough.

Certainly, some tags will be pretty common to most printer groups-  
ones based around page handling for example. However,  it means that   
manufacturers will be provided with the opportunity to really specify  
tags (and by extension systems of controls) according to their  
markets, features and user's needs: whilst at the same time, staying  
within the holistic system of the configuration matrix.

The togetherness of the system is vital for users. It means that when  
they extend the dialog to it's third level, that they perceive that  
they have full control. That doesn't mean that they immediately see  
all controls of course! Merely that they now have access to them via  
the config. matrix (the tags). Adding more controls, or different  
panels- essentially outside of this system - would really sink that  
idea for users. Especially when it isn't necessary to achieve the  
desired aim,  because the dialog is in itself intrinsically vendor  
specific.

Actually, I would even argue that the directness of how tags get their  
ideas across, is a great opportunity for manufacturers. For example if  
a printer range has a USP or a new feature, this can be incorporated  
and communicated in one or more tags and tag names, which users will  
see and be likely to use much more than they would be likely to click  
on a link to a vendor specific panel or dialog-remembering that for  
users printing -and by extension printer manufacturers -don't exist!

Additionally:

Thanks very much for going through the controls so carefully. I know  
Peter and I will be discussing and acting on your comments as soon as  
he is back from his holiday. I want to just make it clear that the  
controls that you commented on are:

1. based on the assumed parameters for the cluster personal laser  
printers only- hence a large numbers of controls appropriate for other  
printer cluster types, not being present in this list.
2. this is a perceived "educational" group, used to design an assumed  
set of parameters for a  group of printers, we are using as a design  
method. The actual final tag-to-control mapping will vary per printer-  
as written above.
3. preliminary designs, which have yet to be refined or tested-

Kate



