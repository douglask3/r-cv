r2cv <- function(Top = NULL, Name = NULL, Contact = NULL, AdditionalSection = NULL,
                    Footer = NULL,
                 file = "example-long.r", template = "ThomasHardy", outPath = "output",
                 NewPage = NULL, Author = NULL) {

    ###############################################################
    ## Cfg                                                       ##
    ###############################################################
    library(gitBasedProjects)
    sourceAllLibs()
    source("../webpageGenerator/libs/googleScholarGrab/MakeUserProfile.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.list.r")
    source("../webpageGenerator/libs/googleScholarGrab/MakePublicationDocument.Rlist.r")
    Credits = 'Made using r2cv R package - <a href = "http://github.com/douglask3/r-cv", target = "_blank"> github.com/douglask3/r-cv </a>'


    ## File paths
    ## template
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.r', sep = '/')

    outFile    = sapply(file   , function(i) tail(strsplit(i,'/')[[1]],1))
    outFile    = sapply(outFile, function(i) head(strsplit(i, '.', fixed = TRUE)[[1]],-1))
    outFile    = paste(c(outFile,'html'), collapse = '.')

    PAGES = 0
    for (nn in 1:2) {
        cpInFiles  = paste(template, 'style.css', sep = '/')
        cpOutFiles = 'style.css'

        doc0 = ''; headHtml = TRUE; PAGE = 0
        for (i in file) {
            source(i, local = TRUE)

            if (length(Name) > 3) {
                cpInFiles  = c(cpInFiles , Name[4])
                Name[4]    = tail(strsplit(Name[4], '/')[[1]],1)
                cpOutFiles = c(cpOutFiles, Name[4])
            }


            source(index, local = TRUE)
            doc  = c(doc0, doc)
            doc0 = doc
            headHtml = FALSE


        }
        print('yay')
        print(PAGE)
        PAGES = PAGE
        PAGES <<- PAGES
        print(PAGES)
    }


    if (outPath != "") {
        makeDir(outPath)
        outFile    = paste(outPath , outFile, sep = '/')
        cpOutFiles = paste(outPath, cpOutFiles, sep = '/')
    }

    doc = paste(doc, collapse = "")

    ## Outputs
    cat(doc, file = outFile)

    mapply(file.copy, cpInFiles, cpOutFiles, overwrite= TRUE)

}
