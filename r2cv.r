r2cv <- function(file = "example.r", template = "ThomasHardy", outPath = "docs") {

    ###############################################################
    ## Cfg                                                       ##
    ###############################################################
    library(gitBasedProjects)
    sourceAllLibs()
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.list.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakeUserProfile.r")

    ## File paths
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.r', sep = '/')

    cps2     = list.files(template)

    if (outPath != "") {
        out  = paste(outPath , file, sep = '/')
        cps1 = paste(template, cps2, sep = '/')
        cps2 = paste(outPath , cps2, sep = '/')
    }

    ## Set defualts
    Name              = NULL
    Profile           = NULL
    Contact           = NULL
    Qualifications    = NULL
    Employment        = NULL
    Skills            = NULL
    AdditionalSection = NULL

    ## Open
    source(file, local = TRUE)
    source(index, local = TRUE)

    doc = paste(doc, collapse = "")
    cat(doc, file = 'docs/index.html')

    mapply(file.copy,cps1, cps2)



    #doc = readLines(index)

    #doc = paste(c("'", doc, "'"), collapse = '\n')

    #for (i in 1:length(doc)) {
    #    if (grepl('{%', doc[i], fixed = TRUE)) browser()
    #}
    #browser()
}
