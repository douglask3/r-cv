###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')
Short       = TRUE
###############################################################
## Basic Infomation                                          ##
###############################################################
Top = NULL
TalkTitle = "Data Driven Iterative Model Development"

Name    = c("Douglas Kelley",
            "Recent work pertinent to<br>modelling and environmental science",
            TalkTitle)

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")

Images.index = c(Index0        = 'PresStructure_index0.png',
                 Index1        = 'PresStructure_index1.png',
                 Index2        = 'PresStructure_index2.png',
                 Index3        = 'PresStructure_index3.png',
                 Index4        = 'PresStructure_index4.png',
                 Index5        = 'PresStructure_index5.png')

Images.Smiley = c(Laugh = 'Laugh.png',
                  Smile = 'Smile.png',
                  Indif = 'Indif.png',
                  Sad   = 'Sad.png',
                  Cry   = 'Cry.png'
               )

SmileySize = 35

SmileyImage <- function(nm)
   paste('<img src="',Images.Smiley[nm],'"
         style="width:',SmileySize,'px;height:',SmileySize,'px;">', sep ='')


ImagesPath = 'CEHlandSurface/images/'

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
                       Improved simulation of fire–vegetation interactions in
                       the LPX-Mv1. GMD, 7(5)",
        Kelley2014b = "<b>Kelley, DI</b>, & Harrison, SP (2014). Enhanced
                       Australian carbon sink despite increased wildfire during
                       the 21st century. ERL, 9(10)",
        UkkolaSub   = "Ukkola, A, Keenan, T, <b>Kelley, DI</b>, et al
                      (submitted). Vegetation buffers declining precipitation. ERL")

###############################################################
## Slide                                                     ##
###############################################################

###############################################################
## Title                                                     ##
###############################################################
Images.title = c(Title = 'TreeProtractor.png')

TopPage   = list("slide",
                 Text = list(
                     Title = "Recent work pertinent to modelling
                                and environmental science",
                       SubHead = "Made in project: r-cv",
                       Text = paste(paste("Project URL:", gitRemoteURL()),
                                paste("Git version:", gitVersionNumber()), sep ="<br>")
                     ))

TitlePage = list("slide",
                 bgImage = Images.title['Title'],
                 H1 = "Recent work pertinent to modelling and
                         environmental science<br>
                         <h2>Douglas Kelley<h2>")

TitlePage2 = TitlePage
TitlePage2$H1 = paste(TalkTitle,"<br>
                <h2>Douglas Kelley<h2>")

TitlePage = list(TopPage, "New Slide", "New Slide", TitlePage, "New Slide", TitlePage2)

###############################################################
## Introduction                                              ##
###############################################################
Images.Intro = c(ThesisSummary = 'ThesisStructure.png',
                 Structure1    = 'PresStructure_slide1.png',
                 Structure2    = 'PresStructure_slide2.png',
                 Structure3    = 'PresStructure_slide3.png',
                 Structure4    = 'PresStructure_slide4.png',
                 Structure5    = 'PresStructure_slide5.png',
                 Structure6    = 'PresStructure_slide6.png',
                 LPXcomp       = 'Prentice2011.png',
                 LPXapp        = 'FutureFire2010.png')
SectionTitle = "Introduction"
SubHead = "Old-school model development"
Problem = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = SubHead,
                    Image = Images.Intro['LPXcomp'],
                    Footer = Cite['Prentice2011']
                ))

Problem1 = list("slide",
            Image = list(
                    Title = SectionTitle,
                    SubHead = SubHead,
                    Image = Images.Intro['LPXapp'],
                    Footer = Cite['Harrison2011']
                ))
List = c('Focussed on incorporating sub-model
            rather than parameterization',
         'Model tuning to get right results with wrong
            process-representation',
         'No test for model degradation',
         'Unknown "uncertainty" in model results',
         'Hard to understand drivers of change for e.g. future predictions',
         'Due to a lack of comprehensive benchmarking system')

Problem2F = list("slide",
            Text = list(
                    Title = SectionTitle,
                    SubHead = SubHead,
                    Text = List))

Problem2A = Problem2B = Problem2C = Problem2D = Problem2E = Problem2F
makeInvisable <- function(txt) paste('<div class = "invis">', txt, '</div>')
Problem2A[[2]]$Text[2:6] = makeInvisable(Problem2A[[2]]$Text[2:6])
Problem2B[[2]]$Text[3:6] = makeInvisable(Problem2A[[2]]$Text[3:6])
Problem2C[[2]]$Text[4:6] = makeInvisable(Problem2A[[2]]$Text[4:6])
Problem2D[[2]]$Text[5:6] = makeInvisable(Problem2A[[2]]$Text[5:6])
Problem2E[[2]]$Text[6:6] = makeInvisable(Problem2A[[2]]$Text[6:6])

Solution4 = list("slide",
            Text = list(
                    Title = SectionTitle,
                    SubHead = "New approuch model development",
                    Text = c('Call from community for more comprehensive model
                            evaluation (e.g CEHs JULES, cLamb, iLamb)',
                            'Recent advances in remote sensing and communications
                              means there is a lot more data<div>&nbsp',
                             'Developed a benchmark system to:
                                <ul class = "dashed">
                                    <li class = "dashed"> Find model weaknesses </li>
                                    <li class = "dashed"> Assess model development </li>
                                    <li class = "dashed"> Justify model application </li></ul>',
                              'Data-driven model parameterization')))

Solution1 = Solution2 = Solution3 = Solution4
Solution1[[2]]$Text[2:4] = makeInvisable(Solution1[[2]]$Text[2:4])
Solution2[[2]]$Text[3:4] = makeInvisable(Solution1[[2]]$Text[3:4])
Solution3[[2]]$Text[4:4] = makeInvisable(Solution1[[2]]$Text[4:4])

Introduction1 = list("slide",
                    Image = list(
                        Title = "Introduction",
                        SubHead = TalkTitle,
                        Image = Images.Intro['Structure1'],
                        Footer = Cite["Kelley2014"]
                        ))

Introduction2 = Introduction3 = Introduction4 =
    Introduction5 = Introduction6 = Introduction7 =
        Introduction1

Introduction2$Image$Image = Images.Intro['Structure2']
Introduction3$Image$Image = Images.Intro['Structure3']
Introduction4$Image$Image = Images.Intro['Structure4']
Introduction5$Image$Image = Images.Intro['Structure5']
Introduction6$Image$Image = Images.Intro['Structure6']

Introduction = list(Problem, "New Page", Problem1, "New Slide",
                        Problem2A, "New Slide",
                        Problem2B, "New Slide",
                        Problem2C, "New Slide",
                        Problem2D, "New Slide",
                        Problem2E, "New Slide",
                        Problem2F, "New Slide",
                        Solution1, "New Slide",
                        Solution2, "New Slide",
                        Solution3, "New Slide",
                        Solution4, "New Slide",
                    Introduction1, "New Page",
                        Introduction2, "New Slide",
                        Introduction3, "New Slide",
                        Introduction4, "New Slide",
                        Introduction5, "New Slide",
                        Introduction6)

if (Short) {
    Introduction = list(Problem, "New Page", Problem1, "New Slide",
                            Problem2B, "New Slide",
                            Problem2C, "New Slide",
                            Problem2E, "New Slide",
                            Solution1, "New Slide",
                            Solution2, "New Slide",
                            Solution3, "New Slide",
                            Solution4, "New Slide",
                        Introduction1, "New Page",
                            Introduction2, "New Slide",
                            Introduction3, "New Slide",
                            Introduction4, "New Slide",
                            Introduction5, "New Slide",
                            Introduction6)
}

###############################################################
## LPX                                              ##
###############################################################
Images.LPX = c(LPX       = "LPX_diagram.png",
               DGVM1     = "DGVM1.png",
               DGVM2     = "DGVM2.png",
               DGVM3     = "DGVM3.png",
               DGVM4     = "DGVM4.png",
               DGVM5     = "DGVM5.png",
               DGVM6     = "DGVM6.png",
               DGVM7     = "DGVM7.png")

LPXTitle = list("slide",
                    Image = list(
                        Title = "LPX",
                        SubHead = "",
                        Image = Images.index['Index0'],
                        Footer = ""
                        ))

LPXOverview1 = list("slide",
                Image = list(Title = "LPX-DGVM",
                            SubHead = "Overview",
                            Image = Images.LPX['DGVM1']))
LPXOverview2 = LPXOverview3 = LPXOverview4 = LPXOverview5 = LPXOverview6 =
    LPXOverview7 = LPXOverview1

LPXOverview2[[2]]$Image = Images.LPX['DGVM2']
LPXOverview3[[2]]$Image = Images.LPX['DGVM3']
LPXOverview4[[2]]$Image = Images.LPX['DGVM4']
LPXOverview5[[2]]$Image = Images.LPX['DGVM5']
LPXOverview6[[2]]$Image = Images.LPX['DGVM6']
LPXOverview7[[2]]$Image = Images.LPX['DGVM7']


LPXScheme = list("slide",
                Image = list(Title = "LPX-DGVM",
                            SubHead = "Fire",
                            Image = Images.LPX['LPX'],
                            Footer = Cite["HarrisonSub"]))

LPX = list(LPXTitle, "New Page",
            LPXOverview1, "New Slide",
            LPXOverview2, "New Slide",
            LPXOverview3, "New Slide",
            LPXOverview4, "New Slide",
            LPXOverview5, "New Slide",
            LPXOverview6, "New Slide",
            LPXOverview7, "New Slide",
             LPXScheme)

if (Short) {
    LPX = list(LPXTitle, "New Page",
                LPXOverview1, "New Slide",
                LPXOverview2, "New Slide",
                LPXOverview3, "New Slide",
                LPXOverview4, "New Slide",
                LPXOverview5, "New Slide",
                LPXOverview6, "New Slide",
                LPXOverview7)
}
###############################################################
## Benchmarking                                              ##
###############################################################
SectionTitle = "Benchmarking System"

Images.Bench = c(Datasets      = "BenchmarkDatasets.png",
                 NME1          = "NME1.png",
                 NME2          = "NME2.png",
                 NME3          = "NME3.png",
                 NMEIAV1       = "NMEIAV1.png",
                 NMEIAV2       = "NMEIAV2.png",
                 NMEIAV        = "NMEIAV.png",
                 NME           = "NMEFull.png",
                 Steps         = "Step123.png",
                 MM1           = "MM1.png",
                 MM2           = "MM2.png",
                 MM3           = "MM3.png",
                 MM4           = "MM4.png",
                 MM5           = "MM5.png",
                 MM6           = "MM6.png",
                 MM            = "MMFull.png",
                 MPD1          = "MPD1.png",
                 MPD2A         = "MPD2A.png",
                 MPD2B         = "MPD2B.png",
                 MPD3          = "MPD3.png",
                 MPD4          = "MPD4.png",
                 MPD5          = "MPD5.png",
                 MPD6          = "MPD6.png",
                 MPD7          = "MPD7.png",
                 MPD8          = "MPD8.png",
                 MPD9          = "MPD9.png",
                 MPD           = "MPDFull.png",
                 Metrics       = "Metrics.png",
                 Null1         = "NullModels1.png",
                 Null2         = "NullModels2.png",
                 Null3         = "NullModels3.png",
                 Null4         = "NullModels4.png",
                 Null5         = "NullModels5.png",
                 Null          = "NullModels.png",
                 Numbers1      = "Scores1.png",
                 Numbers2      = "Scores2.png",
                 Numbers3      = "Scores3.png")


BenchmarkingTitle = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        SubHead = "",
                        Image = Images.index['Index1'],
                        Footer = ""
                        ))
