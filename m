Message-ID: <116DB56CD7DED511BC7800508B2CA53735CF78@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Date: Wed, 9 Apr 2003 11:13:59 -0700 
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Subject: [Printing-architecture] FW: [printing-driver]Now -  FSG Printing Driver conference call 0
 4/09/03
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
To: printing-architecture@freestandards.org


-----Original Message-----
From: Glen Petrie [mailto:glen.petrie@eitc.epson.com]
Sent: Wednesday, April 09, 2003 1:00 PM
To: 'McDonald, Ira'
Subject: FW: [printing-driver] FSG Printing Driver conference call
04/09/03




Rgds,
Glen W. Petrie
Manager, Software Printing Solutions
Epson Imaging Technology Center
150 River Oaks Parkway, Suite 200
San Jose, CA, 95134
Voice: 408.576.4131  Fax: 408.474.0511

-----Original Message-----
From: printing-driver-admin@freestandards.org
[mailto:printing-driver-admin@freestandards.org]On Behalf Of Mark Hamzy
Sent: Tuesday, April 08, 2003 8:17 AM
To: printing-driver@freestandards.org
Subject: [printing-driver] FSG Printing Driver conference call 04/09/03




Wednesday, April 9

GMT 18:00
EDT 14:00
CDT 13:00
MDT 12:00
PDT 11:00

Tie Line:    650-3239
Toll Free:   1-800-497-2024
Toll Number: 1-719-457-3821
Passcode:     160458

Topics

Perhaps we should add an API
   get device handle ( "display_deviceX" )
   <- load_hintsX

Discuss Job Properties:

FeedOrientation
   + LongEdgeFirst
   + ShortEdgeFirst

input-tray?
TRAY_AUTO,                /* aka default */
TRAY_USE_PRINTER_SETTING,
TRAY_AUTO_FEEDER,
TRAY_AUTOSWITCH,
TRAY_TRAY,
TRAY_UPPER_TRAY,
TRAY_LOWER_TRAY,
TRAY_MULTI_TRAY,
TRAY_CASSETTE,
TRAY_UPPER_CASSETTE,
TRAY_LOWER_CASSETTE,
TRAY_MULTI_CASSETTE,
TRAY_OPTION_CASSETTE,
TRAY_MANUAL_FEEDER,
TRAY_MANUAL_ENVELOPE,
TRAY_PAPER_FEEDER,
TRAY_ENVELOPE_FEEDER,
TRAY_CSF,
TRAY_FRONT_CONTINUOUS,
TRAY_REAR_CONTINUOUS,
TRAY_SINGLE_SHEET,
TRAY_SHEET_FEEDER,
TRAY_BIN_1,
TRAY_BIN_2,
TRAY_PORTABLE_SHEET,
TRAY_TRAY_1,
TRAY_TRAY_2,
TRAY_TRAY_3,
TRAY_TRAY_4,
TRAY_TRAY_5,
TRAY_TRAY_6,
TRAY_CASSETTE1,
TRAY_CASSETTE2,
TRAY_CASSETTE3,
TRAY_CASSETTE4,
TRAY_CASSETTE5,
TRAY_FRONT_TRAY,
TRAY_OPTION_MULTI_SF,
TRAY_MULTI_FEEDER,
TRAY_PAPER_DECK,
TRAY_TRACTOR_UNIT,
TRAY_ROLL_1,
TRAY_ROLL_2,
TRAY_ROLL_3,
TRAY_ROLL_4,
TRAY_ROLL_5,
TRAY_AUXILIARY_TRAY,
TRAY_LARGE_CAPACITY_TRAY,
TRAY_HIGH_CAPACITY_FEEDER,
TRAY_ZERO_MARGINS

Media
   + na_letter_8.5x11in
   + iso_a4_210x297mm
   + ...
   + MediaCol
     - collection of all MediaXXX
MediaColor
   + nocolor
   + white
   + pink
   + yellow
   + blue
   + green
   + buff
   + goldenrod
   + red
   + gray
   + ivory
   + orange
MediaBackCoating
MediaFrontCoating
   + None
   + Glossy
   + HighGloss
   + SemiGloss
   + Satin
   + Matte
MediaGrain
MediaTooth
   + Fine
   + Medium
   + Coarse
MediaType
   + stationery
   + transparency envelope
   + envelope-plain
   + envelope-window
   + continuous
   + continuous-long
   + continuous-short
   + tab-stock
   + pre-cut-tabs
   + full-cut-tabs
   + multi-part-forms
   + labels
   + multi-layer
   + screen
   + screen-paged
   + photographic
   + cardstock
   + other

