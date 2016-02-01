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
###############################################################
## Additional Sections                                       ##
###############################################################
ExtendingContact = c("Contact Information",
                        "Name"           = "Douglas I Kelley",
                        "Date of Birth"  = "06/08/1984",
                        "Nationality"    = "British",
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
          'Benchmarking and developing the LPX Dynamic Global Vegetation Model (DGVM) to improve the simulation of fire and fire-vegetation interacting. Using this new version of LPX to simulate fire, vegetation and carbon dynamics in Australia over the 21st century. Thesis can be downloaded from <a href="goo.gl/9YjwKw"</a>'),

        c("MSc Earth System Science" = "http://www.bristol.ac.uk/cabot/postgrad/msc-ccsp.html",
          "Main dissertation: Wildfires as part of the global carbon cycle - Quantitative analysis using data assimilation" = "",
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
          "Simulating present and future fire regimes using coupled dynamic global vegetation model (DGVM) and process based fire model."),

        c("Postdoctoral Research Assistant" = "",
          "Oct 2014-Apr 2015",
          "Cafe M Research Group, Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "https://bmedlyn.wordpress.com/",
          "Testing conceptual phenology and plant carbon allocation models under changing climate and elevated CO2 fertilization."),

        c("Research Assistant" = "",
          "Jun 2014-Sep 2014",
          " Biosphere & Climate Dynamics, Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
          "Modelling changes on past and future vegetation-fire dynamics and its feedback on terrestial and atmospheric carbon."),

          c("New Page"),

        c("Research Assistant" = "",
          "Sep 2008-Sep 2010",
          "Department of Geographical Sciences, University of Bristol, UK" = "http://www.bristol.ac.uk/geography/",
          "DGVM-fire model development. Applying developed model to: test to effectiveness of different fire management techniques in current and future climates; simulate paleo vegetation and carbon stocks."),

        c("Earth System Science Summer School coordinator" = "http://www.greencycles.org/greencycles1/ES4%20flyer_2008.pdf",
          "Apr 2008-Sep 2008",
          "Department of Earth Sciences, University of Bristol, UK" = "http://www.bristol.ac.uk/earthsciences/",
          "Publicity; lecture and seminar timetabling; finding and organising guest lectures; general admin."),

        c("Widening Participation" = "",
          "Sep 2007-Sep 2008",
          "Widening Participation Office, University of Bristol, UK" = "http://www.bristol.ac.uk/sraa/uk-student-recruitment/student-support-team/",
          "Working with students in primary and secondary education to encourage university attendance from low socio-economic backgrounds: helping organize & run University open days and campus tours; in-school presentations and career evenings."))

Published = MakePublicationDocument.Rlist(usrID, NULL)
#Published = c(Published[1:6], "New Page", Published[7:length(Published)])

Publications = list(Name = "Publication",
                    Main = MakeUserProfile(usrID, 'unformatted'),
                    c("Published Papers",
                         Published),

                    list("Submitted",

                         c("Harrison, S. P. and Kelley, D. I.",
                           "Projected changes in Australian fire regimes during the 21st century and consequences for ecosystem",
                           "International Journal of Wildland Fire",
                           "",
                           "",
                           ""),

                         c("Hantson, S., Arneth, A., Harrison, S. P., Kelley, D. I., Prentice, I. C., Rabin, S. S., Archibald, S. ...",
                           "The status and challenge of global fire modelling",
                           "Biogeosciences",
                           "bg-2016-17",
                           "",
                           ""),

                           "New Page",

                         c("Ukkola, A, Keenan, T, Kelley, D. I., Prentice, I. C.",
                           "Vegetation buffers the water-resource impacts of environmental change in regions with declining precipitation",
                           "Environmental Research Letters",
                           "ERL-102203",
                           "",
                           "")),

                    list("In Prep",

                         c("Kelley D. I., de Kauwe, M., Medlyn, B.",
                           "Testing Allocation model assuptions in a simple ecosyste model",
                           "",
                           "",
                           "",
                           ""),

                         c("Harrison, S. P., Kelley, D. I., Wang, H., Herbert, A., Li, G., Bradstock, R., Fontaine, J., Enright, N., Murphy, B. P., Pekin, B. K., Penman, T., Russell-Smith, J., Wittkuhn, R. S",
                           "Patterns in the abundance of post-fire resprouting in Australia based on plot-level measurements.",
                           "",
                           "",
                           "",
                           ""),

                         c("Whitley, R., Kelley, D. I., de Kauwe, M., Keenan, T. F.",
                           "Phendulum - A first principles model of describing savanna phenology",
                           "",
                           "",
                           "",
                           "")))