List = c('Quantify how well a model performs
             across a comprehensive range of important
             processes',
             'Allows identification of model weaknesses
             and processes that require improvement',
             'Quantifies the differences between
             model version and impact of new
             parameterizations',
             'Allows model inter-comparison')
BenchmarkingOverview1D = list("slide",
                       Text = list(
                           Title   = SectionTitle,
                           SubHead = "Overview",
                           Text    = List))

BenchmarkingOverview1A = BenchmarkingOverview1B = BenchmarkingOverview1C =
    BenchmarkingOverview1D

BenchmarkingOverview1A[[2]]$Text[2:4] = makeInvisable(BenchmarkingOverview1A[[2]]$Text[2:4])
BenchmarkingOverview1B[[2]]$Text[3:4] = makeInvisable(BenchmarkingOverview1A[[2]]$Text[3:4])
BenchmarkingOverview1C[[2]]$Text[4:4] = makeInvisable(BenchmarkingOverview1A[[2]]$Text[4:4])

List = c('Lots of datasets to evaluate multiple key
             processes:
             <table><tr>
                 <th align="left"><ul class="dashed">
                     <li class = "dashed"> Vegetation Cover </li>
                     <li class = "dashed"> Photosynthesis </li>
                     <li class = "dashed"> Production </li>
                 </ul></th>
                 <th align="left"><ul class="dashed">
                     <li class = "dashed"> Fire </li>
                     <li class = "dashed"> Height </li>
                     <li class = "dashed"> CO<sub>2</sub> fluxes </li>
                     <li class = "dashed"> Hydrology </li>
                 </ul></th>
             </tr></table>',
             'Uses specifically designed metrics to quantify
             differences between model and observation')
BenchmarkingOverview2B = BenchmarkingOverview1D
BenchmarkingOverview2B[[2]]$Text = List
BenchmarkingOverview2A = BenchmarkingOverview2B
BenchmarkingOverview2A[[2]]$Text[2] = makeInvisable(BenchmarkingOverview2A[[2]]$Text[2])

BenchmarkingDatasets = list("slide",
                        Image = list(
                            Title = SectionTitle,
                            SubHead = "Datasets",
                            Image = Images.Bench["Datasets"],
                            Footer = Cite['Kelley2013']))


################################################################################
## Metrics                                                                    ##
################################################################################
BenchmarkingMetrics = list("slide",
                        Image = list(
                            Title = SectionTitle,
                            SubHead = "Metrics",
                            Image = Images.Bench["Metrics"],
                            Footer = Cite['Kelley2013']))

BenchmarkingNME     = list("slide",
                        Image = list(
                            Title = SectionTitle,
                            SubHead = "Metrics<br>
                                <small> Normalised Mean Error (NME) </small>",
                            Image = Images.Bench["NME"]))

BenchmarkingNME1 = BenchmarkingNME2 = BenchmarkingNME3 = BenchmarkingSteps =
    BenchmarkingNMEIAV = BenchmarkingNME

BenchmarkingNME1[[2]]$Image = Images.Bench["NME1"]
BenchmarkingNME2[[2]]$Image = Images.Bench["NME2"]
BenchmarkingNME3[[2]]$Image = Images.Bench["NME3"]
BenchmarkingSteps[[2]]$Image = Images.Bench["Steps"]

BenchmarkingNMEIAV[[2]]$SubHead = "Metrics<br>
                            <small> NME - Inter-annual Variability (NME - IAV)</small>"

BenchmarkingNMEIAV[[2]]$Image = Images.Bench["NMEIAV"]

BenchmarkingNMEIAV1 = BenchmarkingNMEIAV2 = BenchmarkingNMEIAV

BenchmarkingNMEIAV1[[2]]$Image = Images.Bench["NMEIAV1"]
BenchmarkingNMEIAV2[[2]]$Image = Images.Bench["NMEIAV2"]

BenchmarkingMM      = list("slide",
                        Image = list(
                            Title = SectionTitle,
                            SubHead = "Metrics<br>
                                <small> Manhattan Metric (MM) </small>",
                            Image = Images.Bench["MM"]))

BenchmarkingMM1 = BenchmarkingMM2 = BenchmarkingMM3 = BenchmarkingMM4 =
    BenchmarkingMM5 = BenchmarkingMM6 = BenchmarkingMM

BenchmarkingMM1[[2]]$Image = Images.Bench["MM1"]
BenchmarkingMM2[[2]]$Image = Images.Bench["MM2"]
BenchmarkingMM3[[2]]$Image = Images.Bench["MM3"]
BenchmarkingMM4[[2]]$Image = Images.Bench["MM4"]
BenchmarkingMM5[[2]]$Image = Images.Bench["MM5"]
BenchmarkingMM6[[2]]$Image = Images.Bench["MM6"]

BenchmarkingMPD      = list("slide",
                        Image = list(
                            Title = SectionTitle,
                            SubHead = "Metrics<br>
                                <small> Seasonality & Mean Phase Difference (MPD) </small>",
                            Image = Images.Bench["MPD"]))

BenchmarkingMPD1 = BenchmarkingMPD2A = BenchmarkingMPD2B = BenchmarkingMPD3 =
    BenchmarkingMPD4 = BenchmarkingMPD5 = BenchmarkingMPD6 = BenchmarkingMPD7 =
    BenchmarkingMPD8 = BenchmarkingMPD9 = BenchmarkingMPD

BenchmarkingMPD1[[2]]$Image = Images.Bench["MPD1"]
BenchmarkingMPD2A[[2]]$Image = Images.Bench["MPD2A"]
BenchmarkingMPD2B[[2]]$Image = Images.Bench["MPD2B"]
BenchmarkingMPD3[[2]]$Image = Images.Bench["MPD3"]
BenchmarkingMPD4[[2]]$Image = Images.Bench["MPD4"]
BenchmarkingMPD5[[2]]$Image = Images.Bench["MPD5"]
BenchmarkingMPD6[[2]]$Image = Images.Bench["MPD6"]
BenchmarkingMPD7[[2]]$Image = Images.Bench["MPD7"]
BenchmarkingMPD8[[2]]$Image = Images.Bench["MPD8"]
BenchmarkingMPD9[[2]]$Image = Images.Bench["MPD9"]


################################################################################
## Null Models                                                                ##
################################################################################
BenchmarkingNULL     = list("slide",
                        Image = list(
                            Title = SectionTitle,
                            SubHead = "Null Models",
                            Image = Images.Bench["Null"]))

BenchmarkingNULL1 = BenchmarkingNULL2 = BenchmarkingNULL3 =
    BenchmarkingNULL5 = BenchmarkingNULL

BenchmarkingNULL1[[2]]$Image = Images.Bench["Null1"]
BenchmarkingNULL2[[2]]$Image = Images.Bench["Null2"]
BenchmarkingNULL3[[2]]$Image = Images.Bench["Null3"]
BenchmarkingNULL5[[2]]$Image = Images.Bench["Null5"]

BenchmarkingNumbers1 = list("slide",
                             Image = list(
                                 Title = SectionTitle,
                                 SubHead = "Interpreting Numbers",
                                 Image = Images.Bench['Numbers1']))

BenchmarkingNumbers3 = BenchmarkingNumbers2 = BenchmarkingNumbers1

BenchmarkingNumbers2[[2]]$Image = Images.Bench['Numbers2']
BenchmarkingNumbers3[[2]]$Image = Images.Bench['Numbers3']


Benchmarking = list(BenchmarkingTitle, "New Page",
                        BenchmarkingOverview1A, "New Slide",
                        BenchmarkingOverview1B, "New Slide",
                        BenchmarkingOverview1C, "New Slide",
                        BenchmarkingOverview1D, "New Slide",
                        BenchmarkingOverview2A, "New Slide",
                        BenchmarkingDatasets, "New Slide",
                        BenchmarkingOverview2B, "New Slide",
                    BenchmarkingMetrics, "New Slide",
                    BenchmarkingNME1, "New Page", BenchmarkingNME2, "New Slide",
                        BenchmarkingNME3, "New Slide", BenchmarkingNME, "New Slide",
                        BenchmarkingSteps, "New Page",
                    BenchmarkingNMEIAV1, "New Page", BenchmarkingNMEIAV2, "New Slide",
                        BenchmarkingNMEIAV, "New Slide",
                    BenchmarkingMM1, "New Page", BenchmarkingMM2,
                        "New Slide", BenchmarkingMM3, "New Slide",
                        BenchmarkingMM4, "New Slide", BenchmarkingMM5,
                        "New Slide", BenchmarkingMM6, "New Slide",
                        BenchmarkingMM, "New Slide",
                    BenchmarkingMPD1, "New Page", BenchmarkingMPD2A, "New Slide",
                        BenchmarkingMPD2B, "New Slide", BenchmarkingMPD3, "New Slide",
                        BenchmarkingMPD4, "New Slide", BenchmarkingMPD5, "New Slide",
                        BenchmarkingMPD6, "New Slide", BenchmarkingMPD7, "New Slide",
                        BenchmarkingMPD8, "New Slide", BenchmarkingMPD9, "New Slide",
                        BenchmarkingMPD, "New Slide",
                    BenchmarkingMetrics, "New Page",BenchmarkingNumbers1, "New Page",
                    BenchmarkingNULL1, "New Slide", BenchmarkingNULL2,"New Slide",
                        BenchmarkingNULL3,"New Slide", BenchmarkingNULL5,
                        "New Slide", BenchmarkingNULL, "New Slide", BenchmarkingNumbers2)
if (Short) {
    Benchmarking = list(BenchmarkingTitle, "New Page",
                            BenchmarkingDatasets, "New Slide",
                        BenchmarkingMetrics, "New Slide",
                        BenchmarkingNumbers1, "New Page",
                        BenchmarkingNULL3,
                            "New Slide", BenchmarkingNULL, "New Slide",
                            BenchmarkingNumbers2, "New Slide", BenchmarkingNumbers3)
}
################################################################################
## Error Identification                                                       ##
################################################################################
Images.Error = c(Comp     = 'LPXcompGlob.png',
                 CompAus1 = 'LPXcompAus2.png',
                 CompAus2 = 'LPXcompAus1.png',
                 BenchNos = 'BecnhmarkingNumbers.png')


SectionTitle = "Error Identification"

ErrorTitle = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "",
                     Image = Images.index['Index2'],
                     Footer = ""
                     ))
