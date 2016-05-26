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
TalkTitle = "Modelling Fire in the Earths System"

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
         HarrisonSub  = 'Harrison, SP, & <b>Kelley, DI</b> (submitted). Projected changes in
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
         Archibald2013= "Archibald, S, Lehmann, CER, Gomez-Dans, JL, Bradstock, RA (2014)
                         Defining pyromes and global syndromes of fire regimes. PNAS 110(16)",
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
                          global controls of fire frequency. Biogeosciences")

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

TitlePage = list("slide",
                 bgImage = Images.title['Title'],
                 H1 = paste(TalkTitle, "<br>
                         <h2>Douglas Kelley<h2>"))

TitlePage = list(TopPage, "New Slide", "New Slide", TitlePage)

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
                      worldWithoutFire = "withoutFire.png",
                      Cost             = "cost.png")

SectionTitle = "Why is fire important"

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

vegImpacts = ImageSlide
vegImpacts[[2]]$SubHead = 'A world without fire'
vegImpacts[[2]]$Image   = Images.Importance['worldWithoutFire']
vegImpacts[[2]]$Footer  = Cite['Bond']

cost = ImageSlide
cost[[2]]$SubHead = 'Cost of fire'
cost[[2]]$Image   = Images.Importance['Cost']
cost[[2]]$Footer  = Cite['Harrison2011']

Importance = list(Importance1, "New Page", Carbon1, "New Slide",
                      Importance2, "New Slide",Carbon2, "New Slide",
		  Importance3, "New Page",
		  Importance4, "New Page", vegImpacts, "New Slide",
          Importance5, "New Page",
          Importance6, "New Slide", cost)
###############################################################
## Where						                             ##
###############################################################
# Africa: 40% of global fire
Images.where = c(Where1 = "Where1.png",
		         Where2 = "Where2.png")

SectionTitle = "Where they occur"

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
                    Image = Images.Controls['WhatIsFire']
                ))

Controls = list(NPPmoist1, "New Page", NPPmoist2, "New Slide",
                    NPPmoist3, "New Slide", NPPmoist4, "New Slide",
                    NPPmoist5, "New Slide",
                FireStarts, "New Page", HumanStartsInModels, "New Slide",
                HumanFire1, "New Page", HumanFire2, "New Slide",
                    HumanFire3, "New Slide", HumanFire4, "New Slide",
                WhatIsFire)

###############################################################
## Adaptations                                               ##
###############################################################
Images.Adaptations = c("BT"  = "BT.png",
                    "RS1" = "RS1.png",
                    "RS2" = "RS2.png")
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
           Images.Controls, Images.Adaptations)

AdditionalSection = c(TitlePage, "New Slide",
                      Importance, "New Slide",
                      Where, "New Slide",
                      Controls, "New Page",
                      Adpatations)
