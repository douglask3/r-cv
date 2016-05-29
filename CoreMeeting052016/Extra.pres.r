###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')
Short       = TRUE

makeInvisable <- function(txt) paste('<div class = "invis">', txt, '</div>')

###############################################################
## Basic Infomation                                          ##
###############################################################
Top = NULL
TalkTitle = "Modelling Fire in the Earth System"

Name    = c("Douglas Kelley",
            "Core ",
            TalkTitle = "UKESM Core Meeting 25/05/16")

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")

ImagesPath = 'CoreMeeting052016/images/'

Images.index = c(Index0        = 'PresStructure_index0.png',
                 Index1        = 'PresStructure_index1.png',
                 Index2        = 'PresStructure_index2.png',
                 Index3        = 'PresStructure_index3.png',
                 Index4        = 'PresStructure_index4.png',
                 Index5        = 'PresStructure_index5.png')

Cite = c(Prentice2011 = "Prentice, IC, <b>Kelley, DI</b>, et al. (2011). Modeling fire and the terrestrial carbon balance. Global Biogeochemical Cycles, 25(3)",
         Prentice2011b = "Prentice, IC, <b>Kelley, DI</b>, et al. (2011). Modeling fire & terrestrial carbon balance. GBC",
         Harrison2011 = "Harrison, SP, Marlon, J, Bartlein, PJ (2010). Fire in the Earth system. In Changing climates, earth systems and society",
         Kelley2014   = "<b>Kelley, DI</b> (2014). Modelling Australia Fire Regimes",
         HarrisonSub  = 'Harrison, SP, & <b>Kelley, DI</b> (in press). Projected changes in
                         Australian fire regimes during the 21st century.',
         Kelley2013   = "<b>Kelley, DI</b>, et al. (2013). A comprehensive
                         benchmarking system for evaluating global
                         vegetation models. Biogeosciences, 9(11)",
         Kelley2014a  = "<b>Kelley, DI</b>, Harrison, SP, & Prentice, IC (2014).
                         Improved simulation of fire–vegetation interactions in the LPX-Mv1.
                         GMD, 7(5)",
         Kelley2014b  = "<b>Kelley, DI</b>, & Harrison, SP (2014). Enhanced
                         Australian carbon sink despite increased wildfire during the
		         21st century. ERL, 9(10)",
         Archibald2013= "Archibald, S, Lehmann, C, Gomez-Dans, J, Bradstock, R (2014)
                         Defining pyromes and global syndromes of fire regimes. PNAS",
         Lehmann2011  = "Lehmann, C, Archibald, S, Hoffmann, W, Bond, W (2011),
			 Deciphering the distribution of the savanna biome. New Phyt., 191",
         Bond         = "Bond, WJ, Woodward, FI, Midgley, GF (2005), The global distribution
			 of ecosystems in a world without fire. New Phyt., 165",
         Murphy2013 = "Murphy, BP, et al. (2013) Fire regimes of Australia: a
                       pyrogeographic model system. Journal of Biogeography 40(6)",
         Knorr2014  = "Knorr, W et al. (2014) Impact of human population density
                        on fire frequency at the global scale. Biogeosciences 11(4)",
         Archibald2009 = "Archibald, S, et al.
                         (2009), What limits fire? An examination of drivers of
                         burnt area in Southern Africa. GCB",
          Bistinas2013 = "Bistinas, I, et al. (2014).
                          Causal relationships versus emergent patterns in the
                          global controls of fire frequency. Biogeosciences",
        CTEM = "Arora, VK, & Boer, GJ (2005). Fire as an interactive component
            of dynamic vegetation models. Journal of Geophysical Research",
        vanDerWerf = "Van Der Werf, GR, et al. (2004). Continental-scale
                        partitioning of fire emissions, 1997 to 2001 El Nino/La Nina
                        period. Science",
        fireMip = "Hantson S, Arneth A, Harrison SP, Kelley DI, Prentice IC, et al.
                   (2016) Status & challenges of global fire modelling. Biogeosciences")

###############################################################
## Slide                                                     ##
###############################################################

###############################################################
## Title                                                     ##
###############################################################

Images.title = c(Title = 'ComputerFire.png')

TopPage   = list("slide",
                 Text = list(
                     Title = "UKESM Core Meeting. UoR 25/05/16",
                       SubHead = "Made in project: r-cv",
                       Text = paste(paste("Project URL:", gitRemoteURL()),
                                paste("Git version:", gitVersionNumber()), sep ="<br>")
                     ))

TitlePage2 = list("slide",
                 bgImage = Images.title['Title'],
                 H1 = paste(TalkTitle, "<br>
                         <h2>Douglas Kelley<h2>"))

TitlePage1 = TitlePage2
TitlePage1$H1 = paste("Fire in the Earth System", "<br><h2>Douglas Kelley<h2>")

TitlePage = list(TopPage, "New Slide", "New Slide", TitlePage1, "New Slide", TitlePage2)

# <ul class = "dashed">
#                                    <li class = "dashed"> Find model weaknesses </li>
#                                    <li class = "dashed"> Assess model development </li>
#                                    <li class = "dashed"> Justify model application </li>
# </ul>'

###############################################################
## Introduction                                              ##
###############################################################
# Importance of Fire
    # World without fire
# Where fire occurs
# Controls on fire
# What is fire
    # Fire regimes
# Vegetation adpatations (carbon)
# Modelling fire
    # FireMIP
    # Simple Model
    # Process based model

###############################################################
## Importance of fire                                        ##
###############################################################
# 3- 4 Mm2 area burn every year
# 2.8 PgC/year
Images.Importance = c(CarbonFlux1      = "CarbonFlux1.png",
		              CarbonFlux2      = "CarbonFlux2.png",
                      CarbonRS1        = "CarbonRS1.png",
                      CarbonRS2        = "CarbonRS2.png",
                      worldWithoutFire = "withoutFire.png",
                      Cost             = "cost.png",
                      trace            = "Trace.png")

SectionTitle = "Why is modelling fire important?"

List = c("Inter-annual Variablity in CO<sub>2</sub>",
	 "Contrubutation to radiative forcing",
	 "Trace gas emissions",
	 "Vegetation Impacts", # World without fire
	 "Vegetation adpatations",
	 "Cost")

ImageSlide = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = "Carbon Flux"
                ))

Importance = list("slide",
		 Text = list(
                    Title = SectionTitle,
                    Text = List))

Importance1 = Importance2 = Importance3 = Importance4 =
	Importance5 = Importance6 = Importance

Importance1[[2]]$Text[2:6] = makeInvisable(Importance1[[2]]$Text[2:6])
Importance2[[2]]$Text[3:6] = makeInvisable(Importance2[[2]]$Text[3:6])
Importance3[[2]]$Text[4:6] = makeInvisable(Importance3[[2]]$Text[4:6])
Importance4[[2]]$Text[5:6] = makeInvisable(Importance4[[2]]$Text[5:6])
Importance5[[2]]$Text[6:6] = makeInvisable(Importance5[[2]]$Text[6:6])

Carbon1 = ImageSlide

Carbon1[[2]]$Image  = Images.Importance['CarbonFlux1']
Carbon1[[2]]$Footer = Cite['Kelley2014']

Carbon2 = Carbon1
Carbon2[[2]]$Image = Images.Importance['CarbonFlux2']

traceGas = ImageSlide
traceGas[[2]]$SubHead = 'Trace Gas Emisions'
traceGas[[2]]$Image   = Images.Importance['trace']
traceGas[[2]]$Footer  = Cite['vanDerWerf']

vegImpacts = ImageSlide
vegImpacts[[2]]$SubHead = 'A world without fire'
vegImpacts[[2]]$Image   = Images.Importance['worldWithoutFire']
vegImpacts[[2]]$Footer  = Cite['Bond']

CarbonRS1 = ImageSlide
CarbonRS1[[2]]$SubHead = 'Adaptations and Carbon'
CarbonRS1[[2]]$Image   = Images.Importance['CarbonRS1']
CarbonRS1[[2]]$Footer  = Cite['Kelley2014b']

CarbonRS2 = CarbonRS1
CarbonRS2[[2]]$Image = Images.Importance['CarbonRS2']

cost = ImageSlide
cost[[2]]$SubHead = 'Cost of fire'
cost[[2]]$Image   = Images.Importance['Cost']
cost[[2]]$Footer  = Cite['Harrison2011']

Importance = list(Importance1, "New Page", Carbon1, "New Slide",
                      Importance3, "New Slide",traceGas, "New Page",
                      Carbon2, "New Slide",
		  Importance4, "New Page", vegImpacts, "New Slide",
          Importance5, "New Page", CarbonRS1, "New Slide", CarbonRS2, "New Slide",
          Importance6, "New Slide", cost)
###############################################################
## Where						                             ##
###############################################################
# Africa: 40% of global fire
Images.where = c(Where1 = "Where1.png",
		         Where2 = "Where2.png")

SectionTitle = "Where Fire occurs"

Where1 = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = "Mapped",
                    Image = Images.where['Where1'],
                    Footer = Cite['Prentice2011b']
                ))