ErrorNos = list("slide",
                Image = list(
                    Title = SectionTitle,
                    Image = Images.Error['BenchNos']
                    ))

ErrorOverview = list("slide",
                 LeftImage = list(
                     Title = SectionTitle,
                     SubHead = "Global",
                     Image = Images.Error['Comp'],
                     Text = '<table  class = "table1">
                                  <tr>
                                    <th></th>
                                    <th>Mean</th>
                                    <th>Rand</th>
                                    <th>LPX</th>
                                  </tr>
                                  <tr>
                                    <td>Tree Cover</td>
                                    <td>0.45</td>
                                    <td>0.56</td>
                                    <td>0.56</td>
                                  </tr>
                                  <tr>
                                    <td>Burnt Area</td>
                                    <td>1.00</td>
                                    <td>1.02</td>
                                    <td>0.85</td>
                                  </tr>
                                  <tr>
                                    <td>    - mean</td>
                                    <td>1.00</td>
                                    <td>1.09</td>
                                    <td>0.91</td>
                                  </tr>
                                  <tr>
                                    <td>    -variance </td>
                                    <td>1.00</td>
                                    <td>1.14</td>
                                    <td>0.99</td>
                                  </tr>
                                  <tr>
                                    <td>Inter-annual Burnt</td>
                                    <td>1.00</td>
                                    <td>1.35</td>
                                    <td>0.63</td>
                                  </tr>
                                  <tr>
                                    <td>-variance </td>
                                    <td>1.00</td>
                                    <td>1.39</td>
                                    <td>0.77</td>
                                  </tr>
                                  <tr>
                                    <td>Fire season</td>
                                    <td>0.74</td>
                                    <td>0.47</td>
                                    <td>0.10</td>
                                  </tr>
                                </table>',
                     Footer = Cite['Kelley2013']
                     ))


