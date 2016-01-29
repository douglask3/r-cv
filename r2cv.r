r2cv <- function(Top = NULL, Name = NULL, Contact = NULL, AdditionalSection = NULL,
                    Footer = NULL,
                 file = "example-long.r", template = "ThomasHardy", outPath = "docs") {

    ###############################################################
    ## Cfg                                                       ##
    ###############################################################
    library(gitBasedProjects)
    sourceAllLibs()
    source("../webpageGenerator/libs/googleScholarGrab/MakeUserProfile.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.list.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.Rlist.r")

    ## File paths
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.r', sep = '/')

    cps2     = list.files(template)

    if (outPath != "") {
        out  = paste(outPath , file, sep = '/')
        cps1 = paste(template, cps2, sep = '/')
        cps2 = paste(outPath , cps2, sep = '/')
    }


    ## Open
    if (!is.null(file)) source(file, local = TRUE)
    Credits = 'Made using r2cv R package - <a href = "http://github.com/douglask3/r-cv", target = "_blank"> github.com/douglask3/r-cv </a>'

    source(index, local = TRUE)
    doc = paste(doc, collapse = "")

    ## Outputs
    cat(doc, file = 'docs/index.html')

    mapply(file.copy, cps1, cps2, overwrite= TRUE)

}