Where2 = Where1
Where2[[2]]$SubHead = "Vegetation Types"
Where2[[2]]$Image   = Images.where['Where2']
Where2[[2]]$Footer  = Cite['Kelley2014']

Where = list(Where1, "New Page", Where2)

###############################################################
## Controls on fire                                          ##
###############################################################
Images.Controls = c("NPPmoist1" = "NPP_moist_control1.png",
                    "NPPmoist1A" = "NPP_moist_control1A.png",
                    "NPPmoist2" = "NPP_moist_control2.png",
                    "NPPmoist3" = "NPP_moist_control3.png",
                    "NPPmoist4" = "NPP_moist_control4.png",
                    "NPPmoist5" = "NPP_moist_control5.png",
                    "NPPmoist6" = "NPP_moist_control6.png",
                    "HumanVsLightn" = "HumanFireStarts.png",
                    "Arch2009"      = "ArchControls.png",
                    "SimFire"       = "KnorrPop.png",
                    "Yannis1"       = "Yannis1.png",
                    "Yannis2"       = "Yannis2.png",
                    "WhatIsFire"    = "WhatIsFire.png")
# Controls on fire
SectionTitle = "Controls on fire"

NPPmoist5 = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = "Unimodal relationship",
                    Image = Images.Controls['NPPmoist5']
                ))