ErrorOverviewSmiley = ErrorOverview

ErrorOverviewSmiley[[2]]$Text =paste('<table  class = "table1">
                 <tr>
                   <th></th>
                   <th>Mean</th>
                   <th>Rand</th>
                   <th>LPX</th>
                 </tr>
                 <tr>
                   <td>Tree Cover</td>
                   <td>0.45</td>
                   <td>0.56</td>
                   <td>',SmileyImage(4),'</td>
                 </tr>
                 <tr>
                   <td>Burnt Area</td>
                   <td>1.00</td>
                   <td>1.02</td>
                   <td>',SmileyImage(1),'</td>
                 </tr>
                 <tr>
                   <td>    - mean</td>
                   <td>1.00</td>
                   <td>1.09</td>
                   <td>',SmileyImage(1),'</td>
                 </tr>
                 <tr>
                   <td>    -variance </td>
                   <td>1.00</td>
                   <td>1.14</td>
                   <td>',SmileyImage(1),'</td>
                 </tr>
                 <tr>
                   <td>Inter-annual Burnt</td>
                   <td>1.00</td>
                   <td>1.35</td>
                   <td>',SmileyImage(1),'</td>
                 </tr>
                 <tr>
                   <td>-variance </td>
                   <td>1.00</td>
                   <td>1.39</td>
                   <td>',SmileyImage(1),'</td>
                 </tr>
                 <tr>
                   <td>Fire season</td>
                   <td>0.74</td>
                   <td>0.47</td>
                   <td>',SmileyImage(3),'</td>
                 </tr>
               </table>')

ErrorOverviewAus = list("slide",
                 LeftImage = list(
                     Title = SectionTitle,
                     SubHead = "Australia",
                     Image = Images.Error['CompAus1'],
                     Text = '<table  class = "table1">
                                <tr>
                                <th></th>
                                <th>Mean</th>
                                <th>Rand</th>
                                <th>LPX</th>
                                </tr>
                                <tr>
                                <td>Tree Cover</td>
                                <td>0.71</td>
                                <td>0.89</td>
                                <td>0.77</td>
                                </tr>
                                <tr>
                                <td>Burnt Area</td>
                                <td>1.00</td>
                                <td>1.25</td>
                                <td>1.29</td>
                                </tr>
                                <tr>
                                <td>    - mean</td>
                                <td>1.00</td>
                                <td>1.25</td>
                                <td>1.09</td>
                                </tr>
                                <tr>
                                <td>    - variance</td>
                                <td>1.00</td>
                                <td>1.26</td>
                                <td>1.32</td>
                                </tr>
                                <tr>
                                <td>Inter-annual Burnt</td>
                                <td>1.00</td>
                                <td>1.35</td>
                                <td>1.05</td>
                                </tr>
                                <tr>
                                <td>    - variance</td>
                                <td>1.00</td>
                                <td>1.33</td>
                                <td>1.43</td>
                                </tr>
                                <tr>
                                <td>Fire season</td>
                                <td>0.44</td>
                                <td>0.47</td>
                                <td>0.50</td>
                                </tr>
                                </table>',
                     Footer = Cite['Kelley2013']
                     ))

ErrorOverviewAusSmiley = ErrorOverviewAus

ErrorOverviewAusSmiley[[2]]$Text =paste(
'<table  class = "table1">
           <tr>
           <th></th>
           <th>Mean</th>
           <th>Rand</th>
           <th>LPX</th>
           </tr>
           <tr>
           <td>Tree Cover</td>
           <td>0.71</td>
           <td>0.89</td>
           <td>',SmileyImage(3),'</td>
           </tr>
           <tr>
           <td>Burnt Area</td>
           <td>1.00</td>
           <td>1.25</td>
           <td>',SmileyImage(5),'</td>
           </tr>
           <tr>
           <td>    - mean</td>
           <td>1.00</td>
           <td>1.25</td>
           <td>',SmileyImage(3),'</td>
           </tr>
           <tr>
           <td>    - variance</td>
           <td>1.00</td>
           <td>1.26</td>
           <td>',SmileyImage(5),'</td>
           </tr>
           <tr>
           <td>Inter-annual Burnt</td>
           <td>1.00</td>
           <td>1.35</td>
           <td>',SmileyImage(3),'</td>
           </tr>
           <tr>
           <td>    - variance</td>
           <td>1.00</td>
           <td>1.33</td>
           <td>',SmileyImage(4),'</td>
           </tr>
           <tr>
           <td>Fire season</td>
           <td>0.44</td>
           <td>0.47</td>
           <td>',SmileyImage(5),'</td>
           </tr>
           </table>')

ErrorOverviewAus1 = ErrorOverviewAus
ErrorOverviewAus1[[2]]$Image = Images.Error['CompAus2']

ErrorOverviewAus1Smiley = ErrorOverviewAusSmiley
ErrorOverviewAus1Smiley[[2]]$Image = Images.Error['CompAus2']


Error = list(ErrorTitle, "New Page", ErrorNos, "New Slide", ErrorOverview, "New Slide",
            ErrorOverviewSmiley, "New Slide",
             ErrorOverviewAus1, "New Slide", ErrorOverviewAus1Smiley,
             "New Slide", ErrorOverviewAusSmiley)
################################################################################
## Development                                                                ##
################################################################################
Images.LPXRS = c(LPX       = "LPX_diagram.png",
                 Lightn    = "Lightn.png",
                 Lightn1   = "Lightn1.png",
                 Lightn2   = "Lightn2.png",
                 Lightn3   = "Lightn3.png",
                 Lightn4   = "Lightn4.png",
                 Lightn5   = "Lightn5.png",
                 Root      = "Root.png",
                 Decomp    = "Decomposition.png",
                 Dry       = "Dry.png",
                 Dry1      = "Dry1.png",
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

SectionTitle = "Model Development"

DevelopmentTitle = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "",
                     Image = Images.index['Index3'],
                     Footer = ""
                     ))

DevelopmentOverview = list("slide",
                List = list(
                    Title   = SectionTitle,
                    SubHead = "Overview",
                    Text    = c('Benchmarking system identified areas for improvement',
                                'Lightning ignition scheme',
                                'Fuel drying time',
                                'Fuel decomposition',
                                'Rooting depth',
                                '<b>Bark thickness</b>',
                                '<b>Resprouting<b>')))

## Lightning Scheme
# https://www.flickr.com/photos/thelightningman/7233369438/in/photolist-c2bUJb-fpE79S-cAiwJW-2PUGt3-rmYzPX-vJUYX9-9CAhAH-9S5VG8-nCgx9M-hAqaWs-nAvznR-51Qf1g-eNit1X-4SwcXG-pks9rr-g8HeP5-nRYoxq-fLfM2d-nzaKRr-5mJGv6-6RnwTa-om8cCt-5hieMx-c91J4f-bwg48v-aEBd4Q-cM3N47-njNShm-eajqsB-af4qhG-brjU6p-5k6Xuj-oUNnea-rJuckS-96p7PZ-9RXP2o-qNT35r-aExkWT-afaEei-cEzC2q-oiQrgD-sHqv4R-6tAo8f-aDbNpr-omzh5o-6PcfUk-en4R3Q-oaGm2v-emMi3b-r7oDjr
# https://commons.wikimedia.org/wiki/File:Scottobear_-_051231_sun_%28by-sa%29.jpg
DevelopmentLightn = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "Lightning ignition",
                     Image = Images.LPXRS["Lightn"],
                     Footer = Cite['Kelley2014a']))

