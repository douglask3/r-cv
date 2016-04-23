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
                 Metrics       = "Metrics.png",
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
                            SubHead = "Metrics",
                            Image = Images.Bench["Metrics"]))

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
                    BenchmarkingMetrics, "New Page",
                    BenchmarkingNULL1, "New Page", BenchmarkingNULL2,"New Slide",
                        BenchmarkingNULL3,"New Slide", BenchmarkingNULL5,
                        "New Slide", BenchmarkingNULL)

################################################################################
## Error Identification                                                       ##
################################################################################
Images.Error = c(Comp     = 'LPXcompGlob.png',
                 CompAus  = 'LPXcompAus.png',
                 CompAus1 = 'LPXcompAus.png')
SectionTitle = "Error Identification"

ErrorTitle = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "",
                     Image = Images.index['Index2'],
                     Footer = ""
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
                                    <td>Inter-annual Burnt Area</td>
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
                     Footer = "Kelley et al. 2013"
                     ))

ErrorOverviewAus = list("slide",
                 LeftImage = list(
                     Title = SectionTitle,
                     SubHead = "Australia",
                     Image = Images.Error['CompAus'],
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
                                <td>Inter-annual Burnt Area</td>
                                <td>1.00</td>
                                <td>1.35</td>
                                <td>1.05</td>
                                </tr>
                                <tr>
                                <td>    - variance removed</td>
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
                     Footer = "Kelley et al. 2013"
                     ))

ErrorOverviewAus1 = ErrorOverviewAus
ErrorOverviewAus1[[2]]$Image = Images.Error['CompAus1']


Error = list(ErrorTitle, "New Page", ErrorOverview, "New Slide",
                ErrorOverviewAus1, "New Slide", ErrorOverviewAus)
################################################################################
## Development                                                                ##
################################################################################
Images.Devlp = c(LPX       = "LPX_diagram.png",
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
                 RS1       = "RS1.png",
                 RS2       = "RS2.png",
                 RS3       = "RS3.png",
                 RS        = "RS.png",
                 BT        = "BT.png",
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
                    Text    = c('Lightning ignition',
                                'Fuel drying time',
                                'Fuel decomposition',
                                'Rooting depth',
                                'Bark thickness',
                                'Resprouting')))

## Lightning Scheme
# https://www.flickr.com/photos/thelightningman/7233369438/in/photolist-c2bUJb-fpE79S-cAiwJW-2PUGt3-rmYzPX-vJUYX9-9CAhAH-9S5VG8-nCgx9M-hAqaWs-nAvznR-51Qf1g-eNit1X-4SwcXG-pks9rr-g8HeP5-nRYoxq-fLfM2d-nzaKRr-5mJGv6-6RnwTa-om8cCt-5hieMx-c91J4f-bwg48v-aEBd4Q-cM3N47-njNShm-eajqsB-af4qhG-brjU6p-5k6Xuj-oUNnea-rJuckS-96p7PZ-9RXP2o-qNT35r-aExkWT-afaEei-cEzC2q-oiQrgD-sHqv4R-6tAo8f-aDbNpr-omzh5o-6PcfUk-en4R3Q-oaGm2v-emMi3b-r7oDjr
# https://commons.wikimedia.org/wiki/File:Scottobear_-_051231_sun_%28by-sa%29.jpg
DevelopmentLightn = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "Lightning ignition",
                     Image = Images.Devlp["Lightn"],
                     Footer = "Kelley et al. 2014"))

DevelopmentLightn1 = DevelopmentLightn2 = DevelopmentLightn3 = DevelopmentLightn4 =
    DevelopmentLightn5 = DevelopmentLightn

DevelopmentLightn1[[2]]$Image = Images.Devlp["Lightn1"]
DevelopmentLightn2[[2]]$Image = Images.Devlp["Lightn2"]
DevelopmentLightn3[[2]]$Image = Images.Devlp["Lightn3"]
DevelopmentLightn4[[2]]$Image = Images.Devlp["Lightn4"]
DevelopmentLightn5[[2]]$Image = Images.Devlp["Lightn5"]

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
                     Image = Images.Devlp["Root"],
                     Footer = "Kelley et al. 2014"))


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
                         <td>Fine<br>1hr</td>
                         <td>25 hours</td>
                         <td>1 hour</td>
                       </tr>
                       <tr>
                         <td>Small twigs<br>10hr</td>
                         <td>460 hrs<br>(~20 days)</td>
                         <td>10 hour</td>
                       </tr>
                       <tr>
                         <td>Branch<br>100hr</td>
                         <td>1700 hrs<br>(&gt;2 months)</td>
                         <td>100 hours<br>(~4 days)</td>
                       </tr>
                       <tr>
                         <td>Log<br>1000hr</td>
                         <td>25,000 hrs<br>(~3 years)</td>
                         <td>1000 hours<br>(~1 1/2 months)</td>
                       </tr>
                     </table></div>',
                     Footer = "Kelley et al. 2014"))

