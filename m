Return-Path: <bjo@schafweide.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schafweide.org;
 s=2007; t=1643812616;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=s9x5MSKUm2uBo3S/r1vmEo/6Hz6lGVwKSm+b+tOVuyA=;
 b=jT+icLJO0K2RmqRnIhT8dh4wZAyr0BlAn/VMHjRB0IO8IgSOA3UawZ/6MXo+W15t+A/aGA
 GvLMQPDTrbuS+ZBagEcNckcskmPsUG7SHYEaoEc6EcOMFdv3TDyxO5SCpCu5KMhdo+dN92
 zh4x7ttvRZO9cc/bjtxfvxkMRQ0MXqU=
Message-ID: <08fd428f-ca2d-8a9f-50a5-616b514d24b3@schafweide.org>
Date: Wed, 2 Feb 2022 15:36:06 +0100
MIME-Version: 1.0
Content-Language: de-DE
From: Bjoern Franke <bjo@schafweide.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] lpinfo -m hangs
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

Hi,

on Arch Linux running CUPS 2.4.1 "lpinfo -m" hangs and also trying to 
add an Epson XP 245 via the webinterface. On another system also running 
Arch with the same CUPS version the issue does not appear.

Some older findings on the net show issues while loading the ppds when 
foomatic is installed, but foomatic isn't installed.

Running with strace it shows how it runs into a timeout, but I have no 
clue what it tries:

