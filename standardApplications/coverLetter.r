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

statmentFile = paste(dir, 'statement.html', sep ='/')
AdditionalSection = paste(readLines(statmentFile), collapse = '\n')

NewPage = c('Douglas Kelley', '', '<a href ="mailto:douglas.i.kelley@gmail.com"> douglas.i.kelley@gmail.com </a>')