Conferences =  list(Name = "Conferences",
                    list("Conference Presentations & Posters",

                         c("Kelley, D. I., Harrison, S. P. and Prentice, I. C.",
                           "Implications of introducing realistic fire response traits in a Dynamic Global Vegetation Model",
                           "AGU Fall Meeting - Presentation Abstracts",
                           "1,  p.6.",
                           "Dec 2013",
                           ""),

                         c("Kelley, D I., Harrison, S. P.",
                           "Comparison of simulated fire regimes at the Last Glacial Maximum and for the Mid-Holocene with charcoal data",
                           "QUEST: Quantifying and Understanding the Earth System Open Science Conference and Annual Science Meeting",
                           "Department of Earth Sciences, University of Bristol",
                           "Mar 2008",
                           "")),

                    list("Visits and Internal Presentations",

                         c("Kelley, D. I., Harrison, S. P., Prentice, I. C. and Medlyn, B. E.",
                           "Modelling Australian Fire Regimes",
                           "Thesis completion seminar",
                           "Macquarie University, Ryde, Australia",
                           "Mar 2015",
                           ""),

                         c("Kelley, D. I., Harrison, S. P. and Prentice, I. C.",
                           "The LPX fire-enabled Vegetation Model",
                           "visit to Centre for Environmental Risk Management of Bushfires",
                           "University of Wollongong, NSW, Australia",
                           "May 2013",
                           ""),

                         c("Kelley, D. I., Harrison, S. P., Prentice, I. C. and Medlyn B. ",
                           "The effects of climate change on Australian fire regimes",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2012",
                           ""),

                         c("Kelley, D. I.",
                           "Development of lightning ignitions scheme in LPX-DGVM",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Sep 2012",
                           ""),

                         c("Kelley, D. I.",
                           "Benchmarking vegetation and fire in LPX-DGVM",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Mar 2012",
                           ""),

                         c("Kelley, D. I., Prentice, I. C., Wang, H., Wills, K. and Harrison, S. P.",
                           "A comprehensive benchmarking system for evaluating global vegetation models",
                           "Climate Futures Forum",
                           "Macquarie University, Ryde, Australia",
                           "Dec 2011",
                           ""),

                         c("Kelley, D. I., Prentice, I. C., Wang, H., Wills, K. and Harrison, S. P.",
                           "A comprehensive benchmarking system for evaluating global vegetation models",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2011",
                           ""),

                         c("Kelley, D. I.",
                           "Benchmark data-sets for assessing DGVM performance",
                           "Biosphere and Climate Dynamics brown bag seminars",
                           "Macquarie University, Ryde, Australia",
                           "Sep 2011",
                           ""),

                         c("Kelley, D. I., Harrison, S. P. and Prentice, I. C.",
                           "The effects of climate change on Australian fire regimes",
                           "Postgraduate supplementary conference",
                           "Macquarie University, Ryde, Australia",
                           "Nov 2010",
                           ""),

                         c("Kelley, D. I.",
                           "Transient Biomization Scheme",
                           "course seminar for Msc Earth Systems Science",
                           "Department of Earth Sciences, University of Bristol",
                           "Jul 2008",
                           ""),

                         c("Kelley, D. I., Elena Counce",
                           "Forest Fire simulator",
                           "course seminar for Msc Earth Systems Science",
                           "Department of Earth Sciences, University of Bristol",
                           "Nov 2007",
                           "")))