MEDIA_PLAIN,
MEDIA_TRANSPARENCY,
MEDIA_GLOSSY,
MEDIA_SPECIAL,
MEDIA_COATED,
MEDIA_BACKPRINT,
MEDIA_CLOTH,
MEDIA_THICK,
MEDIA_HIGH_GLOSS_FILM,
MEDIA_HIGH_RESOLUTION,
MEDIA_SPECIAL_360,
MEDIA_SPECIAL_720,
MEDIA_PLAIN_ENHANCED,
MEDIA_IRON_ON,
MEDIA_LABECA,
MEDIA_THERMAL,
MEDIA_CD_MASTER,
MEDIA_CARDBOARD,
MEDIA_POSTCARD,
MEDIA_PHOTOGRAPHIC_PAPER,
MEDIA_PHOTOGRAPHIC_LABEL,
MEDIA_HP_PREMIUM_PAPER,
MEDIA_HP_PHOTOGRAPHIC_PAPER,
MEDIA_ENVELOPE,
MEDIA_PREPRINTED,
MEDIA_LETTERHEAD,
MEDIA_PREPUNCHED,
MEDIA_LABELS,
MEDIA_BOND,
MEDIA_RECYCLED,
MEDIA_COLOR,
MEDIA_CARDSTOCK,
MEDIA_ROUGH,
MEDIA_ARCHIVAL_MATTE_PAPER,
MEDIA_BRIGHT_WHITE_INK_JET_PAPER,
MEDIA_COLORLIFE_PHOTO_PAPER,
MEDIA_DOUBLE_SIDED_MATTE_PAPER,
MEDIA_HEAVYWEIGH_MATTE_PAPER,
MEDIA_PREMIUM_SEMIGLOSS_PHOTO_PAPER,
MEDIA_PHOTOGRAPHIC_INK_JET_PAPER,
MEDIA_CUSTOM_1,
MEDIA_CUSTOM_2,
MEDIA_CUSTOM_3,
MEDIA_CUSTOM_4,
MEDIA_CUSTOM_5,
MEDIA_SPECIAL_BLUE,
MEDIA_SPECIAL_GREEN,
MEDIA_SPECIAL_GREY,
MEDIA_SPECIAL_IVORY,
MEDIA_SPECIAL_LETTERHEAD,
MEDIA_SPECIAL_ORANGE,
MEDIA_SPECIAL_PINK,
MEDIA_SPECIAL_PURPLE,
MEDIA_SPECIAL_RED,
MEDIA_SPECIAL_YELLOW,
MEDIA_SPECIAL_USER_COLOR,
MEDIA_TABSTOCK,
MEDIA_TABSTOCK_2,
MEDIA_TABSTOCK_3,
MEDIA_TABSTOCK_4,
MEDIA_TABSTOCK_5,
MEDIA_TABSTOCK_6,
MEDIA_TABSTOCK_7,
MEDIA_TABSTOCK_8,
MEDIA_TABSTOCK_9,
MEDIA_THICK_1,
MEDIA_THICK_2,
MEDIA_THICK_3,
MEDIA_THICK_BLUE,
MEDIA_THICK_GREEN,
MEDIA_THICK_GREY,
MEDIA_THICK_IVORY,
MEDIA_THICK_LETTERHEAD,
MEDIA_THICK_ORANGE,
MEDIA_THICK_PINK,
MEDIA_THICK_PURPLE,
MEDIA_THICK_RED,
MEDIA_THICK_YELLOW,
MEDIA_THICK_USER_COLOR,
MEDIA_TRANSLUCENT,

NumberUp
   + PresentationDirectionNumberUp
      - TorightTobottom
      - TobottomToright
      - ToleftTobottom
      - TobottomToleft
      - TorightTotop
      - TotopToright
      - ToleftTotop
OrientationRequested
   + Portrait
   + Landscape
   + ReversePortrait
   + ReverseLandscape
OutputBin
   + Bottom
   + Center
   + FaceDown
   + FaceUp
   + LargeCapacity
   + Left
   + MailboxN
   + Middle
   + MyMailbox
   + Rear
   + Right
   + Side
   + StackerN
   + Top
   + TrayN
PrintQuality
   + Draft
   + Normal
   + High

RESOLUTION_DRAFT,
RESOLUTION_NORMAL,
RESOLUTION_HIGH,
RESOLUTION_FINE,
RESOLUTION_GROUP_3,
RESOLUTION_GROUP_4,
RESOLUTION_LOW,
RESOLUTION_MEDIUM,
RESOLUTION_PHOTO_QUALITY,
RESOLUTION_PRESENTATION

PrinterResolution
   + integerXinteger
SheetCollate
   + Uncollated
   + Collated
Sides
   + OneSided
   + TwoSidedLongEdge
   + TwoSidedShortEdge
   + Tumble
Staple
   + None
   + Staple
   + StapleTopLeft
   + StapleBottomLeft
   + StapleTopRight
   + StapleBottomRight
   + StapleDualLeft
   + StapleDualTop
   + StapleDualRight
   + StapleDualBottom
Stitching
   + StitchingLocation
      - integer
   + StitchingOffset
      - integer
   + StitchingReferenceEdge
      - Bottom
      - Top
      - Left
      - Right

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


_______________________________________________
printing-driver mailing list
printing-driver@freestandards.org
http://freestandards.org/mailman/listinfo/printing-driver