NPPmoist1 = NPPmoist3 = NPPmoist5

NPPmoist1[[2]]$SubHead = "Net Primary Production"
NPPmoist1[[2]]$Image   = Images.Controls['NPPmoist1']

NPPmoist1A = NPPmoist1

NPPmoist1A[[2]]$Image = Images.Controls['NPPmoist1A']
NPPmoist1A[[2]]$Footer  = Cite['Lehmann2011']

NPPmoist2 = NPPmoist1
NPPmoist2[[2]]$Image   = Images.Controls['NPPmoist2']
NPPmoist1[[2]]$Footer = Cite['Murphy2013']

NPPmoist3[[2]]$SubHead = "Precipitation"
NPPmoist3[[2]]$Image   = Images.Controls["NPPmoist3"]

NPPmoist4 = NPPmoist3
NPPmoist4[[2]]$Image   = Images.Controls["NPPmoist4"]
NPPmoist3[[2]]$Footer  = Cite['Lehmann2011']


FireStarts = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = "What starts fires?",
                    Image = Images.Controls['HumanVsLightn']
                ))

HumanStartsInModels = list("slide",
                        Text = list(
                            Title = SectionTitle,
                            SubHead = "Models with human impact on burnt areas",
                            Text = c("P&S", "CTEM1", "CTEM2", "Li", "REGFIRM",
                                     "SPITFIRE", "LmFire","2/3 of Models since 2009")
                            ))
HumanFire1 = list("slide",
                Image = list(
                        Title = SectionTitle,
                        SubHead = "Direct Human Impact on fire",
                        Image = Images.Controls['Arch2009'],
                        Footer = Cite['Archibald2009']
                    ))

HumanFire2 = HumanFire3 = HumanFire1

HumanFire2[[2]]$Image = Images.Controls['SimFire']
HumanFire2[[2]]$Footer = Cite['Knorr2014']

HumanFire3[[2]]$Image = Images.Controls['Yannis1']
HumanFire3[[2]]$Footer = Cite['Bistinas2013']

HumanFire4 = HumanFire3
HumanFire4[[2]]$Image = Images.Controls['Yannis2']

WhatIsFire = list("slide",
            Image = list(
                    Title = "What is fire?",
                    SubHead = "Fire Regimes",
                    Image = Images.Controls['WhatIsFire'],
                    Footer = Cite['Archibald2013']
                ))

Controls = list(NPPmoist1, "New Page", NPPmoist1A, "New Slide", NPPmoist2, "New Slide",
                    NPPmoist3, "New Slide", NPPmoist4, "New Slide",
                    NPPmoist5, "New Slide",
                FireStarts, "New Page", HumanStartsInModels, "New Slide",
                HumanFire1, "New Page", HumanFire2, "New Slide",
                    HumanFire3, "New Slide", HumanFire4, "New Slide",
                WhatIsFire)

###############################################################
## LimFire                                                   ##
###############################################################
Images.LimFire = c(LimFire1   = "LimFire1.png",
                   LimFire2   = "LimFire2.png",
                   LimFire3   = "LimFire3.png",
                   LimFire4   = "LimFire4.png",
                   LimFire5   = "LimFire5.png",
                   fireMip1   = "fireMip1.png",
                   fireMip2   = "fireMip2.png")

