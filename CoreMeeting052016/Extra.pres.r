###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')
Short       = TRUE
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
         HarrisonSub  = 'Harrison, SP, &
                         <b>Kelley, DI</b> (submitted). Projected changes in
                         Australian fire regimes during the 21st century.',
        Kelley2013 = "<b>Kelley, DI</b>, et al. (2013). A comprehensive
                      benchmarking system for evaluating global
                      vegetation models. Biogeosciences, 9(11)",
        Kelley2014a = "<b>Kelley, DI</b>, Harrison, SP, & Prentice, IC (2014).
                       Improved simulation of fire–vegetation interactions in the LPX-Mv1. GMD, 7(5)",
        Kelley2014b = "<b>Kelley, DI</b>, & Harrison, SP (2014). Enhanced
                       Australian carbon sink despite increased wildfire during the 21st century. ERL, 9(10)")

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
                 H1 = paste("<br><br>",TalkTitle, "<br>
                         <h2>Douglas Kelley<h2>"))

TitlePage = list(TopPage, "New Slide", "New Slide", TitlePage)


################################################################################
## Collate                                                                    ##


Images = c(Images.index, Images.title)

AdditionalSection = c(TitlePage)
