source("r2cv.r")
library('gitBasedProjects')
setupProjectStructure()

files = c('example.r', 'example-long.r')

file.copy(files, "temp/", overwrite = TRUE)
files = paste("temp/", files, sep = '')


line = 'Referee = list(Name = "References",
              c("Prof. Sandy Harrison" = "http://www.reading.ac.uk/s-p-harrison.aspx",
                "s.p.harrison@reading.ac.uk"),

              c("Prof. Colin Prentice" = "http://www.imperial.ac.uk/people/c.prentice",
                "c.prentice@imperial.ac.uk"),

              c("Prof. Belinda Medlyn" = "https://bmedlyn.wordpress.com/",
                "b.medlyn@westernsydney.edu.au"),

              c("","Full contact information at end of Extended CV"))
        Name[3] = "Summary"
        Name[4] = "docs/Epicormic.png"
        AdditionalSection = list(Qualifications, Employment, Publications, Awards,  Research, Skills, Referee)
        Top = NULL'


write(line,file=files[1],append=TRUE)

line = 'Name = Name[1:3]
        Name[3] = "Extended CV"
        Top = NULL'


write(line,file=files[2],append=TRUE)

NewPage = c('Douglas Kelley - CV', '', '<a href ="mailto:douglas.i.kelley@gmail.com"> douglas.i.kelley@gmail.com </a>')

r2cv(file = files, NewPage = NewPage)