DevelopmentLightn1 = DevelopmentLightn2 = DevelopmentLightn3 = DevelopmentLightn4 =
    DevelopmentLightn5 = DevelopmentLightn

DevelopmentLightn1[[2]]$Image = Images.LPXRS["Lightn1"]
DevelopmentLightn1[[2]]$Footer = Cite['Prentice2011b']
DevelopmentLightn2[[2]]$Image = Images.LPXRS["Lightn2"]
DevelopmentLightn3[[2]]$Image = Images.LPXRS["Lightn3"]
DevelopmentLightn4[[2]]$Image = Images.LPXRS["Lightn4"]
DevelopmentLightn5[[2]]$Image = Images.LPXRS["Lightn5"]
DevelopmentLightn[[2]]$Footer = ''
## Rooting Depth
DevelopmentRoot = list("slide",
                 LeftImage = list(
                     Title = SectionTitle,
                     SubHead = "Rooting Depth",
                     Text = '<table class = "table1">
                       <tr><th>PFT</th><th>Original LPX</th><th>Modified LPX</th></tr>
                       <tr><td>TBE</td><td>0.85        </td><td>0.82        </td></tr>
                       <tr><td>TBD</td><td>0.5         </td><td>0.73        </td></tr>
                       <tr><td>tNE</td><td>0.6         </td><td>0.84        </td></tr>
                       <tr><td>tBE</td><td>0.5         </td><td>0.82        </td></tr>
                       <tr><td>tBD</td><td>0.7         </td><td>0.81        </td></tr>
                       <tr><td>BNE</td><td>0.9         </td><td>0.84        </td></tr>
                       <tr><td>BND</td><td>0.9         </td><td>0.81        </td></tr>
                       <tr><td>C3</td><td>0.9          </td><td>0.90        </td></tr>
                       <tr><td>C4</td><td>0.7          </td><td>0.86        </td></tr>
                     </table>',
                     Image = Images.LPXRS["Root"],
                     Footer = Cite['Kelley2014a']))


## Fuel Drying
DevelopmentFuelDrying = list("slide",
                 Text = list(
                     Title = SectionTitle,
                     SubHead = "Fuel Drying Time",
                     Text = '
                     &nbsp<br>
                     &nbsp<br>
                     <div align = "center">
                     <table class = "table1">
                       <tr>
                         <th>Fuel Type</th>
                         <th>Original LPX</th>
                         <th>Modified LPX</th>
                       </tr>
                       <tr>
                         <td>Fine<br>1hr<br>&nbsp</td>
                         <td>25 hours</td>
                         <td>1 hour</td>
                       </tr>
                       <tr>
                         <td>Small twigs<br>10hr<br>&nbsp</td>
                         <td>460 hrs<br>(~20 days)</td>
                         <td>10 hour</td>
                       </tr>
                       <tr>
                         <td>Branch<br>100hr<br>&nbsp</td>
                         <td>1700 hrs<br>(&gt;2 months)</td>
                         <td>100 hours<br>(~4 days)</td>
                       </tr>
                       <tr>
                         <td>Log<br>1000hr<br>&nbsp</td>
                         <td>25,000 hrs<br>(~3 years)</td>
                         <td>1000 hours<br>(~1 1/2 months)</td>
                       </tr>
                     </table></div>
                     &nbsp<br>
                     &nbsp<br>',
                     Footer = Cite['Kelley2014a']))

