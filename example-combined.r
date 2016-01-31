source("r2cv.r")
library('gitBasedProjects')
setupProjectStructure()

files = c('example.r', 'example-long.r')

file.copy(files, "temp/", overwrite = TRUE)
files = paste("temp/", files, sep = '')



line = 'Referee = c("References",
                    "See bottom of extended CV")
        Name[3] = "Summary"
        AdditionalSection = list(Qualifications, Employment, Publications, Awards,  Research, Referee)
        Top = NULL'


write(line,file=files[1],append=TRUE)

line = 'Name = Name[1:3]
        Name[3] = "Extended CV"
        Top = NULL'


write(line,file=files[2],append=TRUE)

r2cv(file = files, NewPage = c('Douglas Kelley CV', '', 'douglas.i.kelley@gmail.com'))
