###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')

###############################################################
## Head                                                      ##
###############################################################
head = '
<a href="javascript:history.back()">Go Back to website</a>,
<h1> Summary </h1>'

###############################################################
## Basic Infomation                                          ##
###############################################################
Name    = c("Douglas Kelley", "Biosphere and Climate Dynamic Modelling")

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")


Qualifications = list(Name = "Academic qualification",
        c("PhD Ecology" = "",
          "2014",
          "Macquarie University, Department of Biological Sciences, Ryde, NSW, Australia" = "https://bitbucket.org/teambcd/",
          'Thesis: <a href="https://drive.google.com/file/d/0B6T4MHlQ-DuNS2ZsV09mdkdwYms/view?usp=sharing">Modelling Australian fire regimes</a>'),

        c("MSc Earth System Science" = "http://www.bristol.ac.uk/cabot/postgrad/msc-ccsp.html",
          "2008",
          "University of Bristol, Department of Earth Sciences, UK" = "http://www.bristol.ac.uk/earthsciences/",
          "Dissertation: Statistical modelling of global fire regimes."),

        c("BSc (Hons.) Physics" = "http://www2.warwick.ac.uk/study/undergraduate/courses/f300",
          "2007",
          "University of Warwick, Department of Physics, UK" = "http://www2.warwick.ac.uk/fac/sci/physics",
          "Dissertation: Modelling atmospheric effects on starlight"))

Employment = list(Name = "Employment History",
        c("Postdoctoral Research Assistant" = "",
          "Apr 2015-present",
          "Department of Geography & Environmental Science, University of Reading, UK" = "https://www.reading.ac.uk/geographyandenvironmentalscience/",
          ""),
        c("Postdoctoral Research Assistant" = "",
          "Jun 2014-Mar 2015",
          "Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
          ""),
        c("Research Assistant" = "",
          "Sep 2008-Sep 2010",
          "Department of Geographical Sciences, University of Bristol, UK" = "http://www.bristol.ac.uk/geography/",
          ""))


Publications = list(Name = "Publication Statistics",
                    Main = MakeUserProfile(usrID, 'unformatted'))

Awards = list(Name = "Award",
    "Macquarie University Research Excellence Scholarship" =
        c("http://www.hdr.mq.edu.au/information_about/scholarships",
          "2010-2014",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          ""),
    "Post Graduate Research Fund (PGRF)" =
        c("http://www.hdr.mq.edu.au/information_for/current_candidates/financial_support",
          "2013",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          ""),
    "Biology postgrad conference best presentation" =
        c("",
          "2011",
          "Biological Sciences, Macquarie University, Ryde, NSW, Australia",
          ""))

Research = list(Name = "Current Research Interests",
                Main = "Vegetation-climate dynamics and ecosystem modelling, including:",
                list("Fire dynamics and fire--climate--vegetation interactions",
                     "Wildfire impacts (on e.g vegetation, carbon-cycle, hydrology)",
                     "Vegetation disturbance resistance and recovery",
                     "Vegetation model benchmarking and diagnosis",
                     "Plant resource allocation strategies"))

AdditionalSection = list(Publications, Awards, Research)