DevelopmentFuelDrying1 = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "Fuel Drying Time",
                     Image = Images.LPXRS["Dry1"],
                     Footer = Cite['Kelley2014a']))

DevelopmentFuelDrying2 = DevelopmentFuelDrying1
DevelopmentFuelDrying2[[2]]$Image = Images.LPXRS["Dry"]


## Fuel Decay
DevelopmentFuelDecomp = list("slide",
            RightImage = list(
                     Title = SectionTitle,
                     SubHead = "Litter Decomposition Rate",
                     Text = c('<b>Original LPX</b>: Decomposition same across all litter',
                              '<b>Modified LPX</b>: Varying across
                                    <ul class="dashed">
                                        <li class = "dashed"> PFTs </li>
                                        <li class = "dashed"> Fine vs Coarse </li>
                                        <li class = "dashed"> Tempuratures </li>
                                    </ul>'),
                     Image = Images.LPXRS["Decomp"],
                     Footer = Cite['Kelley2014a']))

## resprouting


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
                     Text = c('<small>Original LPX:
                                    <ul class="dashed">
                                        <li class = "dashed"> Parameterized per PFT </li>
                                        <li class = "dashed"> Linearly increases with tree size </li>
                                    </ul>',
                              'Missed key aspects:
                                    <ul class="dashed">
                                        <li class = "dashed"> Within PFT variability. </li>
                                        <li class = "dashed"> Differences between plants with fire-adapted and fire-prone trait </li>
                                    </ul></small>'),
                     Image = Images.LPXRS["BT4"],
                     Footer = Cite['Kelley2014a']))

DevelopmentBT1 = DevelopmentBT2 = DevelopmentBT3 = DevelopmentBT4
DevelopmentBT1[[2]]$Image = Images.LPXRS["BT1"]
DevelopmentBT2[[2]]$Image = Images.LPXRS["BT2"]
DevelopmentBT3[[2]]$Image = Images.LPXRS["BT3"]

DevelopmentBT1[[2]]$Text[2] = makeInvisable(DevelopmentBT1[[2]]$Text[2])

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

Development = list(DevelopmentTitle, "New Page", DevelopmentOverview, "New Slide",
                   DevelopmentLightn1, "New Page", DevelopmentLightn2, "New Slide",
                        DevelopmentLightn3, "New Slide", DevelopmentLightn4, "New Slide",
                        DevelopmentLightn5, "New Slide",DevelopmentLightn, "New Slide",
                   DevelopmentRoot, "New Page",
                   DevelopmentFuelDrying, "New Page", DevelopmentFuelDrying1,
                        "New Slide", DevelopmentFuelDrying2, "New Slide",
                   DevelopmentFuelDecomp, "New Page",
                   DevelopmentRS,  "New Page",
                       DevelopmentRS1, "New Slide",  DevelopmentRS2, "New Slide",
                            DevelopmentRS3,
                            "New Slide", DevelopmentRS4, "New Slide",
                   DevelopmentBT1, "New Page",
                        DevelopmentBT2, "New Slide",
                        DevelopmentBT3, "New Slide",
                        DevelopmentBT4, "New Slide",
                        DevelopmentBTscheme1, "New Slide",
                        DevelopmentBTscheme2, "New Slide", DevelopmentBTscheme)

if (Short) {
    Development = list(DevelopmentTitle, "New Page", DevelopmentOverview, "New Slide",
                        DevelopmentRS,  "New Page",
                            DevelopmentRS1, "New Slide",  DevelopmentRS2, "New Slide",
                                 DevelopmentRS3, "New Slide", DevelopmentRS4, "New Slide",
                             DevelopmentBT1, "New Page",
                                  DevelopmentBT2, "New Slide",
                                  DevelopmentBT3, "New Slide",
                                  DevelopmentBT4, "New Slide",
                            DevelopmentBTscheme1, "New Slide",
                            DevelopmentBTscheme2, "New Slide", DevelopmentBTscheme)
}
################################################################################
## Evaluation                                                                 ##
################################################################################
Images.Evalu = c(CompFPC  = 'LPXcompAus3.png',
                 CompFire = 'LPXcompAus3.png',
                 FPCvClim = 'LPXMv1FPCvClimate.png',
                 DistRev  = 'LPXMv1Rec.png')

SectionTitle = "Model Evaluation"

EvaluationTitle = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "",
                     Image = Images.index['Index4'],
                     Footer = ""
                     ))

EvaluationInital = ErrorOverviewAus
EvaluationInital[[2]]$SubHead = 'Inital'

EvaluationOverview1 = list("slide",
                 LeftImage = list(
                     Title = SectionTitle,
                     SubHead = "New",
                     Image = Images.Evalu['CompFire'],
                     Text = '<table  class = "table1">
                                <tr>
                                <th></th>
                                    <th>Mean</th>
                                    <th>Rand</th>
                                    <th>LPX</th>
                                    <th>LPX-Mv1</th>
                                </tr>
                                <tr>
                                    <td>Tree Cover</td>
                                    <td>0.71</td>
                                    <td>0.89</td>
                                    <td>0.77</td>
                                    <td>0.58</td>
                                </tr>
                                <tr>
                                    <td>Burnt Area</td>
                                    <td>1.00</td>
                                    <td>1.25</td>
                                    <td>1.29</td>
                                    <td>0.85</td>
                                </tr>
                                <tr>
                                    <td>    - mean</td>
                                    <td>1.00</td>
                                    <td>1.25</td>
                                    <td>1.09</td>
                                    <td>0.89</td>
                                </tr>
                                <tr>
                                    <td>    - variance</td>
                                    <td>1.00</td>
                                    <td>1.26</td>
                                    <td>1.32</td>
                                    <td>1.09</td>
                                </tr>
                                <tr>
                                    <td>Inter-annual Burnt</td>
                                    <td>1.00</td>
                                    <td>1.35</td>
                                    <td>1.05</td>
                                    <td>0.68</td>
                                </tr>
                                <tr>
                                    <td>    - variance</td>
                                    <td>1.00</td>
                                    <td>1.33</td>
                                    <td>1.43</td>
                                    <td>0.90</td>
                                </tr>
                                <tr>
                                    <td>Season</td>
                                    <td>0.44</td>
                                    <td>0.47</td>
                                    <td>0.50</td>
                                    <td>0.44</td>
                                </tr>
                                </table>',
                     Footer = Cite['Kelley2014a']
                     ))

