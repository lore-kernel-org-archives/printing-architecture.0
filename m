Message-ID: <3E7699B0.2050802@gmx.net>
Date: Tue, 18 Mar 2003 04:59:44 +0100
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
References: <OF9DEA49C7.6D6A2E9F-ON87256CE5.0003CEAE@us.ibm.com>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Slides upload: FTP problems
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: Claudia Alimpich <alimpich@us.ibm.com>
Cc: printing-architecture@freestandards.org

Claudia Alimpich wrote:
> I created a directory under the fsg directory where we can put our FSG
> presentations for the PSG/FSG meeting on April 1st.
>    ftp://ftp.pwg.org/pub/pwg/fsg/April2003_meeting_slides
> 
> If you don't like the name of the directory or where it resides, we can
> change/move it. I thought that it would be better to have all of the
> presentations in the same directory instead of under the individual
> sub-directories.

I have nothing against the directory name, but it would be nice if I 
could actually upload files to the directory.

I tried from my local machine and from linuxprinting.org (see the 
sessions below). From linuxprinting.org I can change into the correct 
destination directory, but when I try to upload a file, it simply hangs, 
until it reaches the FTP connection timeout after 5 minutes. Trying from 
my local machine gives only errors as shown below. "scp" upload does not 
work, there is no SSH daemon listening on port 22 of ftp.pwg.org.

I have put up the slides on linuxprinting.org for now:

http://www.linuxprinting.org/till/tmp/talk_pwg2003.pdf
http://www.linuxprinting.org/till/tmp/talk_pwg2003.sxi

The ".sxi" file is created with OpenOffice.org 1.0.1 under Mandrake 
Linux 9.0.

I can download and view Claudia's files on the FTP server with Mozilla, 
only upload with "ftp" or "gftp" does not work for me

Can someone check the server and fix the problem or at least upload my 
files?

Thank you.

    Till


Attempt from linuxprinting.org
----------------------------------------------------------------------------
till@poblano:~/www/tmp$ ftp ftp.pwg.org
Connected to www.pwg.org.
220 FTP Server ready.
Name (ftp.pwg.org:till): pwg
331 Password required for pwg.
Password:
230 User pwg logged in.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> cd fsg
250 CWD command successful.
ftp> cd April2003_meeting_slides
250 CWD command successful.
ftp> put talk_pwg2003.sxi
local: talk_pwg2003.sxi remote: talk_pwg2003.sxi
200 PORT command successful.

[ nothing happens ]

421 Idle Timeout (300 seconds): closing control connection.
----------------------------------------------------------------------------

