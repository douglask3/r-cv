###############################################################
## Basic Infomation                                          ##
###############################################################
###############################################################
## Basic Infomation                                          ##
###############################################################
Name    = c("Douglas Kelley", " ", post)

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")

Authors = c("Kelley D.  I.")

Footer = '<p class = "subDetails"> <a href="mailto:douglas.i.kelley@gmail.com">douglas.i.kelley@gmail.com </a> - <i> +44 (0) 7936 726 819 </i> - <a href = "douglask3.github.io"> douglask3.github.io</a></p><br>'
###############################################################
## Additional Sections                                       ##
###############################################################

statmentFiles =  list.files(dir, full.names=TRUE, pattern='statement')#paste(dir, 'statement.html', sep ='/')
if (length(statmentFiles) == 0) statmentFiles = 'example_statement.html'

makeStatement <- function(statmentFile) {
    AdditionalSection = paste(readLines(statmentFile), collapse = '\n')
    outFile = tail(strsplit(statmentFile,'/')[[1]],1)
    NewPage = c('Douglas Kelley', '', '<a href ="mailto:douglas.i.kelley@gmail.com"> douglas.i.kelley@gmail.com </a>')
    r2cv(Top = NULL, Name, Contact, AdditionalSection, Footer,
                     file = NULL, template = "ThomasHardy", outPath = "outputs", outFile,
                     NewPage, Authors)
}

lapply(statmentFiles, makeStatement)
