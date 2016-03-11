source("r2cv.r")
library('gitBasedProjects')
setupProjectStructure()

r2cv(file = "standardApplications/coverLetter.r")

files = list.files(dir, full.names = TRUE)

findCVsection <- function(name) {
    file = files[grepl(name, files)]
    if (length(file) == 0) file = paste('example', name, sep = '-')
        else file = file[1]
    return(file)
}

cvShrtFile = findCVsection('cv-short.r')
cvLongFile = findCVsection('cv-long.r')

if (!exists('shrtCVchange')) shrtCVchange = ''
if (!exists('longCVchange')) longCVchange = ''

files = c(cvShrtFile, cvLongFile)

makeDir(paste('temp', dir, sep = '/'))
filesT = paste("temp/", files, sep = '')
file.copy(files, filesT, overwrite = TRUE)


write(shrtCVchange,file=filesT[1],append=TRUE)

NewPage = c('Douglas Kelley - CV', '', '<a href ="mailto:douglas.i.kelley@gmail.com"> douglas.i.kelley@gmail.com </a>')

write(longCVchange,file=filesT[2],append=TRUE)

r2cv(file = filesT, NewPage = NewPage)