FireMip1        = list("slide",
                   Image = list(
                       Title = "fireMIP",
                       Image = Images.LimFire['fireMip1'],
                       Footer = Cite['fireMip']
                       ))

FireMip2 = FireMip1
FireMip2[[2]]$Image = Images.LimFire['fireMip2']

SectionTitle = "LimFire"

LimFire1        = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        Image = Images.LimFire['LimFire1'],
                        Footer = Cite['Kelley2014']
                        ))

LimFire5 = LimFire4 = LimFire3 = LimFire2 = LimFire1

LimFire2[[2]]$Image = Images.LimFire['LimFire2']
LimFire3[[2]]$Image = Images.LimFire['LimFire3']
LimFire4[[2]]$Image = Images.LimFire['LimFire4']
LimFire5[[2]]$Image = Images.LimFire['LimFire5']

LimFire = list(FireMip1, "New Page", FireMip2, "New Slide",
               LimFire1,"New Page",
                    LimFire2, "New Slide",
                    LimFire3, "New Slide",
                    LimFire4, "New Slide",
                    LimFire5)
###############################################################
## LPX                                                       ##
###############################################################
Images.LPX   = c(LPX       = "LPX_diagram.png",
                 LPJ       = "LPJ_diagram.png",
                 Lightn    = "Lightn.png",
                 Lightn1   = "Lightn1.png",
                 Lightn2   = "Lightn2.png",
                 Lightn3   = "Lightn3.png",
                 Lightn4   = "Lightn4.png",
                 Lightn5   = "Lightn5.png",
                 Dry1      = "Dry1.png",
                 RoS       = "WindRoS.png")

SectionTitle = "LPX"
LPXScheme         = list("slide",
                Image = list(
                    Title = SectionTitle,
                    Image = Images.LPX["LPX"],
                    Footer = Cite['HarrisonSub']
                    ))

DevelopmentLightn = list("slide",
              Image = list(
                  Title = SectionTitle,
                  SubHead = "Lightning ignition",
                  Image = Images.LPX["Lightn"],
                  Footer = Cite['Kelley2014a']))

DevelopmentLightn1 = DevelopmentLightn2 = DevelopmentLightn3 = DevelopmentLightn4 =
    DevelopmentLightn5 = DevelopmentLightn

DevelopmentLightn1[[2]]$Image = Images.LPX["Lightn1"]
DevelopmentLightn1[[2]]$Footer = Cite['Prentice2011b']
DevelopmentLightn2[[2]]$Image = Images.LPX["Lightn2"]
DevelopmentLightn3[[2]]$Image = Images.LPX["Lightn3"]
DevelopmentLightn4[[2]]$Image = Images.LPX["Lightn4"]
DevelopmentLightn5[[2]]$Image = Images.LPX["Lightn5"]
DevelopmentLightn[[2]]$Footer = ''

DevelopmentFuelDrying1 = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "Fuel Drying Time",
                     Image = Images.LPX["Dry1"],
                     Footer = Cite['Kelley2014a']))

## Fuel composition: LPJ

LPJ                     = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        SubHead = "Fuel from Vegetation Model",
                        Image = Images.LPX['LPJ']))

## Rate of Spread Model
RoS                     = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        SubHead = "Rate and Spread",
                        Image = Images.LPX['RoS'],
                        Footer = Cite['CTEM']
                        ))

LPX = list( LPXScheme, "New Page",
            LPJ, "New Slide",
            LPXScheme, "New Page",
            DevelopmentFuelDrying1, "New Slide",
            LPXScheme, "New Page",
            DevelopmentLightn1, "New Slide", DevelopmentLightn2, "New Slide",
                 DevelopmentLightn3, "New Slide", DevelopmentLightn4, "New Slide",
                 DevelopmentLightn5, "New Slide",DevelopmentLightn, "New Slide",
            LPXScheme, "New Page",RoS)

###############################################################
## Adaptations                                               ##
###############################################################
Images.Adaptations = c("BT"  = "BTAll.png",
                    "RS1" = "RSA.png",
                    "RS2" = "RSB.png")
# Controls on fire
SectionTitle = "Adaptations and Carbon Cycle impacts"

BT = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = "Plant Protection",
                    Image = Images.Adaptations['BT']
                ))

RS1 = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = "Plant Recovery",
                    Image = Images.Adaptations['RS1'],
                    Footer = Cite['Kelley2014']
                ))

RS2 = RS1
RS2[[2]]$Image  = Images.Adaptations['RS2']
RS2[[2]]$Footer = Cite['Kelley2014a']

