###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')

###############################################################
## Basic Infomation                                          ##
###############################################################
Top = NULL

Name    = c("Douglas Kelley",
            "Recent work pertinent to<br>modelling and environmental science",
            "Iterative Model Development")

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")

Images = c(Title = 'TreeProtractor.png',
           ThesisSummary = 'ThesisStructure.png',
           Structure1    = 'PresStructure_slide1.png',
           Structure2    = 'PresStructure_slide2.png',
           Structure3    = 'PresStructure_slide3.png',
           Structure4    = 'PresStructure_slide4.png',
           Structure5    = 'PresStructure_slide5.png',
           Structure6    = 'PresStructure_slide6.png',
           Index1        = 'PresStructure_index1.png',
           Index2        = 'PresStructure_index2.png',
           Index3        = 'PresStructure_index3.png',
           Index4        = 'PresStructure_index4.png',
           Index5        = 'PresStructure_index5.png',
           Datasets      = "BenchmarkDatasets.png",
           NME1          = "NME1.png",
           NME2          = "NME2.png",
           NME3          = "NME3.png",
           NMEIAV1       = "NMEIAV1.png",
           NMEIAV2       = "NMEIAV2.png",
           NMEIAV        = "NMEIAV.png",
           NME           = "NMEFull.png",
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
           MPD           = "MPDFull.png")

ImagesPath = 'CEHlandSurface/images/'

###############################################################
## Slide                                                     ##
###############################################################

###############################################################
## Title                                                     ##
###############################################################
TopPage   = list("slide",
                 List = list(
                     Title = "Recent work pertinent to modelling
                                and environmental science",
                       SubHead = "Made in project: r-cv",
                       Text = c(paste("Project URL:", gitRemoteURL()),
                                paste("Git version:", gitVersionNumber()))
                     ))