EvaluationOverview2 = EvaluationOverview1
EvaluationOverview2[[2]]$Image   = Images.Evalu['CompFPC']
EvaluationOverview2[[2]]$Text    = paste('<table  class = "table1">
           <tr>
           <th></th>
               <th>Mean</th>
               <th>Rand</th>
               <th>LPX</th>
               <th>LPX-Mv1</th>
           </tr>
           <tr>
               <td>Tree Cover</td>
               <td>0.71</td>
               <td>0.89</td>
               <td>',SmileyImage(3),'</td>
               <td>',SmileyImage(1),'</td>
           </tr>
           <tr>
               <td>Burnt Area</td>
               <td>1.00</td>
               <td>1.25</td>
               <td>',SmileyImage(5),'</td>
               <td>',SmileyImage(1),'</td>
           </tr>
           <tr>
               <td>    - mean</td>
               <td>1.00</td>
               <td>1.25</td>
               <td>',SmileyImage(3),'</td>
               <td>',SmileyImage(1),'</td>
           </tr>
           <tr>
               <td>    - variance</td>
               <td>1.00</td>
               <td>1.26</td>
               <td>',SmileyImage(5),'</td>
               <td>',SmileyImage(3),'</td>
           </tr>
           <tr>
               <td>Inter-annual Burnt</td>
               <td>1.00</td>
               <td>1.35</td>
               <td>',SmileyImage(3),'</td>
               <td>',SmileyImage(1),'</td>
           </tr>
           <tr>
               <td>    - variance</td>
               <td>1.00</td>
               <td>1.33</td>
               <td>',SmileyImage(5),'</td>
               <td>',SmileyImage(1),'</td>
           </tr>
           <tr>
               <td>Season</td>
               <td>0.44</td>
               <td>0.47</td>
               <td>',SmileyImage(5),'</td>
               <td>',SmileyImage(2),'</td>
           </tr>
           </table>'

    )

EvaluationExtra = EvaluationOverview1
EvaluationExtra[[2]]$Image   = Images.Evalu['CompFPC']
EvaluationExtra[[2]]$Text    = paste('<table  class = "table1">
           <tr>
           <th></th>
               <th>Metric</th>
               <th>LPX</th>
           </tr>
           <tr>
               <td>Recovery Time</td>
               <td>NME</td>
               <td>',SmileyImage(5),'</td>
           </tr>
           <tr>
               <td>Fire Control</td>
               <td> MM </td>
               <td>',SmileyImage(5),'</td>
           </tr>
           </table>'

    )

EvaluationExtra2 = EvaluationExtra
EvaluationExtra2[[2]]$Image   = Images.Evalu['CompFPC']
EvaluationExtra2[[2]]$Text    = paste('<table  class = "table1">
           <tr>
           <th></th>
               <th>LPX</th>
               <th>LPX-Mv1</th>
           </tr>
           <tr>
               <td> Recovery Time - Resprouting</td>
               <td>', SmileyImage(5), '</td>
               <td>', SmileyImage(1),'</td>
           </tr>
           <tr>
               <td> Recovery Time - Non-resprouting</td>
               <td>', SmileyImage(5), '</td>
               <td>', SmileyImage(5),'</td>
           </tr>
           <tr>
               <td> Fire Control </td>
               <td>',SmileyImage(5),'</td>
               <td>',SmileyImage(1),'</td>
           </tr>
           <tr>
               <td> Fire Control - Moisture </td>
               <td>',SmileyImage(5),'</td>
               <td>',SmileyImage(3),'</td>
           </tr>
           </table>'

    )


EvaluationFPC = list("slide",
                     Image = list(
                     Title = SectionTitle,
                     SubHead = "Fractional Cover vs Climate",
                              Image = Images.Evalu["FPCvClim"],
                              Footer = Cite['Kelley2014a']))

EvaluationRec = list("slide",
                    Image = list(Title = SectionTitle,
                              SubHead = "Disturbance Recovery Speed",
                              Image = Images.Evalu["DistRev"],
                              Footer = Cite['Kelley2014a']))


Evaluation=list(EvaluationTitle, "New Page", EvaluationInital,
                "New Slide", EvaluationOverview1, "New Slide",
                EvaluationOverview2, "New Slide", EvaluationRec,
                "New Slide", EvaluationFPC, "New Page", EvaluationExtra,
                "New Slide", EvaluationExtra2)

################################################################################
## Application                                                                ##
################################################################################
Images.Applc = c(Bench = 'FuturesBenchmarking.png',
                 Fire  = 'FutureFire2016.png',
                 Carbon = 'FutureCarbon.png',
                 Hydrol= 'FutureRunoff2016.png')

SectionTitle = "Model Application"

ApplicationTitle = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "",
                     Image = Images.index['Index5'],
                     Footer = ""))

