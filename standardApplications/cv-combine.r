source("r2cv.r")
library('gitBasedProjects')
setupProjectStructure()

cvFileNames = c(short = 'cv-short.r', long = 'cv-long.r')

source("standardApplications/coverLetter.r")

files = list.files(dir, full.names = TRUE)

findCVsection <- function(name) {
    file = files[grepl(name, files)]
    if (length(file) == 0) file = paste('example', name, sep = '-')
        else file = file[1]
    return(file)
}

cvShrtFile = findCVsection(cvFileNames['short'])
cvLongFile = findCVsection(cvFileNames['long'])

if (!exists('shrtCVchange')) shrtCVchange = ''
if (!exists('longCVchange')) longCVchange = ''

cvExtraFile = list.files(dir, pattern='cv-', full.names = TRUE)
if (length(cvExtraFile)>0) cvExtraFile = cvExtraFile[!apply(sapply(cvFileNames, grepl, cvExtraFile),1,any)]

files = c(cvShrtFile, cvLongFile, cvExtraFile)
files = files[sapply(files, readLines, n = 1) != "Skip"]
makeDir(paste('temp', dir, sep = '/'))
filesT = paste("temp/", files, sep = '')
file.copy(files, filesT, overwrite = TRUE)


write(shrtCVchange,file=filesT[1],append=TRUE)

NewPage = c('Douglas Kelley - CV', '', '<a href ="mailto:douglas.i.kelley@gmail.com"> douglas.i.kelley@gmail.com </a>')

write(longCVchange,file=filesT[2],append=TRUE)

#r2cv(file = filesT, NewPage = NewPage)


files  = list.files(dir, full.names = TRUE)
files  = files[grepl('Extra', files)]
isPres = grepl('pres',files)

if (length(files) > 0) for (i in 1:length(files))
    r2cv(file = files[i], NewPage = NewPage, isPresentation = isPres[i])
