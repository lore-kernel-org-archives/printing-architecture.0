Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603286343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:autocrypt:autocrypt;
 bh=Uw/EVfUSGyfVOtTyK1EPT5eNY221L8naTxp6GoAATlk=;
 b=f/8NpiCBFgQULUznfw23xQGbsmm8PvCEnUjTmLYG71OtCPlsUC0AecDAN0Yu284CUbLJGt
 hrSWcephW0mN6P4YNnuZ15n3/MyRTaf/91XxshxOp/pan+Seb2uCCfYovYIbLe4JHx0LvR
 r1AQA+RfN4KU+g8zLR5px8hzCdB/UGc=
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
Date: Wed, 21 Oct 2020 15:18:54 +0200
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="H1Kuuog5LCRHpgOVlh7q0pEMhYr0AWdJ9"
Subject: [Printing-architecture] IPP Validate-Job operation and its
	implementation in CUPS
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS developer list." <cups-devel@cups.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "The CUPS user discussion list." <cups@cups.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--H1Kuuog5LCRHpgOVlh7q0pEMhYr0AWdJ9
Content-Type: multipart/mixed; boundary="jsyinX7Qe89P3vByLsFfqNopmMTpX2wdT";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: "The CUPS developer list." <cups-devel@cups.org>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>,
 "The CUPS user discussion list." <cups@cups.org>
Message-ID: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
Subject: IPP Validate-Job operation and its implementation in CUPS

--jsyinX7Qe89P3vByLsFfqNopmMTpX2wdT
Content-Type: multipart/mixed;
 boundary="------------C5A39EC5BC43585E851D80CB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C5A39EC5BC43585E851D80CB
Content-Type: multipart/alternative;
 boundary="------------49169B00F6FAFA657D6C517D"

--------------49169B00F6FAFA657D6C517D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

one of our RHEL customers hit an issue with IPP Validate-Job operation
when using Lexmark CX727de printer.

A print job occasionally fails after IPP backend sends IPP Validate-Job
request to the printer, but the printer only sends TCP ACK packet after
receiving the request, and doesn't send 'HTTP/1.1 100 Continue' or full
response. When an user resubmits the job later, the printer sends the
correct response and the print job ends successfully.

I came to the conclusion it is a printer firmware bug and recommended
reporting it to printer vendor, because the printer reports it is
capable of Validate-Job operation (checked via ipptool), but it
occasionally fails.

In this email I would like to ask if there can be a way how to work
around such printer issues within CUPS, which can be aligned with RFC
and PWG standards, and can be merged into OpenPrinting/cups project.

I have several ideas:

1) Validate-Job operation is 'only' recommended since IPP 2.0, so the
backend would have printed only warning if Validate-Job failed and the
IPP protocol used for communication is 2.0 or newer

2) configurable retries for Validate-Job operation - this idea came up
from printer behavior (Validate-Job works after N retries) and from
knowledge there are already configurable variables in backends via
device uri

3) define a specific IPP_STATUS_* enum variable for failing
Validate-Job, let the backend fail if ipp_status is that variable and
let error-policy handle the possible retry

Is some of them acceptable to implement it in CUPS?

Thank you in advance for any suggestions!

Have a nice day,


Zdenek

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C


--------------49169B00F6FAFA657D6C517D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Hi all,</p>
    <p class=3D"bz_comment_text" id=3D"comment_text_2">one of our RHEL
      customers hit an issue with IPP Validate-Job operation when using
      Lexmark CX727de printer.</p>
    <p class=3D"bz_comment_text">A print job occasionally fails after IPP
      backend sends IPP Validate-Job request to the printer, but the
      printer only sends TCP ACK packet after receiving the request, and
      doesn't send 'HTTP/1.1 100 Continue' or full response. When an
      user resubmits the job later, the printer sends the correct
      response and the print job ends successfully.</p>
    <p class=3D"bz_comment_text">I came to the conclusion it is a printer
      firmware bug and recommended reporting it to printer vendor,
      because the printer reports it is capable of Validate-Job
      operation (checked via ipptool), but it occasionally fails. <br>
    </p>
    <p class=3D"bz_comment_text">In this email I would like to ask if
      there can be a way how to work around such printer issues within
      CUPS, which can be aligned with RFC and PWG standards, and can be
      merged into OpenPrinting/cups project.</p>
    <p class=3D"bz_comment_text">I have several ideas:</p>
    <p class=3D"bz_comment_text">1) Validate-Job operation is 'only'
      recommended since IPP 2.0, so the backend would have printed only
      warning if Validate-Job failed and the IPP protocol used for
      communication is 2.0 or newer</p>
    <p class=3D"bz_comment_text">2) configurable retries for Validate-Job
      operation - this idea came up from printer behavior (Validate-Job
      works after N retries) and from knowledge there are already
      configurable variables in backends via device uri</p>
    <p class=3D"bz_comment_text">3) define a specific IPP_STATUS_* enum
      variable for failing Validate-Job, let the backend fail if
      ipp_status is that variable and let error-policy handle the
      possible retry</p>
    <p class=3D"bz_comment_text">Is some of them acceptable to implement
      it in CUPS?</p>
    <p class=3D"bz_comment_text">Thank you in advance for any suggestions!<=
