r2cv <- function(file = "example.r", template = "ThomasHardy", outPath = "doc") {

    ###############################################################
    ## Cfg                                                       ##
    ###############################################################
    library(gitBasedProjects)
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.list.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakeUserProfile.r")

    ## File paths
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.html', sep = '/')
    if (outPath != "")
        out  = paste(outPath, c(list.files(template), file), sep = '/')

    ## Set defualts
    Name              = NULL
    Contact           = NULL
    Qualifications    = NULL
    Employment        = NULL
    AdditionalSection = NULL

    ## Open
    source(file, local = TRUE)
    doc = readLines(index)

    browser()
}