Awards = list(Name = "Award",

        c("Macquarie University Research Excellence Scholarship (iMQRES)"="http://www.hdr.mq.edu.au/information_about/scholarships",
          "2010-2014",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Postgraduate award for completion of PhD"),

        c("Postgraduate Graduate Research Fund (PGRF)" = "http://www.hdr.mq.edu.au/information_for/current_candidates/financial_support",
          "2013",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          "Competitive award to enhance postgraduate research experience.
          Funded attendance at the 2013 AGU fall conference in order to present DGVM development and future projection of fire regimes and terrestrial carbon stocks under climate change"),

        c("Biology postgraduate conference best presentation" = "",
          "2011",
          "Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
          "Best presentation out of the departments 78 postgraduate students at the annual post-graduate conference.
          Awarded for presentation on a vegetation model benchmarking system"))



Research = list(Name = "Current Research Interests",
                Main = "My research focuses on improving our understanding of the interactions between vegetation and climate, and exploring how these interactions impact terrestrial ecosystem properties such as carbon and hydrological cycles. Much of this involves utilising experimental and satellite data for more observation-driven vegetation model development and benchmarking. Most of this has been exploring climate and vegetative controls and fire, and the impact fire has on ecosystem, atmposhperic emission and the carbon cycle, and vegetation-controlled hydrology. I am also involved in projects that explore plant resource allocation, phenology and drought recovery stratagies.
                &nbsp; <br><br>
                My current research projects include:<br><br>",
                list(
                     c("Development of the LPX coupled Dynamic Vegetetion-fire model" = "http://douglask3.github.io/lpx-dynamic-global-vegetation-model.html",
                       "douglask3.github.io/lpx-dynamic-global-vegetation-model" = "http://douglask3.github.io/lpx-dynamic-global-vegetation-model.html",
                       " " = "",
                       "Much of my thesis focussed on the assessment and development of the LPX-DGVM-fire model to better represent fire and fire-adatped vegetation in tropical savanna ecosystems. Continued development strands include :
                       <li> Improving fire-model performace for forest ecoystems </li>
                       <li> Paramertization of the carbon cycle and trace gas emissions </li>
                       <li> Continued development of disturbance resilance and resistance traits - e.g. resprouting after fire and drought. </li>"),

                     c("Vegetation model benchmarking and inter-comparison" = "http://douglask3.github.io/vegetation-model-inter-comparison-benchmarking.html",
                       "douglask3.github.io/vegetation-model-inter-comparison-benchmarking" = "http://douglask3.github.io/vegetation-model-inter-comparison-benchmarking.html",
                       " " = "",
                       'I am the main developer and maintainer of the most widely used vegetation-model benchmarking system, which qualitativly assess model performance for a varity and vegetation and land surface processes. Current work includes:
                            <li> Incorporation for fire regime observatations </li>
                            <li> Inter-model comparisons for the <a href="http://www.mpic.de/fileadmin/user_upload/images_presse/Projects/IBBI/pdfs/Hantson_FireMIP.pdf">fireMIP project</a></li>
                            <li> R-package development </li>'),

                     c("Vegetation disturbance resistance and recovery databases" = "http://douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance.html",
                       "douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance" = "http://douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance.html",
                       " " = "",
                       "I have been involved in the compilation of two databases compliling variations reistance and recovery traits across plant species and geogrpahic locations:
                            <li> Bark Thickness as protection against fire. </li>
                            <li> Resprouting as a recovery to extreme distrubance from fire and drought. </li>"),

                     c("Plant resource allocation strategies" = "",
                       " " = "http://douglask3.github.io/traits-for-resistance-and-recovery-to-disturbance.html",
                       " " = "",
                       "More recently, I have become involved in research projects exploring wider vegetation dynamics and responses to enviromental change including:
                           <li> The testing of conceptual carbon allocation stratagies in a vegetation model framework, and the response of the startagies to changing climate and increasing CO2 fertilization. </li>
                           <li> Development of a simple dry-season phenology model for tropical grass and woodland ecosystems. </li>"),
                     'For more detail on all these projects, see <a href="http://douglask3.github.io/pages/research-interests.html">douglask3.github.io/pages/research-interests</a>'
                     ))





Referee = list(Name = "References",
               c("Prof. Sandy Harrison" = "http://www.reading.ac.uk/s-p-harrison.aspx",
                 "Professor in Global Palaeoclimates and Biogeochemical Cycles",
                 "Email: s.p.harrison@reading.ac.uk" = "",
                 "Department of Geography and Environmental Science
                 School of Archaeology, Geography and Environmental Science
                 The University of Reading
                 Whiteknights
                 Reading
                 RG6 6AB
                 UK"),

               c("Prof. Colin Prentice" = "http://www.imperial.ac.uk/people/c.prentice",
                 "Chair of Biosphere and Climate Impacts",
                 "Email: c.prentice@imperial.ac.uk" = "",
                 "Grantham Institute for Climate Change and Department of Life Sciences
                 Imperial College
                 Silwood Park Campus
                 Ascot
                 SL5 7PY
                 UK"),

               c("Prof. Belinda Medlyn" = "https://bmedlyn.wordpress.com/",
                 "Climate and Forest Ecosystem Modelling",
                 "Email: b.medlyn@westernsydney.edu.au" = "",
                 "Hawkesbury Institute for the Environment,
                 Western Sydney University,
                 Locked Bag 1797,
                 Penrith,
                 NSW
                 Australia
                 2751"))



Workshops = list(Name = "Workshops and Consultancy Visits",
                 c("Using plant functional traits to predict ecosystem vulnerability to changing fire regimes" =
                        "http://aceas.org.au/Fire_traits_report.pdf",
                   "Australian Centre for Ecological Analysis and Synthesis (ACEAS)" = "http://www.aceas.org.au/",
                   "Oct 2013",
                   "University of Queensland, Brisbane, QL, Australia" =
                        "https://www.uq.edu.au/",
                   'Data Synthesis workshop for fire resilience and response traits'),

                 c("Fire response traits database" = "https://bitbucket.org/teambcd/resprouting_workshop",
                   "",
                   "May 2013",
                   "Macquarie University, Ryde, Australia" = "https://www.mq.edu.au/",
                   'Workshop on construction of database on distribution of different resprouting traits in climate space, as part of the Australian Centre for Ecological Analysis and Synthesis (<a href="http://www.aceas.org.au/">ACEAS</a>)  Working group "<a href="http://aceas.org.au/Fire_traits_report.pdf"> Using plant functional traits to predict ecosystem vulnerability to changing fire regimes </a>"'),

                 c("Technical Assistance for Climate Change" = "https://www.researchgate.net/publication/267995882_Impacts_of_Future_Climate_Change_on_Vegetation_Fire_and_Runoff_in_Jordan",
                   "",
                   "Oct 2009",
                   "Royal Society for the Conservation of Nature, Jordan" = "http://www.rscn.org.jo/",
                   'Report on Impacts of Future Climate Change on Vegetation, Fire, and Runoff in Jordan'))


Training = list(Name = "Training Courses",

        c("Software Carpentry" = "http://software-carpentry.org/",
          "Feb 2013",
          "",
          "Programming philosophy, code structure and version control"),

        c("Genses2Geoscience: Writing for journals"
            = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience/research-enrichment-program#writing",
          "Aug 2012",
          "Macquarie University, Ryde, Australia" = "https://www.mq.edu.au/",
          "Drafting and writing journal articles and research proposals"),

        c("Genses2Geoscience: Database Construction using sql"
            = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience",
          "Sep 2011",
          "Macquarie University, Ryde, Australia" = "https://www.mq.edu.au/",
          ""),

        c("Genses2Geoscience: Teaching in small groups"
            = "http://www.mq.edu.au/research/research-centres,-groups-and-facilities/secure-planet/centres/centre-for-genes-to-geoscience/research-enrichment-program#small",
          "Aug 2011",
          "Macquarie University, Ryde, Australia" = "https://www.mq.edu.au/",
          "Effective questioning, encouraging equal participation, and managing student behaviour."),

        c("Planning and writing journal articles" = "",
          "Nov 2009",
          "Macquarie University, Ryde, Australia" = "https://www.mq.edu.au/",
          "Planning articles to fit journals."))


Skills = list(Name = "Skills",
              Main = "",
              list(
                   c("Vegetation modelling" = "",
                     "I have been lead developer on LPX - a high-complexity coupled Dynamic Vegetation-Fire Model - since 2009LPX has both Fortran and C++ components for fast (relative to it's complexity) computational times. I have recently also added a shell and R interface to fasilitate parrallization and to allow results to be easily plotted and analysed.",
                     'See <a href="http://douglask3.gitgub.io/LPX.html">douglask3.github.io/LPX</a> for more information.'),

                   c("Statistical Programming" = "",
                     "Most of my research involves statistical anaylsis of large datasets and model outputs. Collaboration on many of my projects means I am fluent in most widely used statistical programming languages. Most of my work is in either R, python and matlab, but I have also performed graphical and statitical analysis using Fotran and C amongst others.",
                     'See <a href="http://douglask3.gitgub.io/my_best_plots.html">douglask3.github.io/my_best_plots</a> for examples of R and matlab plots from my PhD.
                      <br> See <a href="http://douglask3.gitgub.io/lpxbenchmarking.html">douglask3.github.io/lpxbenchmarking</a> for an example of statistical benchmarking of extensive model outputs again global raster and site-based datasets.'),

                      "New Page",

                   c("Web Design" = "",
                     "In my spare time, I have developed dynamic websites using open source content management system. My personal site is on a static host, but is maintained using a python based dynamic-site emulator. Developing and maintaining these sites have allowed me to become familiar with many contengt managment systems (i.e. wordpress, concrete5 etc) and fluent in HTML/CSS, PHP and Markdown. I have linked Markdown with R and python when sharing and presenting results from model development and anlaysis.",
                     'See <a href = "http://www.eppingdac.com.au/">eppingdac.com.au</a>, an example of a website I have developed using Concrete5 Content Managment System
                      <br> See <a href = "http://douglask3.gothub.io">douglask3.github.io </a>, an example of a website produced using a simple dynamic-site emulator.'),


                   c("Publishing" = "",
                     'As well has publishing papers, I have also written manuals, reports and newletters using a variety of languages and software products, including (aside from standard office/open office):
                      <li> Latex - this includes my thesis (available <a href="goo.gl/9YjwKw"</a>) </li>
                      <li> Scribus - for example, my running clubs newsletter <a href="http://www.eppingdac.com.au/news-and-views/newsletter/"> eppingdac.com.au/news-and-views/newsletter </a> </li>
                      <li> Photoshop/Illistrator and GIMP (the open source equivalent). See <a href = "http://flickr.com/doug_from_the_uk"> flickr.com/doug_from_the_uk </a> for examples of graphical art and photo "touch ups", manipulation. </li>',
                      "")))

Software = c(Name = "Software Tools",
             Main = "I have developed and maitained several software packages related to my reasrch projects and shared with collaborators. Some of the most used are:")
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

                c('For a more comprehensive list, see <a href ="http://douglask3.github.io/pages/tools.html"> douglask3.github.io/pages/tools </a>'))


ExtraCircular = list(Name = "Extra-Circular",
                     c('Committee Member responsible for <a href = "http://www.eppingdac.com.au/"> web-design</a> communications, and social runners' = "",
                       "Feb 2011-May 2015",
                       "Epping and District Athletics Clubs North Epping, Hornsby, NSW, Australia" = "http://www.eppingdac.com.au/",
                       'Website development <a href = "http://www.eppingdac.com.au/"> www.eppingdac.com.au </a>; designing, producing and distributing <a href = "http://www.eppingdac.com.au/newsletter"> newsletter </a> and e-publicity for local community running and athletics club'),

                     c('Student Union involvement' = "",
                       "2002-2009",
                       '<a href = "http://www.warwicksu.com/"> University and Warwick </a> and <a href = "http://www.ubu.org.uk/"> Bristol University </a>',
                       'Sabbatical year sitting on board of directors of Warwick Students Union responsible for the Student Advice and Welfare department; 3 years as charity trustee and 6 years on student council responsible for Science Faculty representation; committee posts on various student run sports clubs and societies including People and Planet, <a href ="http://tv.warwick.ac.uk/"> Student TV station </a>, Student Support Groups, and running clubs'),

                     c("Digital photography: creating and sharing better images" = "http://www.open.ac.uk/library/digital-archive/module/xcri:T189/study",
                       "2010",
                       "Open Univesity, UK" = "http://www.open.ac.uk/",
                       '<a href = "http://www.open.ac.uk/library/digital-archive/module/xcri:T189/study"> Open University undergrad course in digital photography and image manipulation </a>
                       <br>See <a href = "http://www.flickr.com/photos/doug_from_the_uk/">www.flickr.com/photos/doug_from_the_uk</a>'))

Footer = '<p class = "subDetails"> <b> Douglas Kelley <b> - <a href="mailto:douglas.i.kelley@gmail.com">douglas.i.kelley@gmail.com </a> - <i> +44 (0) 7936 726 819 </i> - <a href = "douglask3.github.io"> douglask3.github.io</a></p><br>'


AdditionalSection = list(ExtendingContact, Qualifications, Employment,
                         Publications, Conferences,
                         "New Page", Awards, Research, "New Page", Workshops,
                         Training, Skills, Software, ExtraCircular,
                         Referee)

#AdditionalSection = list(Skills, Referee, ExtraCircular, Software, Training, Workshops, Research, Awards, Conferences, Publications,Qualifications,ExtendingContact, Employment)