Attempt from my local machine
----------------------------------------------------------------------------
[till@localhost talks]$ ftp ftp.pwg.org
Connected to www.pwg.org.
220 FTP Server ready.
500 AUTH not understood.
500 AUTH not understood.
KERBEROS_V4 rejected as an authentication type
Name (ftp.pwg.org:till): pwg
331 Password required for pwg.
Password:
230 User pwg logged in.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
227 Entering Passive Mode (192,146,101,49,164,216).
150 Opening ASCII mode data connection for file list
drwxr-xr-x   2 pwg      staff         512 Mar  3 14:55 Character-Repertoires
drwxrwxr-x  12 pwg      staff        3584 Mar 14 10:13 QUALDOCS
drwxr-xr-x   4 pwg      staff         512 Jun 21  2002 Related
drwxr-xr-x   5 pwg      staff        1024 Mar 17 13:11 Semantic-Model
drwxr-xr-x   3 pwg      staff         512 Dec  3 14:55 capabilities
drwxrwxr-x   2 pwg      0             512 Aug 12  2001 cpap
drwxrwxr-x   6 pwg      0             512 Aug 12  2001 dpa
drwxrwxr-x  11 pwg      0             512 Aug 12  2001 fin
drwxr-xr-x   9 pwg      staff         512 Mar  9 19:22 fsg
drwxrwxr-x   7 pwg      staff         512 Jan 29 00:04 general
-rw-r--r--   1 pwg      staff        5910 Oct 30 17:55 index.html
drwxrwxr-x  69 pwg      staff        1536 Feb 27 17:29 ipp
drwxrwxr-x  17 pwg      staff         512 Aug 12  2001 jmp
drwxr-xr-x   2 pwg      staff        1536 Sep 24  2001 media-sizes
-rw-r--r--   1 pwg      staff      770815 Apr 21  2000 mfdmib2.pdf
drwxrwxr-x   2 pwg      staff         512 Aug 12  2001 ncmg_print
drwxrwxr-x  36 pwg      staff        1024 Aug 12  2001 p1394
drwxrwxr-x   9 pwg      staff         512 Aug  5  2002 pmp
drwxr-xr-x   9 pwg      staff        3584 Mar  3 13:26 ps
drwxrwxr-x   4 pwg      staff         512 Aug 12  2001 sdp
drwxrwxr-x   4 pwg      staff        1024 Aug 12  2001 sense
drwxrwxr-x  32 pwg      staff        1024 Aug 12  2001 snmpmib
drwxr-xr-x   2 pwg      staff         512 Feb 28  2002 standards
drwxrwxr-x   4 pwg      staff         512 Aug 12  2001 tools
drwxrwxr-x   6 pwg      staff         512 Feb 11 07:50 upd
drwxr-xr-x   7 pwg      staff         512 Mar  3 16:13 wbmm
drwxr-xr-x   2 pwg      staff         512 Nov 12 13:17 wsm
drwxrwxr-x  26 pwg      staff        1536 Feb 11 12:03 www
drwxr-xr-x   5 pwg      staff         512 Jun 21  2002 xhtml-print
226 Transfer complete.
ftp> cd fsg
250 CWD command successful.
ftp> ls
227 Entering Passive Mode (192,146,101,49,164,217).
150 Opening ASCII mode data connection for file list
drwxr-xr-x   2 pwg      staff         512 Mar 12 12:04 
April2003_meeting_slides drwxr-xr-x   4 pwg      staff        1024 Jan 
16 15:22 architecture
drwxr-xr-x   2 pwg      staff         512 Dec  6 14:43 cap
drwxr-xr-x   2 pwg      staff         512 Jun 26  2002 driver
drwxr-xr-x   2 pwg      staff         512 Jun 26  2002 general
drwxr-xr-x   7 pwg      staff        2560 Dec 16 17:39 jobticket
drwxr-xr-x   2 pwg      staff        1024 Dec  4 20:14 spool
226 Transfer complete.
ftp> cd April2003_meeting_slides
250 CWD command successful.
ftp> ls
227 Entering Passive Mode (192,146,101,49,164,219).
150 Opening ASCII mode data connection for file list
-rw-r--r--   1 pwg      staff       93997 Mar 12 12:04 
FSGOpenPrint_JT_11Mar2003.pdf
-rw-r--r--   1 pwg      staff      103936 Mar 12 12:04 
FSGOpenPrint_JT_11Mar2003.ppt
226 Transfer complete.
ftp> mput *pwg*.sxi
mput talk_pwg2003.sxi? y
227 Entering Passive Mode (192,146,101,49,164,220).
503 No PORT command issued first.
ftp> ?
Commands may be abbreviated.  Commands are:

!               cr              mdir            proxy           send
$               delete          mget            sendport        site
account         debug           mkdir           put             size
append          dir             mls             pwd             status
ascii           disconnect      mode            quit            struct
bell            form            modtime         quote           system
binary          get             mput            recv            sunique
bye             glob            newer           reget           tenex
case            hash            nmap            rstatus         trace
ccc             help            nlist           rhelp           type
cd              idle            ntrans          rename          user
cdup            image           open            reset           umask
chmod           lcd             passive         restart         verbose
clear           ls              private         rmdir           ?
close           macdef          prompt          runique
cprotect        mdelete         protect         safe
ftp> PORT 21]
?Invalid command
ftp> PORT 21
?Invalid command
ftp> port 21
?Invalid command
ftp> rhelp
214-The following commands are recognized (* =>'s unimplemented).
214-USER    PASS    ACCT*   CWD     XCWD    CDUP    XCUP    SMNT*
214-QUIT    REIN*   PORT    PASV    TYPE    STRU    MODE    RETR
214-STOR    STOU*   APPE    ALLO*   REST    RNFR    RNTO    ABOR
214-DELE    MDTM    RMD     XRMD    MKD     XMKD    PWD     XPWD
214-SIZE    LIST    NLST    SITE    SYST    STAT    HELP    NOOP
214 Direct comments to Postmaster@Lexmark.COM.
ftp> sendport 21
Use of PORT cmds off.
ftp> mput *pwg*.sxi
mput talk_pwg2003.sxi? y
227 Entering Passive Mode (192,146,101,49,164,223).
503 No PORT command issued first.
ftp> sendport 21
Use of PORT cmds on.
ftp> mput *pwg*.sxi
mput talk_pwg2003.sxi? y
227 Entering Passive Mode (192,146,101,49,164,224).
503 No PORT command issued first.
ftp> passive
Passive mode off.
ftp> mput talk_pwg2003.sxi
mput talk_pwg2003.sxi? y
500 Illegal PORT command.
ftp> sendport
Use of PORT cmds off.
ftp> mput talk_pwg2003.sxi
mput talk_pwg2003.sxi? y
ftp: bind: Address already in use
ftp>
----------------------------------------------------------------------------


