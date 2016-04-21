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

Images.index = c(Index1        = 'PresStructure_index1.png',
                 Index2        = 'PresStructure_index2.png',
                 Index3        = 'PresStructure_index3.png',
                 Index4        = 'PresStructure_index4.png',
                 Index5        = 'PresStructure_index5.png')


ImagesPath = 'CEHlandSurface/images/'

###############################################################
## Slide                                                     ##
###############################################################

###############################################################
## Title                                                     ##
###############################################################
Images.title = c(Title = 'TreeProtractor.png')

TopPage   = list("slide",
                 List = list(
                     Title = "Recent work pertinent to modelling
                                and environmental science",
                       SubHead = "Made in project: r-cv",
                       Text = c(paste("Project URL:", gitRemoteURL()),
                                paste("Git version:", gitVersionNumber()))
                     ))

TitlePage = list("slide",
                 bgImage = Images.title['Title'],
                 H1 = "Recent work pertinent to modelling and
                         environmental science")

TitlePage2 = TitlePage
TitlePage2$H1 = "Iterative Model Development"

TitlePage = list(TopPage, "New Slide", TitlePage, "New Slide", TitlePage2)

###############################################################
## Introduction                                              ##
###############################################################
Images.Intro = c(ThesisSummary = 'ThesisStructure.png',
                 Structure1    = 'PresStructure_slide1.png',
                 Structure2    = 'PresStructure_slide2.png',
                 Structure3    = 'PresStructure_slide3.png',
                 Structure4    = 'PresStructure_slide4.png',
                 Structure5    = 'PresStructure_slide5.png',
                 Structure6    = 'PresStructure_slide6.png')


Introduction1 = list("slide",
                    Image = list(
                        Title = "Introduction",
                        SubHead = "Iterative Model Development",
                        Image = Images.Intro['Structure1'],
                        Footer = "Kelley 2014"
                        ))

Introduction2 = Introduction3 = Introduction4 =
    Introduction5 = Introduction6 = Introduction7 =
        Introduction1

Introduction2$Image$Image = Images.Intro['Structure2']
Introduction3$Image$Image = Images.Intro['Structure3']
Introduction4$Image$Image = Images.Intro['Structure4']
Introduction5$Image$Image = Images.Intro['Structure5']
Introduction6$Image$Image = Images.Intro['Structure6']

Introduction = list(Introduction1, "New Page",
                    Introduction2, "New Slide",
                    Introduction3, "New Slide",
                    Introduction4, "New Slide",
                    Introduction5, "New Slide",
                    Introduction6)

###############################################################
## Benchmarking                                              ##
###############################################################
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
                 Null1         = "NullModels1.png",
                 Null2         = "NullModels2.png",
                 Null3         = "NullModels3.png",
                 Null4         = "NullModels4.png",
                 Null5         = "NullModels5.png",
                 Null          = "NullModels.png")


BenchmarkingTitle = list("slide",
                    Image = list(
                        Title = "Benchmarking System",
                        SubHead = "",
                        Image = Images.index['Index1'],
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
                            Image = Images.Bench["Datasets"]))

################################################################################
## Metrics                                                                    ##
################################################################################
BenchmarkingMetrics = list("slide",
                        Image = list(
                            Title = "Benchmarking",
                            SubHead = "Metrics"))

BenchmarkingNME     = list("slide",
                        Image = list(
                            Title = "Benchmarking",
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
                            Title = "Benchmarking",
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
                            Title = "Benchmarking",
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
                            Title = "Benchmarking",
                            SubHead = "Null Models",
                            Image = Images.Bench["Null"]))

BenchmarkingNULL1 = BenchmarkingNULL2 = BenchmarkingNULL3 =
    BenchmarkingNULL5 = BenchmarkingNULL

BenchmarkingNULL1[[2]]$Image = Images.Bench["Null1"]
BenchmarkingNULL2[[2]]$Image = Images.Bench["Null2"]
BenchmarkingNULL3[[2]]$Image = Images.Bench["Null3"]
BenchmarkingNULL5[[2]]$Image = Images.Bench["Null5"]


Benchmarking = list(BenchmarkingTitle, "New Page", BenchmarkingOverview1,
                    "New Slide", BenchmarkingOverview2, "New Slide",
                    BenchmarkingDatasets, "New Slide",
                    BenchmarkingMetrics, "New Page",
                    BenchmarkingNME1, "New Slide", BenchmarkingNME2, "New Slide",
                        BenchmarkingNME3, "New Slide", BenchmarkingNME, "New Slide",
                        BenchmarkingSteps, "New Slide",
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
                        BenchmarkingMPD, "New Slide",
                    BenchmarkingNULL1, "New Slide", BenchmarkingNULL2,"New Slide",
                        BenchmarkingNULL3,"New Slide", BenchmarkingNULL5,
                        "New Slide", BenchmarkingNULL)

################################################################################
## Evalution                                                                  ##
################################################################################


################################################################################
## Improvment                                                                 ##
################################################################################
## Lightning Scheme

## Rooting Depth

## Fuel Drying

## Fuel Decay

## Adpative Bark Thickness

## resprouting


################################################################################
## Application                                                                ##
################################################################################

## Introduction: Carbon, ecosystem composition, fire, hydrology

## Fit For purpose

## Results

################################################################################
## FireMip                                                                    ##
################################################################################

## Breif Descriotion

## Inital results

################################################################################
## Allocation and Pheneology                                                  ##
################################################################################



################################################################################
## Collate                                                                    ##
################################################################################

Images = c(Images.index, Images.title, Images.Intro, Images.Bench)
AdditionalSection = c(TitlePage, "New Slide", Introduction, "New Slide",
                      Benchmarking)
