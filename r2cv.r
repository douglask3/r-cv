r2cv <- function(Top = NULL, Name = NULL, Contact = NULL, AdditionalSection = NULL,
                    Footer = NULL,
                 file = "example-long.r", template = "ThomasHardy", outPath = "outputs", outFile = NULL,
                 NewPage = NULL, Authors = NULL,
                 isLetter = FALSE,
                 isPresentation = FALSE, Images = NULL, ImagesPath = NULL) {

    ###############################################################
    ## Cfg                                                       ##
    ###############################################################
    library(gitBasedProjects)
    sourceAllLibs()
    sourceScholar<- function(file)
	 source(paste("../webpageGenerator/libs/googleScholarGrab/", file, sep =''))

    sourceScholar("MakeUserProfile.r")
    sourceScholar("MakePublicationDocument.r")
    sourceScholar("MakePublicationDocument.list.r")
    sourceScholar("MakePublicationDocument.Rlist.r")
    Credits = 'Made using r2cv R package - <a href = "http://github.com/douglask3/r-cv", target = "_blank"> github.com/douglask3/r-cv </a>'



    ## File paths
    ## template
    template = paste('template', template, sep = '/')
    index    = paste(template, 'index.r', sep = '/')
    #if(!is.null(files))   source(file[1], local = TRUE)
    if (is.null(NewPage)) source(file[1], local = TRUE)
    if (is.null(NewPage)) style2 = 'style-web.css'
        else style2 = 'style-print.css'

    if (isLetter)       style2 = c(style2, 'style-letter.css')
    if (isPresentation) style2 = c(style2, 'style-presentation.css')

    styles = c('style.css', style2)

    if (is.null(outFile)) {
        outFile    = sapply(file   , function(i) tail(strsplit(i,'/')[[1]],1))
        outFile    = sapply(outFile, function(i) head(strsplit(i, '.', fixed = TRUE)[[1]],-1))
        outFile    = paste(c(outFile,'html'), collapse = '.')
    }

    PAGES = 0
    for (nn in 1:2) {
        cpInFiles  = paste(template, styles, sep = '/')
        cpOutFiles = styles

        doc0 = ''; headHtml = TRUE; PAGE = 0
        if (is.null(file)) source(index, local = TRUE)
        for (i in file) {
            source(i, local = TRUE)

            Images = paste(ImagesPath, '/', Images, sep = '')

            if (length(Name) > 3)  Images = c(Name[4], Images)
            if (!is.null(Images)) {
                cpInFiles  = c(cpInFiles , Images)
                Images     = sapply(Images, function(i) tail(strsplit(i,'/')[[1]],1))
                cpOutFiles = c(cpOutFiles, Images)
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
