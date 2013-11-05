Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_3iOUvcCw0oDHaPAwrjrVrg)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1383325362.2522.10.camel@rubik>
Date: Mon, 04 Nov 2013 20:12:04 -0500
Message-id: <F503706A-3677-43E8-97AF-7AB5921B3CE9@apple.com>
References: <1383325362.2522.10.camel@rubik>
Subject: Re: [Printing-architecture] [patch] cups-1.7.0: stringpool
	corruption	fix
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_3iOUvcCw0oDHaPAwrjrVrg)
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: quoted-printable

Tim,

Updated patch attached; aside from adding the local string copy (which =
I=92ve made outside the int/string check), I also made the =93value=94 =
parameter const since we definitely don=92t want to be fiddling with =
that string.

Thanks!


--Boundary_(ID_3iOUvcCw0oDHaPAwrjrVrg)
Content-type: application/octet-stream; x-mac-type=54455854; x-unix-mode=0664;
 name=rdar15382819.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar15382819.patch

Index: scheduler/printers.c
===================================================================
--- scheduler/printers.c	(revision 11372)
+++ scheduler/printers.c	(working copy)
@@ -1870,12 +1831,13 @@
 cupsdSetPrinterAttr(
     cupsd_printer_t *p,			/* I - Printer */
     const char      *name,		/* I - Attribute name */
-    char            *value)		/* I - Attribute value string */
+    const char      *value)		/* I - Attribute value string */
 {
   ipp_attribute_t	*attr;		/* Attribute */
   int			i,		/* Looping var */
 			count;		/* Number of values */
-  char			*ptr,		/* Pointer into value */
+  char			*temp,		/* Temporary copy of value string */
+			*ptr,		/* Pointer into value */
 			*start,		/* Start of value */
 			quote;		/* Quote character */
   ipp_tag_t		value_tag;	/* Value tag for this attribute */
@@ -1892,10 +1854,21 @@
   }

  /*
+  * Copy the value string so we can do what we want with it...
+  */
+
+  if ((temp = strdup(value)) == NULL)
+  {
+    cupsdLogMessage(CUPSD_LOG_ERROR,
+                    "Unable to duplicate value for \"%s\" attribute.", name);
+    return;
+  }
+
+ /*
   * Count the number of values...
   */

-  for (count = 1, quote = '\0', ptr = value;
+  for (count = 1, quote = '\0', ptr = temp;
        *ptr;
        ptr ++)
   {
@@ -1943,15 +1916,15 @@
       return;
     }

-    for (i = 0; i < count; i ++)
+    for (i = 0, start = temp; i < count; i ++)
     {
-      if ((ptr = strchr(value, ',')) != NULL)
+      if ((ptr = strchr(start, ',')) != NULL)
         *ptr++ = '\0';

-      attr->values[i].integer = strtol(value, NULL, 10);
+      attr->values[i].integer = strtol(start, NULL, 10);

       if (ptr)
-        value = ptr;
+        start = ptr;
     }
   }
   else
@@ -1993,7 +1966,7 @@
       return;
     }

-    for (i = 0, quote = '\0', ptr = value; i < count; i ++)
+    for (i = 0, quote = '\0', ptr = temp; i < count; i ++)
     {
       for (start = ptr; *ptr; ptr ++)
       {
@@ -2022,6 +1995,8 @@
       attr->values[i].string.text = _cupsStrAlloc(start);
     }
   }
+
+  free(temp);
 }


Index: scheduler/printers.h
===================================================================
--- scheduler/printers.h	(revision 11372)
+++ scheduler/printers.h	(working copy)
@@ -166,7 +166,8 @@
 						 ipp_attribute_t *attr);
 extern void		cupsdSetDeviceURI(cupsd_printer_t *p, const char *uri);
 extern void		cupsdSetPrinterAttr(cupsd_printer_t *p,
-			                    const char *name, char *value);
+			                    const char *name,
+			                    const char *value);
 extern void		cupsdSetPrinterAttrs(cupsd_printer_t *p);
 extern int		cupsdSetPrinterReasons(cupsd_printer_t *p,
 			                       const char *s);

--Boundary_(ID_3iOUvcCw0oDHaPAwrjrVrg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT



On Nov 1, 2013, at 1:02 PM, Tim Waugh <twaugh@redhat.com> wrote:

> There is a long-standing stringpool corruption issue in printers.c.
> 
> Attribute values are stored in the global stringpool (implemented in
> cups/string.c), which is reference-counted storage for strings. Strings
> are stored in a sorted, unique array (cups_array_t, implemented in
> cups/array.c).
> 
> If the array is found to be unsorted, or a duplicate is found, the
> underlying cups_array_t object switches into "non-unique" mode and
> stores new strings by adding to the pool rather than incrementing the
> reference count for an existing string (see the cups_array_add()
> function).
> 
> The accessor functions for the stringpool return "char*" types, but
> these are strings which must not be modified -- doing so will trigger
> the behaviour described above.
> 
> In scheduler/printers.c, there are a couple of places which modify
> attribute values in-place. Attached is a patch to fix them.
> 
> Tim.
> */
> 
> <cups-stringpool-corruption.patch>_______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

__________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_3iOUvcCw0oDHaPAwrjrVrg)--
