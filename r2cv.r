r2cv <- function(Top = NULL, Name = NULL, Contact = NULL, AdditionalSection = NULL,
                    Footer = NULL,
                 file = "example-long.r", template = "ThomasHardy", outPath = "output") {

    ###############################################################
    ## Cfg                                                       ##
    ###############################################################
    library(gitBasedProjects)
    sourceAllLibs()
    source("../webpageGenerator/libs/googleScholarGrab/MakeUserProfile.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.list.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.Rlist.r")

    if (!is.null(file)) source(file, local = TRUE)

    ## File paths
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.r', sep = '/')




    outFile    = paste(c(head(strsplit(file, '.', fixed = TRUE)[[1]],-1),'html'), collapse = '.')

    cpInFiles  = c(cssFile  = paste(template, 'style.css', sep = '/'),
                  imageFile = Name[4])

    Name[4]    = tail(strsplit(Name[4], '/')[[1]],1)

    cpOutFiles = c(cssFile   = 'style.css',
                   imageFile = Name[4])

    if (outPath != "") {
        makeDir(outPath)
        outFile    = paste(outPath , outFile, sep = '/')
        cpOutFiles = paste(outPath, cpOutFiles, sep = '/')
    }


    Credits = 'Made using r2cv R package - <a href = "http://github.com/douglask3/r-cv", target = "_blank"> github.com/douglask3/r-cv </a>'

    source(index, local = TRUE)
    doc = paste(doc, collapse = "")

    ## Outputs
    cat(doc, file = outFile)

    mapply(file.copy, cpInFiles, cpOutFiles, overwrite= TRUE)

}
