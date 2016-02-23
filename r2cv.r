r2cv <- function(Top = NULL, Name = NULL, Contact = NULL, AdditionalSection = NULL,
                    Footer = NULL,
                 file = "example-long.r", template = "ThomasHardy", outPath = "output",
                 NewPage = NULL, Authors = NULL) {

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

    if (is.null(NewPage)) source(file[1], local = TRUE)

    ## File paths
    ## template
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.r', sep = '/')

    if (is.null(NewPage)) style2 = 'style-web.css'
        else style2 = 'style-print.css'

    if (class(AdditionalSection) == "character" ) style2 = c(style2, 'style-letter.css')
    styles = c('style.css', style2)

    outFile    = sapply(file   , function(i) tail(strsplit(i,'/')[[1]],1))
    outFile    = sapply(outFile, function(i) head(strsplit(i, '.', fixed = TRUE)[[1]],-1))
    outFile    = paste(c(outFile,'html'), collapse = '.')

    PAGES = 0
    for (nn in 1:2) {
        cpInFiles  = paste(template, styles, sep = '/')
        cpOutFiles = styles

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
        PAGES = PAGE
        PAGES <<- PAGES
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