Adpatations = list(BT,"New Page", RS1,"New Slide", RS2)



## resprouting

###############################################################
## LPX-RS                                                   ##
###############################################################

Images.LPXRS = c(
        RSDat     = "RSdata.png",
        RS1       = "RS1.png",
        RS2       = "RS2.png",
        RS3       = "RS3.png",
        RS4       = "RS.png",
        BT1       = "BT1.png",
        BT2       = "BT2.png",
        BT3       = "BT.png",
        BT4       = "BT4.png",
        BTscheme1 = "BTscheme1.png",
        BTscheme2 = "BTscheme2.png",
        BTscheme  = "BTscheme.png")

SectionTitle = "Modelling Adaptations"

DevelopmentRS = list("slide",
            Image = list(
                     Title = SectionTitle,
                     SubHead = "Resprouting",
                     Image = Images.LPXRS["RSDat"],
                     Footer = Cite['Kelley2014a']))

DevelopmentRS1 = DevelopmentRS2 = DevelopmentRS3 = DevelopmentRS4 = DevelopmentRS

DevelopmentRS1[[2]]$Image = Images.LPXRS["RS1"]
DevelopmentRS2[[2]]$Image = Images.LPXRS["RS2"]
DevelopmentRS3[[2]]$Image = Images.LPXRS["RS3"]
DevelopmentRS4[[2]]$Image = Images.LPXRS["RS4"]

## Adpative Bark Thickness
DevelopmentBT4 = list("slide",
            LeftImage = list(
                     Title = SectionTitle,
                     SubHead = "Bark Thickness",
                     Text = c('Within PFT variability',
                     'Differences between plants with fire-adapted and fire-prone trait'),
                     Image = Images.LPXRS["BT4"],
                     Footer = Cite['Kelley2014a']))

DevelopmentBT1 = DevelopmentBT2 = DevelopmentBT3 = DevelopmentBT4
DevelopmentBT1[[2]]$Image = Images.LPXRS["BT1"]
DevelopmentBT2[[2]]$Image = Images.LPXRS["BT2"]
DevelopmentBT3[[2]]$Image = Images.LPXRS["BT3"]

#DevelopmentBT1[[2]]$Text[2] = makeInvisable(DevelopmentBT1[[2]]$Text[2])

DevelopmentBTscheme = list("slide",
            LeftNarrowImage = list(
                     Title = SectionTitle,
                     SubHead = "Adaptive Bark Thickness",
                     Text = c('In fire:
                                    <ul class="dashed">
                                        <li class = "dashed"> Individuals with thin bark are more likely to be killed off. </li>
                                        <li class = "dashed"> New Bark Thickness distribution calculated from survivors </li>
                                    </ul>',
                              'In Establishment:
                                    <ul class="dashed">
                                        <li class = "dashed"> Trees establish
                                            based on initial distribution. </li>
                                        <li class = "dashed"> New distribution from weighted average of survivors and established </li>
                                    </ul>'),
                     Image = Images.LPXRS["BTscheme"],
                     Footer = Cite['Kelley2014a']))

DevelopmentBTscheme1 = DevelopmentBTscheme2 = DevelopmentBTscheme

DevelopmentBTscheme1[[2]]$Image = Images.LPXRS["BTscheme1"]
DevelopmentBTscheme2[[2]]$Image = Images.LPXRS["BTscheme2"]
DevelopmentBTscheme[[2]]$Footer = ''


LPXRS = list(
    DevelopmentRS1, "New Page",  DevelopmentRS2, "New Slide",
         DevelopmentRS3, "New Slide", DevelopmentRS4, "New Slide", RS2, "New Slide",
    # DevelopmentBT1, "New Page",
          DevelopmentBT2, "New Page",
          DevelopmentBT3, "New Slide",
          DevelopmentBT4, "New Slide",
    DevelopmentBTscheme1, "New Slide",
    DevelopmentBTscheme2, "New Slide", DevelopmentBTscheme)
# What is fire
    # Fire regimes
# Vegetation adpatations (carbon)
# Modelling fire
    # FireMIP
    # Simple Model
    # Process based model
###############################################################
## Collate                                                   ##
###############################################################

Images = c(Images.index, Images.title, Images.Importance, Images.where,
           Images.Controls, Images.Adaptations, Images.LPX, Images.LimFire,
           Images.LPXRS)

AdditionalSection = c(TitlePage, "New Slide",
                      Importance, "New Slide",
                      Where, "New Slide",
                      Controls, "New Page",
                      LimFire, "New Slide",
                      LPX, "New Page",
                      Adpatations, "New Slide",
                      LPXRS)