## Introduction: Carbon, ecosystem composition, fire, hydrology
ApplicationOverview4 = list("slide",
                List = list(
                    Title   = SectionTitle,
                    SubHead = "Overview",
                    Text    = c('Simulating the impact of future climate change
                                 on vegetation dynamics:
                                 <small><table><tr>
                                     <th align="left"><ul class="dashed">
                                        <li class = "dashed"> Carbon Storage </li>
                                        <li class = "dashed"> Ecosystem Composition </li>
                                    </ul></th><th align="left"><ul class = "dashed">
                                        <li class = "dashed"> Fire </li>
                                        <li class = "dashed"> Hydrology </li>
                                    </ul></th></tr></table></small>',
                                 'Driving LPX-Mv1 with CMIP5 climate model outputs up to 2100',
                                 'Running different model configuration experiments to attribute changes',
                                 'Using Benchmark System to demonstrate model is
                                 "fit for purpose"')))

ApplicationOverview1 = ApplicationOverview2 = ApplicationOverview3 = ApplicationOverview4

ApplicationOverview1[[2]]$Text[2:4] = makeInvisable(ApplicationOverview1[[2]]$Text[2:4])
ApplicationOverview2[[2]]$Text[3:4] = makeInvisable(ApplicationOverview2[[2]]$Text[3:4])
ApplicationOverview3[[2]]$Text[4:4] = makeInvisable(ApplicationOverview3[[2]]$Text[4:4])

ApplicationBenchmarking = list("slide",
                LeftImage = list(
                    Title = SectionTitle,
                    SubHead = "Benchmarking (again)",
                    Image = Images.Applc['Bench'],
                    Text = '<small><table class = "table1">
                              <tr>
                                <th></th>
                                <th>NPP<br></th>
                                <th>R<sub>h</sub>&nbsp &nbsp &nbsp &nbsp </th>
                                <th>Fire Flux</th>
                                <th>Biomass Carbon</th>
                                <th>Fuel load</th>
                              </tr>
                              <tr>
                                <td></td>
                                <td colspan="4" align = "center">g C/m<sup>2</sup></td>
                                <td>g/m<sup>2</sup></td>
                              </tr>
                              <tr>
                                <td>Haverd</td>
                                <td>-2210 <br>&plusmn; 398</td>
                                <td>2029 <br>&plusmn; 342</td>
                                <td>127 <br>&plusmn; 22</td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>GFED</td>
                                <td></td>
                                <td></td>
                                <td>182 <br>&plusmn; 43</td>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>CDIAC</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>2388</td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>VAST</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>230</td>
                              </tr>
                              <tr>
                                <td>LPX-Mv1</td>
                                <td>-2191</td>
                                <td>1868</td>
                                <td>176</td>
                                <td>3481</td>
                                <td>202</td>
                              </tr>
                              <tr>
                                <td>Metric Score</td>
                                <td>0.75</td>
                                <td>0.82</td>
                                <td>0.92</td>
                                <td>0.94</td>
                                <td>0.73</td>
                              </tr>
                            </table></small>',
                        Footer = Cite["Kelley2014b"]))

ApplicationBenchmarkingSmiley = ApplicationBenchmarking
ApplicationBenchmarkingSmiley[[2]]$Text = paste(
    '<small><table class = "table1">
          <tr>
            <th></th>
            <th>NPP<br></th>
            <th>R<sub>h</sub>&nbsp &nbsp &nbsp &nbsp </th>
            <th>Fire Flux</th>
            <th>Biomass Carbon</th>
            <th>Fuel load</th>
          </tr>
          <tr>
            <td></td>
            <td colspan="4" align = "center">g C/m<sup>2</sup></td>
            <td>g/m<sup>2</sup></td>
          </tr>
          <tr>
            <td>Haverd</td>
            <td>-2210 <br>&plusmn; 398</td>
            <td>2029 <br>&plusmn; 342</td>
            <td>127 <br>&plusmn; 22</td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>GFED</td>
            <td></td>
            <td></td>
            <td>182 <br>&plusmn; 43</td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>CDIAC</td>
            <td></td>
            <td></td>
            <td></td>
            <td>2388</td>
            <td></td>
          </tr>
          <tr>
            <td>VAST</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>230</td>
          </tr>
          <tr>
            <td>LPX-Mv1</td>
            <td>-2191</td>
            <td>1868</td>
            <td>176</td>
            <td>3481</td>
            <td>202</td>
          </tr>
          <tr>
            <td>Metric Score</td>
            <td>',SmileyImage(1),'</td>
            <td>',SmileyImage(1),'</td>
            <td>',SmileyImage(1),'</td>
            <td>',SmileyImage(1),'</td>
            <td>',SmileyImage(1),'</td>
          </tr>
        </table></small>')

ApplicationFire = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        SubHead = "Future Fire",
                        Image = Images.Applc['Fire'],
                    Footer = Cite["Kelley2014b"]))

ApplicationHydology = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        SubHead = "Future Runoff",
                        Image = Images.Applc['Hydrol'],
                    Footer = Cite["UkkolaSub"]))

ApplicationCarbon = list("slide",
                    Image = list(
                        Title = SectionTitle,
                        SubHead = "Future Carbon",
                        Image = Images.Applc['Carbon'],
                    Footer = Cite["UkkolaSub"]))

Application = list( ApplicationTitle, "New Page",
                    ApplicationOverview1, "New Page",
                        ApplicationOverview2, "New Slide",
                        ApplicationOverview3, "New Slide",
                        ApplicationOverview4,   "New Slide",
                    ApplicationBenchmarking, "New Page", ApplicationBenchmarkingSmiley, "New Slide",
                    ApplicationCarbon, "New Page",
                    ApplicationFire, "New Page", ApplicationHydology)

if (Short) {
    Application = list( ApplicationTitle, "New Page",
                        ApplicationOverview1, "New Page",
                            ApplicationOverview2, "New Slide",
                            ApplicationOverview3, "New Slide",
                            ApplicationOverview4,   "New Slide",
                        ApplicationBenchmarking, "New Page", ApplicationBenchmarkingSmiley, "New Slide",
                        ApplicationCarbon)
}
################################################################################
## FireMip                                                                    ##
################################################################################

## Breif Descriotion

## Inital results

################################################################################
## Conclusions                                                             ##
################################################################################
Images.Concl = "BenchmarkingR.png"

BenchmarkingR = list ("slide",
                    Image = list(
                        Title = "Benchmarking Metrics Package",
                        SubHead = "douglask3.github.io/tools",
                        Image = Images.Concl))

Conclusions = list(BenchmarkingTitle, "New Slide",
                        BenchmarkingOverview1A, "New Slide",
                        BenchmarkingOverview1B, "New Slide",
                        BenchmarkingOverview1C, "New Slide",
                        BenchmarkingOverview1D, "New Slide",
                        BenchmarkingR)

if (Short) {
    Conclusions = list(BenchmarkingTitle, "New Slide",
                            BenchmarkingR)
}
################################################################################
## Allocation and Pheneology                                                  ##
################################################################################
Images.CafeM = c(PhendulumStep1 = 'PhendulumStep1.png',
                 PhendulumStep2 = 'PhendulumStep2.png',
                 PhendulumStep3 = 'PhendulumStep3.png',
                 PhendulumStep4 = 'PhendulumStep4.png',
                 Phendulum      = 'Phendulum.png',
                 Allocation     = 'Allocation.png')

Phendulum1 = list("slide",
                Image = list(
                    Title = "Phendulum",
                    Image = Images.CafeM['PhendulumStep1']
                    ))

PhendulumResults = Phendulum2 = Phendulum3 = Phendulum4 = Phendulum1

Phendulum2[[2]]$Image = Images.CafeM['PhendulumStep2']
Phendulum3[[2]]$Image = Images.CafeM['PhendulumStep3']
Phendulum4[[2]]$Image = Images.CafeM['PhendulumStep4']
PhendulumResults[[2]]$Image = Images.CafeM['Phendulum']

Allocation = list("slide",
                Image = list(
                    Title = "Allocation Model Testing",
                    Image = Images.CafeM['Allocation']
                    ))

CafeM = list(Phendulum1, "New Page", Phendulum2, "New Slide", Phendulum3,
             "New Slide", Phendulum4, "New Slide",
             PhendulumResults, "New Page", Allocation)

################################################################################
## Collate                                                                    ##
################################################################################

Images = c(Images.index, Images.title, Images.Intro, Images.LPX, Images.Bench, Images.Error,
           Images.LPXRS, Images.Evalu, Images.Applc, Images.Smiley, Images.Concl,
           Images.CafeM)

AdditionalSection = c(TitlePage, "New Slide", Introduction, "New Slide",
                      LPX, "New Slide", Benchmarking, "New Slide", Error, "New Slide",
                      Development, "New Slide", Evaluation, "New Slide",
                      Application, "New Slide", Conclusions, "New Slide", CafeM)
