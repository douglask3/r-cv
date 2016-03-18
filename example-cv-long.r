###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')

###############################################################
## Head                                                      ##
###############################################################
Top = '
<a href= "http://douglask3.github.io/cv/long/example-long.html", target = "_blank"> Open in new page, click here </a><br>
<a href= "http://douglask3.github.io/docs/cv.pdf", target = "_blank"> Click here for PDF</a>'


###############################################################
## Basic Infomation                                          ##
###############################################################
Name    = c("Douglas Kelley", "Biosphere & Climate Dynamics Modelling",
            'Extended CV - <a href = "http://douglask3.github.io/cv/short/example.html"> For Summary click here</a>', "docs/me.jpg")


Contact = NULL

Authors = c("DI Kelley", "D Kelley")
###############################################################
## Additional Sections                                       ##
###############################################################
ExtendingContact = c("Contact Information",
                        "Name"           = "Douglas I Kelley",
                        "Work Address"   = "<br>Department of Geography & Environmental Science
                                            <br>University of Reading
                                            <br>Whiteknights
                                            <br>Reading
                                            <br>RG6 6AB
                                            <br>UK",
                        "Home Address"   = "<br>Flat 40
                                            <br>18 Oxford Road
                                            <br>Reading
                                            <br>Berkshire
                                            <br>RG1 7LB
                                            <br>UK",
                        "Email"          = '<a href="mailto:douglas.i.kelley@gmail.com">douglas.i.kelley@gmail.com</a>',
                        "Web"            = '<a href="http://douglask3.github.io/" target="_blank">douglask3.github.io</a>',
                        "Phone"          = "+44 (0) 7936 726 819")