/p>
    <p class=3D"bz_comment_text">Have a nice day,</p>
    <p class=3D"bz_comment_text"><br>
    </p>
    <p class=3D"bz_comment_text">Zdenek<br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C
</pre>
  </body>
</html>

--------------49169B00F6FAFA657D6C517D--

--------------C5A39EC5BC43585E851D80CB
Content-Type: application/pgp-keys;
 name="OpenPGP_0x15AA6A7F4D4227D7.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0x15AA6A7F4D4227D7.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFbZeMIBCADLGScYlbdbhspY7PL46UYJ1GGROaK887NCRJUU4IhHcLWxp7RIURUVT6yrEY0=
L
dRck5GzzF5M/VovU/9IAdEdDk5MaPT/K2MELK4fdLTyNAGfJjSzYLVdPac6JyxUg4CRPjqtfBcC=
2
k7ddQ+cxNJN1Fk2dokApST+0yzLwRmdZQAhky3pQZBStfNlXxHQ4XRTGOhiDZkNar5DB8Fakb2P=
/
wUDSZX2J1eE4uVb3xZAyVAgzYkeOMCuU8aEqDZCWeKh+pWfdYU4ZOkS6f/P+svIocv13Xz1Fzsp=
X
i/0bp0mgjz5bLkSzNnMvX6LXR8tbMj/D82O+RSH0eNYvMazkTM0pABEBAAHNQFpkZW5layBEb2h=
u
YWwgKEFzc29jaWF0ZSBTb2Z0d2FyZSBFbmdpbmVlcikgPHpkb2huYWxAcmVkaGF0LmNvbT7CwHg=
E
EwECACICGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJbs4XwAAoJEBWqan9NQifXPpUH/3S=
O
LxBbeMtt5BYIKZFKeKzdd1zK0On1ng92frPlxlshYkC/aZwiqPDz8sB9Y14QmeiGI2Esdtw1she=
N
hsqT+FIkhqCU0GevFv30uHpdZLEwyIXasTmm7M/mahEON8pLhYTpc4UVL9S5j0/nO8c8GAGARHY=
5
0zjNhnqAauKR8CzCWIi8L6apdlF3RBxIya/+bezvqfhMN3gZmyCMhU17ZStL1Pg4g9mQjHYDo0v=
x
RHP2O9xnXTJenoY6edg/0+brIypUu6K70J7dTHySsZxd03vRECZq4ZVRxUyrgjWemdd7D92Yaw1=
t
9Z8FiCB3K6osTjUv2ZLhEeHbpt6r46KYHNnCRgQTEQIABgUCWEAQzQAKCRBf8G8puh4BOzS/AJ9=
b
6dI4Bv7r4Wo9Kk+pAG6sg89H/wCdGWfCjRdw2nxGf4wp9eukeZzOHvfCwFwEEAECAAYFAlg+79k=
A
CgkQ2OHADgduhAviqggAnWdENr/s9CCsvHIanpruqC8zHKX2Pdpan5A8pgtIz2I3ANcI1eHh4ZK=
y
s04MbK/dmyaUGZGpdPSi7OPsSN3PexxE7vsHV0KFCoFvPVdMEpVetwbQyyt5Du7aLHXRXn/hUyF=
R
mt4/yfLay3kTn4lgg4Xnx1AyybK5Bt3Xk6q95/Yrnu6i06XeK4sgQTOuHU/RKGx9y7K6ZhDkTqZ=
W
wRY/BY9F5tUyyuIm6weeUIedz2AU7Fvzqzp0aW35J72ucIfkCJTtDhQJJikWilqnjw4eZikTM/K=
V
HNh+jTKHl3CD1+lKgouEWTMU5OYNYVZedFrh3GkBcLVLuw/FqJY88X4Cn8LAXAQQAQgABgUCWFQ=
W
UAAKCRC5NrdHJYkzWP8QCACa9nADVSXUlT8zrA5ecVxx33LvVPk+Muapw+FgfIXSJQarYkrzf1S=
n
hDUE7FBxfS6RZY57fhEYfkEnka2sg34t5CCRFwzrez3Sy70cSWLsWVHl3l7zfypAESQ9zHvvFft=
p
+G8Zkj7BRv8b9zZSIaef0zhAQOUCmUhzUIQBCypyBCr1QZxvv+vFxUgTjBbDHDRwiwMq0LkHyEN=
r
w2vPA5uOkMBoskXuRPS5UEbRZrRyqwX1UuuK+OK+Y07YiFJVZ8VeQuXrsub8w9XyH1VSGPO6UuD=
P
HxoprDGFzvdpBMNjzI4TtpmjDlVTBWQNLYSSyhKMMGmu1VfTVhe+z8x1YIutwsBcBBMBCAAGBQJ=
Y
V9WbAAoJEMWIetUdnzwtO5cH+QHSLvp0NSQm4F3UhJ5qftORq8FDI5Aha49EH7auLq/hV3N7cGn=
m
ZKJKcrsr/EAopBDZt3MvUp37q1eqaeVJ7osMndNhPG1QSksa1Wn5X/NIQtBHkp+tRx9OnhkF/Fe=
P
gNT9RELJW0DH94ai5IE6QzRbdgWMJIXFpFrj5A4SbSDt8+P4b97nJnidRaDw957RW4vaQQYss0k=
o
0dQeNuvRn4WvFfszP0bn2kEy2cmmg5QBH1G0H4UfPGcidpica0PfRxIDwA1lAtTxNmS1NrwiBbC=
R
NJv5UqDTirmb/Y/l3ZogY3VZsuDexhgjbaZYiQxjuY3jaawPG9DMab7nSJZrdW7CwVwEEwEIAAY=
F
AlhAG/oACgkQXgo6wF/WSvVJUBAAiRHwfI5hQG5NK8jtJ0+YVJ6hfSMiBlnPuv9sU31B0QiU1KT=
b
yGoeKwWN824TMvSuwIN4KK4+09AM7FuAK/IYBLNddznnQ9odSZ1mG5Ht7TaxSjz/3mWyuQ7BM03=
O
rcucpziFpf2OI8qsU3SX6Dkw80l4U7puyIoxPymsrUvCRhqhP6S3yZjb4i8yhVjNfEuJeFERDS9=
2
Un9LXrYPuvsImo6V/b5A7k98Wm3yWpjHjGgGZZsgzDp1bqmxOJbHnZr3uXLstwjMNy/KNCMRDYE=
4
jNl0bT8NP058IubCvuUjk9efEMMTvszFZKXlWDdRHqvAzuwiboJrma5SH2scwLX3051KzPNRLFo=
g
pv9/L1ATCnpHAkTav/wnfyWh10pAW+M11KEABrbwCf916hsebRZv2ea6uF/gpXrh90FVupXdM7G=
o
Xmo0LvBQHnN44GHUl6lcqJdKnOJLQDQ050cK2logMAZVKbUX34KOuGfvgMR+PPoPP1BCa+HC78Y=
v
oOvzuvxbvm3UShnbcHGXBNxNhcxYJbP4EfKy0Qjb1HqOXrjBT19dDuPtn/lqgyGfYkcoar4eyzK=
M
DyueIUgFrg4QA74R54mrvW/IYlu5+mZKqO38IVmASBz2DtD2DRqtrxA/BvnZUGEv4h/TxBxFzEA=
F
AtHCiysOacTXnvpgW6q4sBlfQgfCwHoEEAEIACQFAlg+9s8DBQJ4GYY8W14+XStbQC5dcmVkaGF=
0
XC5jb20+JAAACgkQjH07+2XGyXMvKAf/RX5iJERSS0mKJe4lp4hsdwfbZAoShueJdk+/Obvpu5+=
1
DKqCFs9Nl5LFcsNxV1QYeWrvNgKmJoOL5g/ro1yXZzgdcIXUtTlKO6LS0stxpFKYDZl8hfmMAYp=
w
s1CktDCiSdbgTsRzXWwgP2Gg6vpLaxd8eyBHaJ+FqiP7mzqW+7oa0rbA3GANc6r+Bxa/gDIfeh5=
L
zT39VdhEdS9MnjRKp6Ua5VgjCk1Up18INAU4gYcBzIcBOtnYYPWRGIGHVJ2AayQgRGG83POsO+K=
8
F7dBMAvevFBOfmlieU8wW7aySza5Zmg4iWbBZ4icJmtPf+9LBeSSs5CwVkCWhJoU4ro77cLAfgQ=
T
AQIAKAUCVtl4wgIbAwUJAeEzgAYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQFapqf01CJ9f=
N
mAf+JDEF4AsAH1+0UEhUkaH1hM4FPWKr3nw4kfSfy8Pwlfro1idg4YgkNsyIWMw7MSycxnz/fNe=
p
7Nx8orPOipzRK49nJNPdl265JsXBHQmKTizawsUPqwMWyLbkW30bYdbKCqeEjzl1CdHdQuMf/ru=
a
HbS4vzRiADNyKVS0fz8EBPbrv/goIfOmTzfa8yJEsef8UYNryk5dc+no2HXcy3Pe2XyDmb+FdUr=
J
+OA9vJpadMpKNoOgTSyR9ZmQvj6CC20iJYWKQxsqXdfdmWmqzAn9AaKZF2umdwyD5uzbigH40hm=
r
3qAue4VZ0xh89P7LmHL8PeXIhwl19yZ8EVLRGKAfxsLAeAQTAQIAIgIbAwYLCQgHAwIGFQgCCQo=
L
BBYCAwECHgECF4AFAlhrm+EACgkQFapqf01CJ9eeDwf/eTK6jK4/AzzEizPXqBCFis9gG+yh2vO=
L
1gvXeMkpjqB/4X8hEXKOCpSIGhziZ3F0Nt6XTOkLrBvya9szlS4xBafsqePGsAQCdbdrykkrQmU=
v
s7Er8OkbYG4dnHwLKnb+q0/orLmII6Qu99cEqRICGdHTdTmYR4Pqf9y1IxyxONAjWUBIanphZns=
M
R8r6eAgbn7Ky5B+KyxZ+U5+aFRElDhPFtiuNQ33KNIVwSS+vcJDOB2PA7c77bKl0PIq5fs7I9vO=
N
hxMJL6At9IHhyNSGcX7/ecFoVeHO2466nsIlEybTD+A8O8662FDXbaT71ZfyNWay4121MfW/JQu=
3
hDJ8k87ATQRW2XjCAQgArdEQCzfbASdoA1+WEQGmL3KT6mQYIKTWOtly6SyruQZ1kTZOKlqN0z4=
w
o+1ntPDK6wDPZ/Xqy7zB0VbakZq6KRxQVnRyFzMIeXyuBCKEbomWkQGwjbvzDcNfDZnAL8Jt4me=
S
/OhXiX/cKZEwFyvmkY3bXyUeb9GFVcvsDUMOmetxrww73yd7UEOXi6xiRR51srTdpQnNpGAWcby=
m
Oy9OvuKXvKBpwk5diuZfhW4J13EhIxIDW1lQd2Va/F5Ng/SlkyI+tYTYPpZtMSBZgLgbmXuZdXW=
z
MCQw5Pf8bThDnX4xl5XWLTJE4F2Y1NS8tVJGsJmiJJfzmjWGLdzWksE7bQARAQABwsBfBBgBAgA=
J
AhsMBQJYa5vhAAoJEBWqan9NQifXkPMH/2X2ZY+mqZpGQ3NKlFwTWAMLnWtLWuMBYaz3zVdHKfK=
O
45b+aZ40AOVR72thEjbdQ8oDE6q9G4Bwzw3iWQsYfNHQX3TRFcFqWsngRp0HSZpkhRSyrnOw76j=
f
yKrHycVJ6OKwUdll4Km3fTk7YbqYT/sXkkbH1IA33iZoClvHClEAwsK7fhTFJRPMe2Ah0gzKQOH=
/
XNMLP+9WUuvdMZZyi0HFrT2UkDBnp8U2ZsxVWWgmxAfoMImH18oDCqBYhHXDkX5mQfnTaGdanKe=
9
peO53ul5Eb8zavTdtyOUdgKhUwt7OvS0onRNv+QZurdmYaerzmNW70p2KVGfzf4gCwaOK70=3D
=3D2Huw
-----END PGP PUBLIC KEY BLOCK-----

