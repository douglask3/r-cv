source("r2cv.r")
library('gitBasedProjects')
setupProjectStructure()

r2cv(file = "standardApplications/coverLetter.r")

cvLongFile = paste(dir, 'cv-long.r', sep = '/')

if (!exists('cvShrtFile')) cvShrtFile = 'example.r'
if (!exists('cvLongFile')) cvLongFile = 'example-long.r'

if (!exists('shrtCVchange')) shrtCVchange = ''
if (!exists('longCVchange')) longCVchange = ''
files = c(cvShrtFile, cvLongFile)

makeDir(paste('temp', dir, sep = '/'))
filesT = paste("temp/", files, sep = '')
file.copy(files, filesT, overwrite = TRUE)



line = paste(
        'Referee = list(Name = "References",
              c("Prof. Sandy Harrison" = "http://www.reading.ac.uk/s-p-harrison.aspx",
                "s.p.harrison@reading.ac.uk"),

              c("Prof. Colin Prentice" = "http://www.imperial.ac.uk/people/c.prentice",
                "c.prentice@imperial.ac.uk"),

              c("Prof. Belinda Medlyn" = "https://bmedlyn.wordpress.com/",
                "b.medlyn@westernsydney.edu.au"),

              c("","Full contact information at end of Extended CV"))
        Top = NULL', shrtCVchange, sep = '\n')



write(line,file=filesT[1],append=TRUE)

NewPage = c('Douglas Kelley - CV', '', '<a href ="mailto:douglas.i.kelley@gmail.com"> douglas.i.kelley@gmail.com </a>')

write(longCVchange,file=filesT[2],append=TRUE)

r2cv(file = filesT, NewPage = NewPage)