mmap(NULL, 79320, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 
0x7f4a0e8ea000
mmap(0x7f4a0e8ed000, 28672, PROT_READ|PROT_EXEC, 
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x3000) = 0x7f4a0e8ed000
mmap(0x7f4a0e8f4000, 8192, PROT_READ, 
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xa000) = 0x7f4a0e8f4000
mmap(0x7f4a0e8f6000, 8192, PROT_READ|PROT_WRITE, 
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xb000) = 0x7f4a0e8f6000
mmap(0x7f4a0e8f8000, 21976, PROT_READ|PROT_WRITE, 
MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f4a0e8f8000
close(3)                                = 0
mprotect(0x7f4a0e8f6000, 4096, PROT_READ) = 0
munmap(0x7f4a0fa34000, 119932)          = 0
openat(AT_FDCWD, "/etc/passwd", O_RDONLY|O_CLOEXEC) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=2099, ...}, 
AT_EMPTY_PATH) = 0
lseek(3, 0, SEEK_SET)                   = 0
read(3, "root:x:0:0::/root:/bin/zsh\nbin:x"..., 4096) = 2099
close(3)                                = 0
getuid()                                = 0
rt_sigaction(SIGPIPE, {sa_handler=SIG_IGN, sa_mask=[], 
sa_flags=SA_RESTORER, sa_restorer=0x7f4a0f804da0}, NULL, 8) = 0
socket(AF_UNIX, SOCK_STREAM, 0)         = 3
setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) = 0
setsockopt(3, SOL_SOCKET, SO_REUSEPORT, [1], 4) = 0
setsockopt(3, SOL_TCP, TCP_NODELAY, [1], 4) = -1 EOPNOTSUPP (Die 
Operation wird nicht unterstützt)
fcntl(3, F_SETFD, FD_CLOEXEC)           = 0
fcntl(3, F_GETFL)                       = 0x2 (flags O_RDWR)
fcntl(3, F_SETFL, O_RDWR|O_NONBLOCK)    = 0
connect(3, {sa_family=AF_UNIX, sun_path="/run/cups/cups.sock"}, 22) = 0
fcntl(3, F_SETFL, O_RDWR)               = 0
openat(AT_FDCWD, "/etc/localtime", O_RDONLY|O_CLOEXEC) = 4
newfstatat(4, "", {st_mode=S_IFREG|0644, st_size=2910, ...}, 
AT_EMPTY_PATH) = 0
newfstatat(4, "", {st_mode=S_IFREG|0644, st_size=2910, ...}, 
AT_EMPTY_PATH) = 0
read(4, 
"TZif2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\r\0\0\0\0"..., 4096) 
= 2910
lseek(4, -1829, SEEK_CUR)               = 1081
read(4, 
"TZif2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\r\0\0\0\0"..., 4096) 
= 1829
close(4)                                = 0
uname({sysname="Linux", nodename="foo.bar.net", ...}) = 0
sendto(3, "POST / HTTP/1.1\r\nContent-Length:"..., 211, 0, NULL, 0) = 211
sendto(3, "\2\0@\f\0\0\0\1\1G\0\22attributes-charset\0\5"..., 75, 0, 
NULL, 0) = 75
poll([{fd=3, events=POLLIN}], 1, 1000)  = 1 ([{fd=3, revents=POLLIN}])
poll([{fd=3, events=POLLIN}], 1, 60000) = 1 ([{fd=3, revents=POLLIN}])
recvfrom(3, "HTTP/1.1 100 Weiter\r\n\r\n", 2048, 0, NULL, NULL) = 23
poll([{fd=3, events=POLLIN}], 1, 60000) = 0 (Timeout)
openat(AT_FDCWD, "/usr/share/locale/locale.alias", O_RDONLY|O_CLOEXEC) = 4
newfstatat(4, "", {st_mode=S_IFREG|0644, st_size=2998, ...}, 
AT_EMPTY_PATH) = 0
read(4, "# Locale name alias data base.\n#"..., 4096) = 2998
read(4, "", 4096)                       = 0
close(4)                                = 0
openat(AT_FDCWD, "/usr/share/locale/de_DE.UTF-8/LC_MESSAGES/libc.mo", 
O_RDONLY) = -1 ENOENT (Datei oder Verzeichnis nicht gefunden)
openat(AT_FDCWD, "/usr/share/locale/de_DE.utf8/LC_MESSAGES/libc.mo", 
O_RDONLY) = -1 ENOENT (Datei oder Verzeichnis nicht gefunden)
openat(AT_FDCWD, "/usr/share/locale/de_DE/LC_MESSAGES/libc.mo", 
O_RDONLY) = -1 ENOENT (Datei oder Verzeichnis nicht gefunden)
openat(AT_FDCWD, "/usr/share/locale/de.UTF-8/LC_MESSAGES/libc.mo", 
O_RDONLY) = -1 ENOENT (Datei oder Verzeichnis nicht gefunden)
openat(AT_FDCWD, "/usr/share/locale/de.utf8/LC_MESSAGES/libc.mo", 
O_RDONLY) = -1 ENOENT (Datei oder Verzeichnis nicht gefunden)
openat(AT_FDCWD, "/usr/share/locale/de/LC_MESSAGES/libc.mo", O_RDONLY) = 4
newfstatat(4, "", {st_mode=S_IFREG|0644, st_size=149079, ...}, 
AT_EMPTY_PATH) = 0
mmap(NULL, 149079, PROT_READ, MAP_PRIVATE, 4, 0) = 0x7f4a0e8c5000
close(4)                                = 0
openat(AT_FDCWD, "/usr/lib/gconv/gconv-modules.cache", O_RDONLY) = -1 
ENOENT (Datei oder Verzeichnis nicht gefunden)
openat(AT_FDCWD, "/usr/lib/gconv/gconv-modules", O_RDONLY|O_CLOEXEC) = 4
newfstatat(4, "", {st_mode=S_IFREG|0644, st_size=56353, ...}, 
AT_EMPTY_PATH) = 0
read(4, "# GNU libc iconv configuration.\n"..., 4096) = 4096
read(4, "B1002//\tJUS_I.B1.002//\nmodule\tJU"..., 4096) = 4096
read(4, "\tISO-IR-110//\t\tISO-8859-4//\nalia"..., 4096) = 4096
read(4, "\t\t\tISO-8859-14//\nalias\tISO_8859-"..., 4096) = 4096
read(4, "DIC-ES//\nalias\tEBCDICES//\t\tEBCDI"..., 4096) = 4096
read(4, "CDIC-CP-ES//\t\tIBM284//\nalias\tCSI"..., 4096) = 4096
read(4, "\t\tIBM863//\nalias\tOSF1002035F//\t\t"..., 4096) = 4096
read(4, "937//\t\tIBM937//\nmodule\tIBM937//\t"..., 4096) = 4096
brk(0x5580630e6000)                     = 0x5580630e6000
read(4, "UJIS//\t\t\tEUC-JP//\nmodule\tEUC-JP/"..., 4096) = 4096
read(4, "lias\tISO2022CN//\t\tISO-2022-CN//\n"..., 4096) = 4096
read(4, "O_5427-EXT//\nalias\tISO_5427EXT//"..., 4096) = 4096
read(4, "ost\nmodule\tMAC-SAMI//\t\tINTERNAL\t"..., 4096) = 4096
read(4, "112//\t\tINTERNAL\t\tIBM1112\t\t1\nmodu"..., 4096) = 4096
read(4, "s\tCP9448//\t\tIBM9448//\nalias\tCSIB"..., 4096) = 3105
read(4, "", 4096)                       = 0
close(4)                                = 0
futex(0x7f4a0f98a4dc, FUTEX_WAKE_PRIVATE, 2147483647) = 0
access("/usr/share/locale/de_DE/cups_de_DE.po", F_OK) = -1 ENOENT (Datei 
oder Verzeichnis nicht gefunden)
access("/usr/share/locale/de/cups_de.po", F_OK) = 0
openat(AT_FDCWD, "/usr/share/locale/de/cups_de.po", O_RDONLY) = 4
fcntl(4, F_GETFD)                       = 0
fcntl(4, F_SETFD, FD_CLOEXEC)           = 0
read(4, "#\n# German message catalog for C"..., 4096) = 4096
read(4, "n 3.2.\"\nmsgstr \"                "..., 4096) = 4096
read(4, "      REF: Seiten 61-62, Abschni"..., 4096) = 4096
read(4, "eRegion Option.\\n\"\n\"            "..., 4096) = 4096
read(4, "ption code cannot be interpreted"..., 4096) = 4096
read(4, "\"\n\"                REF: Seite 41"..., 4096) = 4096
read(4, "lue           Set option(s).\"\nms"..., 4096) = 4096
read(4, "1 \"\n\"Abschnitt 5.1.4).\"\n\n#, c-fo"..., 4096) = 4096
read(4, " (Borderless, %s)\"\nmsgstr \"%s (R"..., 4096) = 4096
read(4, "option.\"\nmsgstr \"\"\n\n#, c-format\n"..., 4096) = 4096
read(4, "-format\nmsgid \"%s: Expected job "..., 4096) = 4096
read(4, "on/off\"\nmsgstr \"--[no-]debug-log"..., 4096) = 4096
brk(0x558063107000)                     = 0x558063107000
read(4, "rogram version\"\nmsgstr \"--versio"..., 4096) = 4096
read(4, "sche Warnungen\"\n\nmsgid \"\"\n\"-K ke"..., 4096) = 4096
read(4, "sgid \"-c                      Ma"..., 4096) = 4096
read(4, "Set location of printer\"\nmsgstr "..., 4096) = 4096
read(4, "ruck in Querformat\"\n\nmsgid \"-p  "..., 4096) = 4096
read(4, "gabe\"\n\nmsgid \"-x                "..., 4096) = 4096
read(4, "1.25\\\"\"\nmsgstr \"3,00\303\2271,25 inch\""..., 4096) = 4096
read(4, "\"\nmsgstr \"DIN A7\"\n\nmsgid \"A8\"\nms"..., 4096) = 4096
read(4, "\\\".\"\n\n#, c-format\nmsgid \"Bad not"..., 4096) = 4096
read(4, "s\\\" is not accepting jobs.\"\nmsgs"..., 4096) = 4096
read(4, "Long Edge\"\nmsgstr \"Umschlag PRC2"..., 4096) = 4096
read(4, " tags.\"\nmsgstr \"IPP 1setOf Attri"..., 4096) = 4096
read(4, "\"Invalid named IPP attribute in "..., 4096) = 4096
read(4, "ndes CloseGroup\"\n\nmsgid \"Missing"..., 4096) = 4096
read(4, "gid \"No printer name\"\nmsgstr \"Ke"..., 4096) = 4096
read(4, "r \"Doppelpostkarte lange Seite\"\n"..., 4096) = 4096
read(4, "\303\266ffentlichung festlegen\"\n\nmsgid"..., 4096) = 4096
read(4, "\n\"Leerzeichen, Slashes (/ \\\\), A"..., 4096) = 4096
read(4, "\n#, c-format\nmsgid \"Unable to co"..., 4096) = 4096
brk(0x558063128000)                     = 0x558063128000
read(4, "\nmsgid \"Unable to get list of pr"..., 4096) = 4096
read(4, " \\\"%s\\\" with value \\\"%s\\\".\"\nmsgs"..., 4096) = 4096
read(4, "e[,subtype][.domain.] ... [Ausdr"..., 4096) = 4096
read(4, "%s.\"\n\nmsgid \"Your account does n"..., 4096) = 4096
read(4, "r Sheet Info\nmsgid \"cover-sheet-"..., 4096) = 4096
read(4, "f\303\274r %s/%s: %s\"\n\n#, c-format\nmsg"..., 4096) = 4096
read(4, "beschreibung\"\n\n#. TRANSLATORS: N"..., 4096) = 4096
read(4, "ndnaht rechts\"\n\n#. TRANSLATORS: "..., 4096) = 4096
read(4, " F18-8\nmsgid \"finishing-template"..., 4096) = 4096
read(4, "\n\n#. TRANSLATORS: 2-hole Punch B"..., 4096) = 4096
read(4, "Trim After Every Page\nmsgid \"fin"..., 4096) = 4096
read(4, "TORS: Edge Stitch\nmsgid \"finishi"..., 4096) = 4096
read(4, "emory.\"\nmsgstr \"ippfind: zu weni"..., 4096) = 4096
read(4, "et\"\nmsgstr \"Fehlerblatt drucken\""..., 4096) = 4096
read(4, " Start and End Sheets\nmsgid \"job"..., 4096) = 4096
read(4, "for-review\"\nmsgstr \"Auftrag zur "..., 4096) = 4096
read(4, "Nicht unterst\303\274tzte Attribute od"..., 4096) = 4096
read(4, "format\nmsgid \"lpadmin: Printer %"..., 4096) = 4096
read(4, "ment \302\273%s\302\253.\"\n\nmsgid \"lpoptions:"..., 4096) = 4096
read(4, "#. TRANSLATORS: Flexible PLA\nmsg"..., 4096) = 4096
read(4, "sgstr \"dunkelgold\"\n\n#. TRANSLATO"..., 4096) = 4096
read(4, "\"\n\n#. TRANSLATORS: Feed Directio"..., 4096) = 4096
read(4, "ach 18\"\n\n#. TRANSLATORS: Tray 19"..., 4096) = 4096
read(4, "c\nmsgid \"media-type.disc-high-gl"..., 4096) = 4096
read(4, " Pro Platinum\"\n\n#. TRANSLATORS: "..., 4096) = 4096
read(4, "\nmsgid \"media-type.self-adhesive"..., 4096) = 4096
read(4, "gid \"media.iso_a4x7_297x1471mm\"\n"..., 4096) = 4096
read(4, "gid \"media.jis_b7_91x128mm\"\nmsgs"..., 4096) = 4096
read(4, "5in\"\nmsgstr \"11\303\22714,875 inch\"\n\n#"..., 4096) = 4096
brk(0x558063149000)                     = 0x558063149000
read(4, "SLATORS: Envelope Invitation\nmsg"..., 4096) = 4096
read(4, "e systemvoreingestellten Ziele\"\n"..., 4096) = 4096
read(4, "ANSLATORS: Object Offset\nmsgid \""..., 4096) = 4096
read(4, "pression-quality-factor\"\nmsgstr "..., 4096) = 4096
read(4, " %d of %s.\"\nmsgstr \"\"\n\n#, c-form"..., 4096) = 4096
read(4, " Unable to create PPD file \\\"%s\\"..., 4096) = 4096
read(4, "Text, 2-farbig\"\n\n#. TRANSLATORS:"..., 4096) = 4096
read(4, "printer-kind.postcard\"\nmsgstr \"P"..., 4096) = 4096
read(4, "ff\"\nmsgstr \"Banderolierer ausges"..., 4096) = 4096
read(4, " \"\"\n\n#. TRANSLATORS: Binder Warm"..., 4096) = 4096
read(4, "zer\"\n\n#. TRANSLATORS: Die Cutter"..., 4096) = 4096
read(4, "LATORS: Folder Interlock Closed\n"..., 4096) = 4096
read(4, "printer-interlock-closed\"\nmsgstr"..., 4096) = 4096
read(4, "nput-pick-roller-life-warn\"\nmsgs"..., 4096) = 4096
read(4, "state-reasons.inserter-warming-u"..., 4096) = 4096
read(4, "ate-reasons.make-envelope-opened"..., 4096) = 4096
read(4, " Ink/toner waste bin almost full"..., 4096) = 4096
read(4, "ng offline\nmsgid \"printer-state-"..., 4096) = 4096
read(4, "orater Recoverable Failure\nmsgid"..., 4096) = 4096
read(4, "er-state-reasons.puncher-jam\"\nms"..., 4096) = 4096
read(4, "ation-cutter-interlock-closed\"\nm"..., 4096) = 4096
read(4, "\n#. TRANSLATORS: Sheet Rotator C"..., 4096) = 4096
read(4, "Closed\nmsgid \"printer-state-reas"..., 4096) = 4096
read(4, "r-cover-open\"\nmsgstr \"\"\n\n#. TRAN"..., 4096) = 4096
read(4, "Over\nmsgid \"printer-state-reason"..., 4096) = 4096
read(4, "r Near Limit\nmsgid \"printer-stat"..., 4096) = 4096
read(4, "ble-failure\"\nmsgstr \"\"\n\n#. TRANS"..., 4096) = 4096
read(4, "ns.trimmer-recoverable-storage\"\n"..., 4096) = 4096
read(4, "re\"\nmsgstr \"\"\n\n#. TRANSLATORS: W"..., 4096) = 4096
read(4, "us von %s fehlgeschlagen: %s\"\n\nm"..., 4096) = 4096
read(4, "g-type.score\"\nmsgstr \"\"\n\n#. TRAN"..., 4096) = 2883
read(4, "", 4096)                       = 0
close(4)                                = 0
write(2, "lpinfo: Erfolg\n", 15lpinfo: Erfolg
)        = 15
exit_group(1)                           = ?

