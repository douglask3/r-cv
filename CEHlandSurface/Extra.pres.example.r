###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')

###############################################################
## Basic Infomation                                          ##
###############################################################
Top = NULL

Name    = c("Douglas Kelley",
            "Recent work pertinent to<br>modelling and environmental science",
            "Iterative Model Development")

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")

###############################################################
## Additional Sections                                       ##
###############################################################
Images = c(Title = 'TreeProtractor.png',
           ThesisSummary = 'ThesisStructure.png')
ImagesPath = 'CEHlandSurface/images/'

TitlePage = list("slide",
                 bgImage = Images['Title'],
                 H1 = "Recent work pertinent to modelling and
                         environmental science")


Introduction = list("slide",
                    CenterImage = list(
                        Title = "Introduction",
                        SubHead = "My Thesis",
                        Image = Images['ThesisSummary'],
                        LeftHand  = c('Yay','Wow','YayAndWow'),
                        RightHand = c('Stuff','Thangs','StuffAndThangs'),
                        Footer = "Thats the end. Well I'm impressed"
                        ))

TheNextSlide = list("slide",
                    RightImage = list(
                        Title = "Introduction",
                        SubHead = "My Thesis",
                        Image = Images['ThesisSummary'],
                        Text  = c('Yay','Wow','YayAndWow'),
                        Footer = "Thats the end. Well I'm impressed"
                        ))

PictureSlide = list("slide",
                    Image = list(
                        Title = "Introduction",
                        SubHead = "My Thesis",
                        Image = Images['ThesisSummary'],
                        Footer = "Thats the end. Well I'm impressed"
                        ))

HtmlSlide = list("slide",
                    HTML = list(
                        Title = "Introduction",
                        html  = "<p>This is a paragraph.</p>
                                 <p>This is a paragraph.</p>
                                 <p>This is a paragraph.</p>"
                        ))

TheSlideAfter = TheNextSlide
names(TheSlideAfter)[2]="LeftImage"

TitlePage2 = TitlePage
TitlePage2$H1 = "Iterative Model Development"

AdditionalSection = list(TitlePage, "New Page", TitlePage2, "New Page",
                         Introduction, "New Page",
                         TheNextSlide, "New Page", TheSlideAfter, "New Page",
                         PictureSlide, "New Page", HtmlSlide)