--------------C5A39EC5BC43585E851D80CB--

--jsyinX7Qe89P3vByLsFfqNopmMTpX2wdT--

--H1Kuuog5LCRHpgOVlh7q0pEMhYr0AWdJ9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl+QNT4FAwAAAAAACgkQFapqf01CJ9do
1ggAhMGB74P078k4Tzj3oUn6m0J5cCo49uaqP/hn1U/9Km6xaPEsQlOLEYZlEw6cZESWEolf6Y62
+qNz3VYJQRoHdILGxFWue4LzOUx/aI9PXtEWxFSr5WDGW5ldcxD6l/1klTim7jAWNIpnohoUJe48
KJkE6QmMIcU2VYBkDwbT2EEW2mHdlblUj0iwPJ3OIN7SxgJ9UvrH1U5AD2IwrE7WnTRONkMBoExk
5b6jHMNodUdR5G+YKkt0yXwNW2kDN2rf3ryHb9UOTy3Lv4bZ1BJBwcDqE94fDvJeup7QiD9ibkpy
QYjhaaE5UesNJGsYtuiI3OIxMcczCrPEf5Hcyy+Mbg==
=iLfX
-----END PGP SIGNATURE-----

--H1Kuuog5LCRHpgOVlh7q0pEMhYr0AWdJ9--