DevelopmentFuelDrying1 = list("slide",
                 Image = list(
                     Title = SectionTitle,
                     SubHead = "Fuel Drying Time",
                     Image = Images.Devlp["Dry1"],
                     Footer = "Kelley et al. 2014"))

DevelopmentFuelDrying2 = DevelopmentFuelDrying1
DevelopmentFuelDrying2[[2]]$Image = Images.Devlp["Dry"]


## Fuel Decay
DevelopmentFuelDecomp = list("slide",
            RightNarrowImage = list(
                     Title = SectionTitle,
                     SubHead = "Litter Decomposition Rate",
                     Text = c('<b>Original LPX</b>: Decomposition same across all litter',
                              '<b>Modified LPX</b>: Varying across
                                    <ul class="dashed">
                                        <li class = "dashed"> PFTs </li>
                                        <li class = "dashed"> Fine vs Coarse </li>
                                        <li class = "dashed"> Tempuratures </li>
                                    </ul>'),
                     Image = Images.Devlp["Decomp"],
                     Footer = "Kelley et al. 2014"))

## resprouting
DevelopmentRS = list("slide",
            Image = list(
                     Title = SectionTitle,
                     SubHead = "Resprouting",
                     Image = Images.Devlp["RS"],
                     Footer = "Kelley et al. 2014"))

DevelopmentRS1 = DevelopmentRS2 = DevelopmentRS3 = DevelopmentRS

DevelopmentRS1[[2]]$Image = Images.Devlp["RS1"]
DevelopmentRS2[[2]]$Image = Images.Devlp["RS2"]
DevelopmentRS3[[2]]$Image = Images.Devlp["RS3"]

## Adpative Bark Thickness
DevelopmentBT = list("slide",
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
                     Image = Images.Devlp["BT"],
                     Footer = "Kelley et al. 2014"))

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
                                        <li class = "dashed"> Trees establish based on inital distribution. </li>
                                        <li class = "dashed"> New distribution from weighted average of survivors and established </li>
                                    </ul>'),
                     Image = Images.Devlp["BTscheme"],
                     Footer = "Kelley et al. 2014"))

DevelopmentBTscheme1 = DevelopmentBTscheme2 = DevelopmentBTscheme

DevelopmentBTscheme1[[2]]$Image = Images.Devlp["BTscheme1"]
DevelopmentBTscheme2[[2]]$Image = Images.Devlp["BTscheme2"]

Development = list(DevelopmentTitle, "New Page", DevelopmentOverview, "New Slide",
                   DevelopmentLightn1, "New Page", DevelopmentLightn2, "New Slide",
                        DevelopmentLightn3, "New Slide", DevelopmentLightn4, "New Slide",
                        DevelopmentLightn5, "New Slide",DevelopmentLightn, "New Slide",
                   DevelopmentRoot, "New Slide",DevelopmentFuelDrying,
                   "New Slide", DevelopmentFuelDrying1, "New Slide", DevelopmentFuelDrying2,
                   "New Slide", DevelopmentFuelDecomp, "New Slide",
                   DevelopmentRS1, "New Slide", DevelopmentRS2, "New Slide",
                   DevelopmentRS3, "New Slide", DevelopmentRS, "New Slide",
                   DevelopmentBT, "New Slide", DevelopmentBTscheme1, "New Slide", DevelopmentBTscheme2, "New Slide", DevelopmentBTscheme)


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

Images = c(Images.index, Images.title, Images.Intro, Images.Bench, Images.Error,
           Images.Devlp)
AdditionalSection = c(TitlePage, "New Slide", Introduction, "New Slide",
                      Benchmarking, "New Slide", Error, "New Slide", Development)