TitlePage = list("slide",
                 bgImage = Images['Title'],
                 H1 = "Recent work pertinent to modelling and
                         environmental science")

TitlePage2 = TitlePage
TitlePage2$H1 = "Iterative Model Development"

TitlePage = list(TopPage, "New Slide", TitlePage, "New Slide", TitlePage2)

###############################################################
## Introduction                                              ##
###############################################################

Introduction1 = list("slide",
                    Image = list(
                        Title = "Introduction",
                        SubHead = "Iterative Model Development",
                        Image = Images['Structure1'],
                        Footer = "Kelley 2014"
                        ))

Introduction2 = Introduction3 = Introduction4 =
    Introduction5 = Introduction6 = Introduction7 =
        Introduction1

Introduction2$Image$Image = Images['Structure2']
Introduction3$Image$Image = Images['Structure3']
Introduction4$Image$Image = Images['Structure4']
Introduction5$Image$Image = Images['Structure5']
Introduction6$Image$Image = Images['Structure6']

Introduction = list(Introduction1, "New Page",
    Introduction2, "New Slide",
    Introduction3, "New Slide",
    Introduction4, "New Slide",
    Introduction5, "New Slide",
    Introduction6)

###############################################################
## Benchmarking                                              ##
###############################################################
BenchmarkingTitle = list("slide",
                    Image = list(
                        Title = "Benchmarking System",
                        SubHead = "",
                        Image = Images['Index1'],
                        Footer = ""
                        ))

BenchmarkingOverview1 = list("slide",
                       List = list(
                           Title   = "Benchmarking System",
                           SubHead = "Overview",
                           Text    = c('Quantify how well a model performs
                                        across a comprehensive range of important
                                        processes',
                                        'Allows identification of model weaknesses
                                        and processes that require improvement',
                                        'Quantifies the differences between
                                        model version and impact of new
                                        parameterizations',
                                        'Allows model inter-comparison')))

BenchmarkingOverview2 = BenchmarkingOverview1
BenchmarkingOverview2[[2]]$Text = c('
            Lots of datasets to evaluate multiple key
             processes:
             <table><tr>
                 <th align="left"><ul class="dashed">
                     <li class = "dashed"> Photosynthesis </li>
                     <li class = "dashed"> Respiration </li>
                     <li class = "dashed"> Growth </li>
                 </ul></th>
                 <th align="left"><ul class="dashed">
                     <li class = "dashed"> Competition </li>
                     <li class = "dashed"> Fire disturbance </li>
                     <li class = "dashed"> Hydrology </li>
                 </ul></th>
             </tr></table>',
             'Uses specifically designed metrics to quantify
             differences between model and observation')


BenchmarkingDatasets = list("slide",
                        Image = list(
                            Title = "Benchmarking",
                            SubHead = "Datasets",
                            Image = Images["Datasets"]))

BenchmarkingMetrics = list("slide",
                        Image = list(
                            Title = "Benchmarking",
                            SubHead = "Metrics"))

BenchmarkingNME     = list("slide",
                        Image = list(
                            Title = "Benchmarking",
                            SubHead = "Metrics<br>
                                <small> Normalised Mean Error (NME) </small>",
                            Image = Images["NME"]))

BenchmarkingNME1 = BenchmarkingNME2 = BenchmarkingNME3 =
    BenchmarkingNMEIAV = BenchmarkingNME

BenchmarkingNME1[[2]]$Image = Images["NME1"]
BenchmarkingNME2[[2]]$Image = Images["NME2"]
BenchmarkingNME3[[2]]$Image = Images["NME3"]

BenchmarkingNMEIAV[[2]]$SubHead = "Metrics<br>
                            <small> NME - Inter-annual Variability (NME - IAV)</small>"

BenchmarkingNMEIAV[[2]]$Image = Images["NMEIAV"]

BenchmarkingNMEIAV1 = BenchmarkingNMEIAV2 = BenchmarkingNMEIAV

BenchmarkingNMEIAV1[[2]]$Image = Images["NMEIAV1"]
BenchmarkingNMEIAV2[[2]]$Image = Images["NMEIAV2"]

BenchmarkingMM      = list("slide",
                        Image = list(
                            Title = "Benchmarking",
                            SubHead = "Metrics<br>
                                <small> Manhattan Metric (MM) </small>",
                            Image = Images["MM"]))

BenchmarkingMM1 = BenchmarkingMM2 = BenchmarkingMM3 = BenchmarkingMM4 =
    BenchmarkingMM5 = BenchmarkingMM6 = BenchmarkingMM

BenchmarkingMM1[[2]]$Image = Images["MM1"]
BenchmarkingMM2[[2]]$Image = Images["MM2"]
BenchmarkingMM3[[2]]$Image = Images["MM3"]
BenchmarkingMM4[[2]]$Image = Images["MM4"]
BenchmarkingMM5[[2]]$Image = Images["MM5"]
BenchmarkingMM6[[2]]$Image = Images["MM6"]

BenchmarkingMPD      = list("slide",
                        Image = list(
                            Title = "Benchmarking",
                            SubHead = "Metrics<br>
                                <small> Seasonality & Mean Phase Difference (MPD) </small>",
                            Image = Images["MPD"]))

BenchmarkingMPD1 = BenchmarkingMPD2A = BenchmarkingMPD2B = BenchmarkingMPD3 =
    BenchmarkingMPD4 = BenchmarkingMPD5 = BenchmarkingMPD6 = BenchmarkingMPD7 =
    BenchmarkingMPD8 = BenchmarkingMPD9 = BenchmarkingMPD

BenchmarkingMPD1[[2]]$Image = Images["MPD1"]
BenchmarkingMPD2A[[2]]$Image = Images["MPD2A"]
BenchmarkingMPD2B[[2]]$Image = Images["MPD2B"]
BenchmarkingMPD3[[2]]$Image = Images["MPD3"]
BenchmarkingMPD4[[2]]$Image = Images["MPD4"]
BenchmarkingMPD5[[2]]$Image = Images["MPD5"]
BenchmarkingMPD6[[2]]$Image = Images["MPD6"]
BenchmarkingMPD7[[2]]$Image = Images["MPD7"]
BenchmarkingMPD8[[2]]$Image = Images["MPD8"]
BenchmarkingMPD9[[2]]$Image = Images["MPD9"]

Benchmarking = list(BenchmarkingTitle, "New Page", BenchmarkingOverview1,
                    "New Slide", BenchmarkingOverview2, "New Slide",
                    BenchmarkingDatasets, "New Slide",
                    BenchmarkingMetrics, "New Page",
                    BenchmarkingNME1, "New Slide", BenchmarkingNME2, "New Slide",
                        BenchmarkingNME3, "New Slide", BenchmarkingNME, "New Slide",
                    BenchmarkingNMEIAV1, "New Slide", BenchmarkingNMEIAV2, "New Slide",
                        BenchmarkingNMEIAV, "New Slide",
                    BenchmarkingMM1, "New Slide", BenchmarkingMM2,
                        "New Slide", BenchmarkingMM3, "New Slide",
                        BenchmarkingMM4, "New Slide", BenchmarkingMM5,
                        "New Slide", BenchmarkingMM6, "New Slide",
                        BenchmarkingMM, "New Slide",
                    BenchmarkingMPD1, "New Slide", BenchmarkingMPD2A, "New Slide",
                        BenchmarkingMPD2B, "New Slide", BenchmarkingMPD3, "New Slide",
                        BenchmarkingMPD4, "New Slide", BenchmarkingMPD5, "New Slide",
                        BenchmarkingMPD6, "New Slide", BenchmarkingMPD7, "New Slide",
                        BenchmarkingMPD8, "New Slide", BenchmarkingMPD9, "New Slide",
                        BenchmarkingMPD)

AdditionalSection = c(TitlePage, "New Slide", Introduction, "New Slide",
                      Benchmarking)