Qualifications = list(Name = "Academic qualification",
        c("PhD Ecology" = "",
          "Modelling Australian fire regimes" = "https://drive.google.com/file/d/0B6T4MHlQ-DuNS2ZsV09mdkdwYms/view?usp=sharing",
          "2010-2014",
          "Macquarie University, Department of Biological Sciences, Ryde, NSW, Australia" = "https://bitbucket.org/teambcd/",
          'Benchmarking and developing the LPX Dynamic Global Vegetation Model
          (DGVM) to improve the simulation of fire and fire-vegetation
          interaction. Using this new version of LPX to simulate fire,
          vegetation and carbon dynamics in Australia over the 21<sup>st</sup> century. Thesis can be downloaded from <a href="goo.gl/9YjwKw"> www.goo.gl/9YjwKw </a>'),

        c("MSc Earth System Science" = "http://www.bristol.ac.uk/cabot/postgrad/msc-ccsp.html",
          "Main dissertation: Wildfires as part of the global carbon cycle - quantitative analysis using data assimilation" = "",
          "2007-2008",
          "University of Bristol, Department of Earth Sciences, UK" = "http://www.bristol.ac.uk/earthsciences/",
          "Other subjects covered: Earth system modelling; Natural hazards; Remote sensing & GIS; Isotopes and other Earth System tracers; Climate change science and policy"),

        c("BSc (Hons.) Physics" = "http://www2.warwick.ac.uk/study/undergraduate/courses/f300",
          "Main dissertation: Modelling atmospheric effects on starlight" = "",
          "2002-2007",
          "University of Warwick, Department of Physics, UK" = "http://www2.warwick.ac.uk/fac/sci/physics",
          ""))

Employment = list(Name = "Employment History",

        c("Postdoctoral Research Assistant" = "",
          "Apr 2015-present",
          "Department of Geography & Environmental Science, University of Reading, UK" = "https://www.reading.ac.uk/geographyandenvironmentalscience/",
          "Simulating present and future fire regimes using a coupled dynamic global vegetation model (DGVM) and process-based fire model."),

        c("Postdoctoral Research Assistant" = "",
          "Oct 2014-Apr 2015",
          "Cafe M Research Group, Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "https://bmedlyn.wordpress.com/",
          "Testing conceptual phenology and plant carbon allocation models under changing climate and fertilization from elevated CO<sub>2</sub>."),

          "New Page",

        c("Research Assistant" = "",
          "Jun 2014-Oct 2014",
          "Biosphere & Climate Dynamics, Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
          "Modelling changes in past and future vegetation-fire dynamics, and its feedback on terrestrial and atmospheric carbon."),

        c("Research Assistant" = "",
          "Sep 2008-Sep 2010",
          "Department of Geographical Sciences, University of Bristol, UK" = "http://www.bristol.ac.uk/geography/",
          "Developing a coupled DGVM-fire model and applying the model to: test the effectiveness of different fire management techniques in current and future climates; and simulate paleo vegetation and carbon stocks."),

        c("Earth System Science Summer School coordinator" = "http://www.greencycles.org/greencycles1/ES4%20flyer_2008.pdf",
          "Apr 2008-Sep 2008",
          "Department of Earth Sciences, University of Bristol, UK" = "http://www.bristol.ac.uk/earthsciences/",
          "Publicity; lecture and seminar timetabling; finding and organising guest lectures; general admin."),

        c("Widening Participation" = "",
          "Sep 2007-Sep 2008",
          "Widening Participation Office, University of Bristol, UK" = "http://www.bristol.ac.uk/sraa/uk-student-recruitment/student-support-team/",
          "Working with students in primary and secondary education to encourage university attendance from low socio-economic backgrounds: helping organise & run University open days and campus tours; school presentations and career evenings."))

Published = MakePublicationDocument.Rlist(usrID, NULL)

replaceAuthor <- function(pub) {
    if (pub[1] == "P Ciais, A Tagliabue, M Cuntz, L Bopp, M Scholze, G Hoffmann, ...")
        pub[1] =  "P Ciais, A Tagliabue, M Cuntz, L Bopp, Marko Scholze, G Hoffmann, A Lourantou, Sandy P Harrison, IC Prentice, DI Kelley, C Koven, SL Piao"

    if (pub[1] == "T Kaminski, W Knorr, G Schürmann, M Scholze, PJ Rayner, S Zaehle, ...")
        pub[1] =  "T Kaminski, W Knorr, G Schürmann, M Scholze, PJ Rayner, S Zaehle, S Blessing, W Dorigo, V Gayler, R Giering, N Gobron, JP Grant, M Heimann, A Hooker‐Stroud, S Houweling, T Kato, J Kattge, DI Kelley, S Kemp, EN Koffi, C Köstler, P‐P Mathieu, B Pinty, C H Reick, C Rödenbeck, R Schnur, K Scipal, C Sebald, T Stacke, A Terwisscha Scheltinga, M Vossbeck, H Widmann, T Ziehn"

    if (pub[1] == "S Harrison, J Midgley, B Hoffmann, I Radford, C Nano, B Murphy10, ...")
        pub[1] =  "S Harrison, J Midgley, B Hoffmann, I Radford, C Nano, B Murphy, R Gunton, D Kelley, G Hempson"

    return(pub)
}

Published = lapply(Published, replaceAuthor)

Published = c(Published[1:6], "New Page", Published[7:length(Published)])

Publications = list(Name = "Publications",
                    Main = MakeUserProfile(usrID, 'unformatted'),
                    c("Published Papers",
                         Published),

                    list("Submitted",

                         c("SP Harrison, DI Kelley",
                           "Projected changes in Australian fire regimes during the 21<sup>st</sup> century and consequences for ecosystems",
                           "International Journal of Wildland Fire",
                           "",
                           "",
                           ""),

                         c("S Hantson, A Arneth, SP Harrison, DI Kelley, IC Prentice, SS Rabin, S Archibald. ...",
                           "The status and challenge of global fire modelling",
                           "Biogeosciences",
                           "bg-2016-17",
                           "",
                           ""),

                         c("A Ukkola, T Keenan, DI Kelley, IC Prentice",
                           "Vegetation buffers the water-resource impacts of environmental change in regions with declining precipitation",
                           "Environmental Research Letters",
                           "ERL-102203",
                           "",
                           "")),

                    list("In Prep",

                         c("DI Kelley, M de Kauwe, B Medlyn",
                           "Testing allocation strategies in a simple ecosystem model",
                           "",
                           "",
                           "",
                           ""),

                         c("SP Harrison, DI Kelley, H Wang, A Herbert, G Li, R Bradstock, J Fontaine, N Enright, BP Murphy, BK Pekin, T Penman, J Russell-Smith, RS Wittkuhn",
                           "Patterns in the abundance of post-fire resprouting in Australia based on plot-level measurements.",
                           "",
                           "",
                           "",
                           ""),

                         c("R Whitley, DI Kelley, M de Kauwe, TF Keenan",
                           "Phendulum - A first principles model of describing savanna phenology",
                           "",
                           "",
                           "",
                           ""),
                         c("S Hantson, SP Harrison, DI Kelley, ...",
                           "The Fire Modeling Intercomparison Project (FireMIP): Observational comparisons and model evaluation",
                           "",
                           "",
                           "",
                           "")))


Conferences =  list(Name = "Conferences",
                    list("Conference Presentations & Posters",

                         c("DI Kelley, SP Harrison, IC Prentice",
                           "Implications of introducing realistic fire response traits in a Dynamic Global Vegetation Model",
                           "AGU Fall Meeting - Presentation Abstracts",
                           "1,  p.6.",
                           "Dec 2013",
                           ""),

                         c("DI Kelley, SP Harrison",
                           "Comparison of simulated fire regimes at the Last Glacial Maximum and Mid-Holocene with charcoal data",
                           "QUEST: Quantifying and Understanding the Earth System Open Science Conference and Annual Science Meeting",
                           "Department of Earth Sciences, University of Bristol",
                           "Mar 2008",
                           "")),

                           "New Page",

                    list("Visits and Internal Presentations",

                         c("DI Kelley, SP Harrison, IC Prentice, BE Medlyn",
                           "Modelling Australian Fire Regimes",
                           "Thesis completion seminar",
                           "Macquarie University, Ryde, Australia",
                           "Mar 2015",
                           ""),

                         c("DI Kelley, SP Harrison, IC Prentice",
                           "The LPX fire-enabled Vegetation Model",
                           "visit to Centre for Environmental Risk Management of Bushfires",
                           "University of Wollongong, NSW, Australia",
                           "May 2013",
                           ""),

                         c("DI Kelley, SP Harrison, IC Prentice, B Medlyn",
                           "The effects of climate change on Australian fire regimes",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2012",
                           ""),

                         c("DI Kelley",
                           "Development of lightning ignitions scheme in LPX-DGVM",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Sep 2012",
                           ""),

                         c("DI Kelley",
                           "Benchmarking vegetation and fire in LPX-DGVM",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Mar 2012",
                           ""),

                         c("DI Kelley, IC Prentice, H Wang, K Wills, SP Harrison",
                           "A comprehensive benchmarking system for evaluating global vegetation models",
                           "Climate Futures Forum",
                           "Macquarie University, Ryde, Australia",
                           "Dec 2011",
                           ""),

                         c("DI Kelley, IC Prentice, H Wang, K Wills, SP Harrison",
                           "A comprehensive benchmarking system for evaluating global vegetation models",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2011",
                           ""),

                         c("DI Kelley",
                           "Benchmark data-sets for assessing DGVM performance",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Sep 2011",
                           ""),

                         c("DI Kelley, SP Harrison, IC Prentice",
                           "The effects of climate change on Australian fire regimes",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2010",
                           ""),

                         c("DI Kelley",
                           "Transient Biomization Scheme",
                           "course seminar for MSc Earth Systems Science",
                           "Department of Earth Sciences, University of Bristol",
                           "Jul 2008",
                           ""),

                         c("DI Kelley, E Counce",
                           "Forest Fire simulator",
                           "course seminar for MSc Earth Systems Science",
                           "Department of Earth Sciences, University of Bristol",
                           "Nov 2007",
                           "")))

Awards = list(Name = "Awards",

        c("Macquarie University Research Excellence Scholarship (iMQRES)"="http://www.hdr.mq.edu.au/information_about/scholarships",
          "2010-2014",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Postgraduate award for completion of PhD"),

        c("Postgraduate Research Fund (PGRF)" = "http://www.hdr.mq.edu.au/information_for/current_candidates/financial_support",
          "2013",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Competitive award to enhance postgraduate research experience.
          Funded attendance at the 2013 AGU fall conference in order to present DGVM development and future projection of fire regimes and terrestrial carbon stocks under climate change"),

        c("Biology postgraduate conference best presentation" = "",
          "2011",
          "Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
          "Best presentation out of the departments 78 postgraduate students at the annual postgraduate conference.
          Awarded for presentation on a vegetation model benchmarking system"))



Research = list(Name = "Current Research Interests",
                Main = "My research focuses on improving our understanding of
                the interactions between vegetation and climate, and exploring
                how these interactions impact terrestrial ecosystem properties
                such as composition, disturbance regimes, and carbon and
                hydrological cycles. Much of this involves
                utilising experimental and satellite data for more
                observation-driven vegetation model development and
                benchmarking. Most of this has been exploring climate and
                vegetative controls and fire, and the impact fire has on ecosystem, atmospheric emission and the carbon cycle, and vegetation-controlled hydrology. I am also involved in projects that explore plant resource allocation, phenology and drought recovery strategies.
                &nbsp; <br><br>
                My current research projects include:<br><br>",
                list(
                     c("Development of the LPX coupled Dynamic Vegetation-fire model" = "http://douglask3.github.io/lpx-dynamic-global-vegetation-model.html",
                       "douglask3.github.io/lpx-dynamic-global-vegetation-model" = "http://douglask3.github.io/lpx-dynamic-global-vegetation-model.html",
                       " " = "",
                       "Much of my thesis focussed on the assessment and
                       development of the LPX-DGVM-fire model to better
                       represent fire and fire-adapted vegetation in tropical
                       savanna ecosystems. Continued development strands include:
                       <li> Improving fire-model performance for forest ecosystems </li>
                       <li> Parameterization of the carbon cycle and trace gas emissions </li>
                       <li> Continued development of disturbance resilience and resistance traits - e.g. resprouting after fire and drought. </li>"),

                     c("Vegetation model benchmarking and inter-comparison" = "http://douglask3.github.io/vegetation-model-inter-comparison-benchmarking.html",
                       "douglask3.github.io/vegetation-model-inter-comparison-benchmarking" = "http://douglask3.github.io/vegetation-model-inter-comparison-benchmarking.html",
                       " " = "",
                       'I am the main developer and maintainer of the most
                       widely used vegetation-model benchmarking system, which
                       qualitatively assesses model performance for a variety of vegetation and land surface processes. Current work includes:
                            <li> Incorporation of fire regime observations </li>
                            <li> Inter-model comparisons for the <a href="http://www.mpic.de/fileadmin/user_upload/images_presse/Projects/IBBI/pdfs/Hantson_FireMIP.pdf">fireMIP project</a></li>
                            <li> R software package development </li>'),

                     c("Vegetation disturbance resistance and recovery databases" = "http://douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance.html",
                       "douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance" = "http://douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance.html",
                       " " = "",
                       "I have been one of the lead collaborators on compiling
                       several databases describing site based disturbance
                       resistance and recovery traits across plant species,
                       disturbance regimes and climate gradients. These include:
                            <li> Bark Thickness as protection against fire. </li>
                            <li> Resprouting as a recovery to extreme fire and drought disturbance. </li>
                            <li> Post-fire re-seeding strategies. </li>"),

                     c("Plant resource allocation strategies" = "",
                       " " = "http://douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance.html",
                       " " = "",
                       "More recently, I have become involved in research
                       projects exploring wider vegetation dynamics and
                       responses to environmental change, including:
                           <li> The testing of conceptual carbon allocation
                           strategies in a vegetation model framework, and the
                           response of these strategies to changing climate and
                           increasing CO<sub>2</sub> fertilization. </li>
                           <li> Development of a simple dry-season phenology
                           model for tropical grass and woodland ecosystems. </li>"),

                     c("",'For more detail on all these projects, see <a href="http://douglask3.github.io/pages/research-interests.html">douglask3.github.io/pages/research-interests</a>'
                     )))

Workshops = list(Name = "Workshops and Consultancy Visits",
                 c("Using plant functional traits to predict ecosystem vulnerability to changing fire regimes" =
                        "http://aceas.org.au/Fire_traits_report.pdf",
                   "Australian Centre for Ecological Analysis and Synthesis (ACEAS)" = "http://www.aceas.org.au/",
                   "Oct 2013",
                   "University of Queensland, Brisbane, QL, Australia" =
                        "https://www.uq.edu.au/",
                   'Data Synthesis workshop for fire resilience and response analysis'),

                   "New Page",

                 c("Fire response traits database" = "https://bitbucket.org/teambcd/resprouting_workshop",
                   "",
                   "May 2013",
                   "Macquarie University, Ryde, Australia" = "https://www.mq.edu.au/",
                   'Workshop on construction of a database describing distribution of different resprouting traits in climate space, as part of the Australian Centre for Ecological Analysis and Synthesis (<a href="http://www.aceas.org.au/">ACEAS</a>)  Working group "<a href="http://aceas.org.au/Fire_traits_report.pdf"> Using plant functional traits to predict ecosystem vulnerability to changing fire regimes </a>"'),

                 c("Technical Assistance for Climate Change" = "https://www.researchgate.net/publication/267995882_Impacts_of_Future_Climate_Change_on_Vegetation_Fire_and_Runoff_in_Jordan",
                   "",
                   "Oct 2009",
                   "Royal Society for the Conservation of Nature, Jordan" = "http://www.rscn.org.jo/",
                   'Report on Impacts of Future Climate Change on Vegetation, Fire, and Runoff in Jordan'))


Training = list(Name = "Training Courses",

        c("An Introduction to Research Impact" = "http://www.reading.ac.uk/internal/stafflearning/details.aspx?id=145",
          "Jun 2016",
          "University of Reading, UK" = "http://www.reading.ac.uk/",
          'Understanding & identifying potential impact of research including
            economic, social and policy, and how to write impact summaries and
            "pathways to impact" for grant applications.'),

        c("An Introduction to Unix for HPC" = "http://www.intersect.org.au/energy/training",
          "May 2013",
          "eMast/INTERSECT, Macquarie University, Ryde, NSW, Australia",
          "Parallel processing techniques for solving complex computational problems on a HPC platform"),

        c("Software Carpentry" = "http://software-carpentry.org/",
          "Feb 2013",
          "",
          "Programming philosophy, code structure and version control"),

        c("Genses2Geoscience: Writing for journals"
            = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience/research-enrichment-program#writing",
          "Aug 2012",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Drafting and writing journal articles and research proposals"),

        c("Genses2Geoscience: Database Construction using sql"
            = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience",
          "Sep 2011",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Managing data held in a relational database management system"),

        c("Genses2Geoscience: Teaching in small groups"
            = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience/research-enrichment-program#small",
          "Aug 2011",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Effective questioning, encouraging equal participation, and managing student behaviour."),

        c("Planning and writing journal articles" = "",
          "Nov 2009",
          "University of Bristol, UK" = "http://www.bristol.ac.uk/earthsciences/",
          ""))


Skills = list(Name = "Skills",
              Main = "",
              list(
                   c("Vegetation modelling" = "",
                     "I have been lead developer on LPX - a high-complexity
                     coupled Dynamic Vegetation-Fire Model - since 2009. LPX has
                     both Fortran and C++ components for fast (relative to it's #
                     complexity) computational times. I have recently also
                     added a shell and R interface to facilitate parallisation
                     and to allow outputs to be easily analysed and plotted.",
                     'See <a href="http://douglask3.gitgub.io/LPX.html">douglask3.github.io/LPX</a> for more information.'),

                   c("Statistical Programming" = "",
                     "Most of my research involves statistical analysis of large
                     datasets and model outputs. Collaboration on many of my
                     projects means I am fluent in most widely used statistical
                     programming languages. Most of my work is in either R,
                     Python or Matlab, but I have also performed graphical and
                     statistical analysis using Fortran and C amongst others.",
                     'See <a href="http://douglask3.gitgub.io/my_best_plots.html">douglask3.github.io/my_best_plots</a> for examples of R plots from my PhD.
                      <br> See <a href="http://douglask3.gitgub.io/lpxbenchmarking.html">douglask3.github.io/lpxbenchmarking</a> for an example of statistical benchmarking of extensive model outputs again global raster and site-based datasets.'),

                      "New Page",

                   c("Web Design" = "",
                     "In my spare time, I have developed dynamic websites using
                     open source content management system (such as Concrete5
                         and Wordpress). Also, my personal site is on a static
                         host, but is maintained using a Python based
                         dynamic-site emulator. Developing and maintaining these
                         sites has allowed me to become familiar with many web
                         design software packages and fluent in
                         HTML/CSS, PHP and Markdown. I have also linked
                         Markdown and html
                         with R and Python when sharing and presenting results
                         from model development and analysis. In fact, this CV
                         has been made by generating HTML/CSS code using R.",
                     'See <a href = "http://www.eppingdac.com.au/">eppingdac.com.au</a>, an example of a website I have developed using Concrete5 content management system
                      <br> See <a href = "http://douglask3.gothub.io">douglask3.github.io </a>, an example of a website produced using a simple dynamic-site emulator.'),

                   c("Publishing" = "",
                     'As well has publishing papers, I have also written manuals, reports and newsletters using a variety of languages and software products, including (aside from standard office/open office):
                      <li> Latex - this includes my thesis, available at <a href="www.goo.gl/9YjwKw"> www.goo.gl/9YjwKw </a> </li>
                      <li> Scribus - my running club newsletter, available at <a href="http://www.eppingdac.com.au/news-and-views/newsletter/"> eppingdac.com.au/news-and-views/newsletter </a> </li>
                      <li> Photoshop/Illustrator and GIMP (the open source equivalent). See <a href = "http://flickr.com/doug_from_the_uk"> flickr.com/doug_from_the_uk </a> for examples of graphical art and photo "touch ups"/manipulation. </li>',
                      "")))

Software = c(Name = "Software Tools",
             list(Main = c('', "I have developed and maintained several software packages related to my research projects or to help organise work flow with collaborators. Some of the most used are:")),
            list(
                c("Vegetation Benchmark Metrics" = "",
                  "An R-package containing the metrics and basic statistical models relating to my work on Vegetation model benchmarking.",
                  'See <a href="http://douglask3.github.io/vegetation-model-benchmarking.html">douglask3.github.io/vegetation-model-benchmarking</a> for more information.'),

                c("Git-based R project Tracking" = "",
                  "Tools for tracking r-projects version controlled by Git.",
                  'See <a href="http://douglask3.github.io/git-based-r-project-extras.html">douglask3.github.io/git-based-r-project-extras</a> for more information.'),

                c("LPX" = "",
                  "Running, storing, analysing and plotting the LPX-Dynamic Global Vegetation Model.",
                  'See <a href="http://douglask3.github.io/lpx-dynamic-global-vegetation-model.html">douglask3.github.io/lpx-dynamic-global-vegetation-model</a> for more information.'),

                c('', 'For a more comprehensive list, see <a href ="http://douglask3.github.io/pages/tools.html"> douglask3.github.io/pages/tools </a>')))


ExtraCircular = list(Name = "Extra-Curricular",
                     c('Committee Member responsible for <a href = "http://www.eppingdac.com.au/"> web-design</a> communications, and social runners' = "",
                       "Feb 2011-May 2015",
                       "Epping and District Athletics Clubs North Epping, Hornsby, NSW, Australia" = "http://www.eppingdac.com.au/",
                       'Website development (<a href = "http://www.eppingdac.com.au/"> www.eppingdac.com.au </a>); designing, producing and distributing <a href = "http://www.eppingdac.com.au/newsletter"> newsletter </a> and e-publicity for local community running and athletics club'),

                     c("RDA volunteer",
                        "Dec 2012 - Feb 2015",
                        "RDA - Riding for the Disabled, Ryde, NSW, Australia" = "http://rdaryde.org.au/",
                        "Funding raising & publicity; feeding horses"),

                     c('Group discussion chair' = "",
                       "2011 - 2013",
                       "Biosphere & Climate Dynamics, Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
                       'Organised and chaired group meetings and paper discussions'),

                       "New Page",

                     c('Outreach volunteer' = "",
                       "2010 - 2011",
                       "Genses2Geoscience, Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia"
                                      = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience/",
                       'Demonstrated department research during school tours of the University'),

                     c('Demonstrator' = "",
                       "2008 - 2009",
                       "MSc Earth Systems Science and MSc natural hazards - <br> Modelling the Earth System" = "http://www.bristol.ac.uk/cabot/postgrad/msc-ccsp.html",
                       "Conducted seminar on fire-vegetation modellings and running modelling tutorials"),

                     c('Student Union involvement' = "",
                       "2002-2009",
                       '<a href = "http://www.warwicksu.com/"> University of Warwick </a> and <a href = "http://www.ubu.org.uk/"> University of Bristol </a>',
                       'Sabbatical year sitting on board of directors of Warwick
                       Students Union, responsible for the Student Advice and
                       Welfare department; 3 years as charity trustee and 6
                       years on student council responsible for Science Faculty
                       representation; committee posts on various student-run
                       sports clubs and societies including People and Planet,
                       <a href ="http://tv.warwick.ac.uk/"> Student TV station
                       </a>, Student Support Groups, and running clubs'),

                     c("Digital photography: creating and sharing better images" = "http://www.open.ac.uk/library/digital-archive/module/xcri:T189/study",
                       "2010",
                       "Open University, UK" = "http://www.open.ac.uk/",
                       '<a href = "http://www.open.ac.uk/library/digital-archive/module/xcri:T189/study"> Open University undergraduate course in digital photography and image manipulation </a>
                       <br>See <a href = "http://www.flickr.com/photos/doug_from_the_uk/">www.flickr.com/photos/doug_from_the_uk</a>'))

Referee = list(Name = "References",
              c("Prof. Sandy Harrison" = "http://www.reading.ac.uk/s-p-harrison.aspx",
                "Professor in Global Paleoclimates and Biogeochemical Cycles",
                "Email: s.p.harrison@reading.ac.uk" = "",
                "Department of Geography and Environmental Science<br>
                School of Archaeology, Geography and Environmental Science<br>
                The University of Reading<br>
                Whiteknights<br>
                Reading<br>
                RG6 6AB<br>
                UK"),

              c("Prof. Colin Prentice" = "http://www.imperial.ac.uk/people/c.prentice",
                "Chair of Biosphere and Climate Impacts",
                "Email: c.prentice@imperial.ac.uk" = "",
                "Grantham Institute for Climate Change and Department of Life Sciences<br>
                Imperial College<br>
                Silwood Park Campus<br>
                Ascot<br>
                SL5 7PY<br>
                UK"),

              c("Prof. Belinda Medlyn" = "https://bmedlyn.wordpress.com/",
                "Climate and Forest Ecosystem Modelling",
                "Email: b.medlyn@westernsydney.edu.au" = "",
                "Hawkesbury Institute for the Environment<br>
                Western Sydney University<br>
                Penrith<br>
                NSW<br>
                Australia<br>
                2751"))

Footer = '<p class = "subDetails"> <b> Douglas Kelley <b> - <a href="mailto:douglas.i.kelley@gmail.com">douglas.i.kelley@gmail.com </a> - <i> +44 (0) 7936 726 819 </i> - <a href = "douglask3.github.io"> douglask3.github.io</a></p><br>'


AdditionalSection = list(ExtendingContact, Qualifications, Employment,
                         Publications, Conferences, Awards, "New Page", Research, Workshops,
                         Training, Skills, Software, ExtraCircular,
                         Referee)

#AdditionalSection = list(Skills, Referee, ExtraCircular, Software, Training, Workshops, Research, Awards, Conferences, Publications,Qualifications,ExtendingContact, Employment)
