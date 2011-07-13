MIME-Version: 1.0
Date: Wed, 13 Jul 2011 12:11:10 -0600
Message-ID: <CAGC3nLChsuKjESgkhGfkJW13TnRTg1x5eFYSpGwSbLPa8XSDeg@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=bcaec520e75f50b7d504a7f757d1
Subject: [Printing-architecture] Daniel's Progress Report
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

--bcaec520e75f50b7d504a7f757d1
Content-Type: text/plain; charset=UTF-8

Sorry for subjecting you guys to my audio cutting out during the conference
call.

What I wanted to report was that my perl code is functionality complete to
the C programs. With a few, minor, Till approved exceptions. Presently I am
working on replacing DB.pm's (The primary library of foomatic-db-engine) use
of the C programs with the Perl library. Once that is done I will be writing
another library that allows the importation of foomatic's data into the a
SQL database. Right now openprinting uses a set of php scripts to import the
database into the mysql database used by the website. This new perl library
will alllow us to import into an arbitrary sql database, targeting sqlite
and mysql in its first iteration. This will allow foomatic-db-engine to use
sqlite as a fully functional backend.

Overall I am ahead of schedule which will allow me time to do some
miscellaneous work after the sql import library. One thing I am looking
forward to is making the human readable names of options consistent,
presently many similar options use slightly varying human readable names.
Consistensy in this area will allow us to take better advantage of
downstream's translation efforts. The desktop enviroments have considerable
translation volunter base and while Foomatic-db-engine does support
muli-language, none of our xml's take advantage of this.

Finally I would like to report on Japan mailing list's efforts to organise a
meeting. They had tentatively planned for the 13th japan time(yesterday) but
were not able to secure the Linux Foundation room to meet in, they are now
attempting to organise sometime early august. Miyata has said that he will
contact us when they are ready to arrange an international call.

Daniel

--bcaec520e75f50b7d504a7f757d1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry for subjecting you guys to my audio cutting out during the conference=
 call.<br><br>What I wanted to report was that my perl code is functionalit=
y complete to the C programs. With a few, minor, Till approved exceptions. =
Presently I am working on replacing DB.pm&#39;s (The primary library of foo=
matic-db-engine) use of the C programs with the Perl library. Once that is =
done I will be writing another library that allows the importation of fooma=
tic&#39;s data into the a SQL database. Right now openprinting uses a set o=
f php scripts to import the database into the mysql database used by the we=
bsite. This new perl library will alllow us to import into an arbitrary sql=
 database, targeting sqlite and mysql in its first iteration. This will all=
ow foomatic-db-engine to use sqlite as a fully functional backend.<br>
<br>Overall I am ahead of schedule which will allow me time to do some misc=
ellaneous work after the sql import library. One thing I am looking forward=
 to is making the human readable names of options consistent, presently man=
y similar options use slightly varying human readable names. Consistensy in=
 this area will allow us to take better advantage of downstream&#39;s trans=
lation efforts. The desktop enviroments have considerable translation volun=
ter base and while Foomatic-db-engine does support muli-language, none of o=
ur xml&#39;s take advantage of this.<br>
<br>Finally I would like to report on Japan mailing list&#39;s efforts to o=
rganise a meeting. They had tentatively planned for the 13th japan time(yes=
terday) but were not able to secure the Linux Foundation room to meet in, t=
hey are now attempting to organise sometime early august. Miyata has said t=
hat he will contact us when they are ready to arrange an international call=
.<br>
<br>Daniel<br>

--bcaec520e75f50b7d504a7f757d1--
