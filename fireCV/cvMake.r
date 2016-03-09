shrtCVchange = '

'

line = 'Referee = list(Name = "References",
              c("Prof. Sandy Harrison" = "http://www.reading.ac.uk/s-p-harrison.aspx",
                "s.p.harrison@reading.ac.uk"),

              c("Prof. Colin Prentice" = "http://www.imperial.ac.uk/people/c.prentice",
                "c.prentice@imperial.ac.uk"),

              c("Prof. Belinda Medlyn" = "https://bmedlyn.wordpress.com/",
                "b.medlyn@westernsydney.edu.au"),

              c("","Full contact information at end of Extended CV"))
        Top = NULL

        Name[2] = "Fire-Vegetation Modelling"
        Name[3] = "Summary"
        Name[4] = "docs/niBGzaKxT.png"

        #Skills[[3]] = c(Skills[[3]][c(1,3)], "New Page", Skills[[3]][4])

        Research = list(Name = "Current Research Interests",
                        Main = "Modelling fire and fire-vegetation dynamics, including:",
                        list("Climate and vegetation controls on fire",
                             "Wildfire impacts (i.e. on vegetation composition
                                 and productivity, carbon-cycle, hydrology)",
                             "Vegetation-fire model benchmarking and diagnosis",
                             "Vegetation disturbance resistance and recovery",
                             "Plant resource allocation strategies<br>&nbsp;"))

        AdditionalSection = list(Qualifications, Employment, Publications, Awards,  Research, Skills, Referee)'
        #AdditionalSection = list(Qualifications, Employment, Publications, Awards, Skills, Referee)'


dir = 'fireCV'
post = 'Fire-Vegetation Modelling'

source('standardApplications/cv-combine.r')
