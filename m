Return-Path: <mohitmo@cse.iitk.ac.in>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cse.iitk.ac.in;
 s=mail; t=1594399425;
 bh=ivts+OxK+LBSZ5vykuazRcjD8ByW7nVDgG60fCL3zCM=;
 h=Date:Subject:From:To:From;
 b=YtNWMNY2bJfnqzNxU1gPAaiqCfG5/pBAbNe+blFedzqNsFWR2iPlB91fAjneQkS5O
 KMvvAgziUifkgZ2sW84fiJzKXXq7uUxOiMlx+cNwnI/wacK3pewHoo54SGx2EfArru
 k3pz2Ii4Oq5Q8Sl14MqyUWNxCetS7sXU/7UZgZhdmaB58Jr8VJDAwFKmdZGdqXApRV
 XO+fSWZU3yo49KY3Mdrlu0uRtQnrK3dZNl8YRc3D8Ko5nUHakJ/4sgDwApHxlJcpJJ
 cr4VJ6i1gHyKbSR3JsV5vU4aTZJOxE8wX0f5KQ5Lr2cp1CY4SDrgtzWNkZBwQQEpnM
 +oplX/cYXpY9g==
Message-ID: <b6e1092728332400b5a5fab62e9615d7.squirrel@webmail.cse.iitk.ac.in>
Date: Fri, 10 Jul 2020 22:13:39 +0530
From: mohitmo@cse.iitk.ac.in
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Info regarding GSoC project "Speed/Scaling
 optimisation of cups-browsed"
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hi everyone,

I am Mohit Mohan, junior at IIT Kanpur in the CSE department. I am a GSoC
student this year working with Open Printing on the project
“Speed/Scaling optimisation of cups-browsed”. As the first coding
period completed a few days back, I wanted to inform you all about what I
did in that time.

But first a bit about the problem with cups-browsed. The cups-browsed is a
very useful tool for networks with large numbers of printers, but as it
discovers the printers on the network one by one, so as the number of
printers increases, the time taken to create a queue for all of them
greatly increases.

To understand more about this issue I tested cups-browsed with different
numbers of printers to find out how much time it takes to create queues.
Next thing to find out was where it was taking most time. To do that I
found out time taken by some of the important functions during a queue
creation. From the results it was quite clear that update_cups_queues()
was taking the most time. This function actually creates the queue.

As my mentors Till Kamppeter and Deepak Patankar suggested I looked at
where it was taking most of the time in update_cups_queues(), and found
out that it was cupsGetNamedDest(), which is a part of CUPS API to get a
specific destination from the list of available destinations. We tried all
available alternatives, but none of them worked faster than it, so in the
end we decided to stay with it.
You can find the above results at https://github.com/mohitmo/Testing.

I also created a design document for implementing multi-threading in
cups-browsed.
You can find it here
https://github.com/mohitmo/design-document-cups-browsed/blob/master/doc.md.

In the next phase I am working on implementing multi-threading in
cups-browsed.


Thanks
Mohit Mohan


