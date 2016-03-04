###############################################################
## Cfg                                                       ##
###############################################################
usrID       = c('Douglas Kelley' = 'AJKyfI4AAAAJ')

###############################################################
## Basic Infomation                                          ##
###############################################################
Name    = c("Douglas Kelley",
            post,
            "CV - Summary",
            "docs/agua_png_by_eross_666-d56zr6u.png")

Contact = c(email = "douglas.i.kelley@gmail.com",
            phone = "+44 (0) 7936 726 819",
            web   = "douglask3.github.io")

###############################################################
## Additional Sections                                       ##
###############################################################
Qualifications = list(Name = "Academic qualifications",
        c("PhD Climate Change Ecology" = "",
          "2014",
          "Macquarie University, Department of Biological Sciences, Ryde, NSW, Australia" = "https://bitbucket.org/teambcd/",
          'Thesis: <a href="">Modelling Australian fire regimes</a>'),

        c("MSc Earth System Science" = "http://www.bristol.ac.uk/cabot/postgrad/msc-ccsp.html",
          "2008",
          "University of Bristol, Department of Earth Sciences, UK" = "http://www.bristol.ac.uk/earthsciences/",
          ""),
        c("BSc (Hons.) Physics" = "http://www2.warwick.ac.uk/study/undergraduate/courses/f300",
          "2007",
          "University of Warwick, Department of Physics, UK" = "http://www2.warwick.ac.uk/fac/sci/physics",
          ""))

Employment = list(Name = "Recent Employment History",
        c("Postdoctoral Research Assistant" = "",
          "Apr 2015-present",
          "Department of Geography & Environmental Science, University of Reading, UK" = "https://www.reading.ac.uk/geographyandenvironmentalscience/",
          ""),

        c("Postdoctoral Research Assistant" = "",
          "Jun 2014-Mar 2015",
          "Department of Biological Sciences, Macquarie University, Ryde, NSW, Australia" = "http://www.mq.edu.au/about/about-the-university/faculties-and-departments/faculty-of-science-and-engineering/departments-and-centres/department-of-biological-sciences",
          ""))


Publications = list(Name = "Publication Statistics",
                    Main = MakeUserProfile(usrID, 'unformatted'))

Awards = list(Name = "Examples of Awards won",

        c("Macquarie University Research Excellence Scholarship"="http://www.hdr.mq.edu.au/information_about/scholarships",
          "2010-2014",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          ""),

        c("Postgraduate Research Fund (PGRF)" = "http://www.hdr.mq.edu.au/information_for/current_candidates/financial_support",
          "2013",
          "Macquarie University, Ryde, NSW, Australia" = "https://www.mq.edu.au/",
          ""))

Skills = list(Name = "Skills",
              Main = "",
              list(
                 c("Programming",
                   '<table width="100%">
                        <tr>
                            <td style="width:30%">
                                <li>Fortran</li>
                                <li>C++</li>
                                <li>C</li>
                            </td>
                            <td style="width:30%">
                                <li>R</li>
                                <li>Python</li>
                                <li>Matlab</li>
                            </td>
                            <td style="width:30%">
                                <li>Shell</li>
                            </td>
                        </tr>
                    </table>',
                    'See examples at <a href="https://github.com/douglask3" target = "_blank"> github.com/douglask3 </a>
                    and <a href="https://bitbucket.org/douglask3/" target = "_blank"> bitbucket.org/douglask3 </a>'),
                 c("Web Design & Publishing" = "",
                     '<table width="100%">
                          <tr>
                              <td style="width:30%">
                                  <li>html</li>
                                  <li>CSS</li>
                                  <li>PHP</li>
                                  <li>Markdown</li>
                              </td>
                              <td style="width:30%">
                                  <li>Python/R for web-page generation</li>
                                  <li>Wordpress</li>
                                  <li>Concrete5</li>
                                  <li>Latex</li>
                              </td>
                              <td style="width:30%">
                                  <li>Illustrator</li>
                                  <li>Photoshop</li>
                                  <li>GIMP</li>
                                  <li>Scribus</li>
                                  <li>ms/open office</li>
                              </td>
                          </tr>
                      </table>',
                    'See examples at <a href="http://douglask3.github.io/pages/websites.html" target = "_blank"> douglask3.github.io/pages/websites </a>'),

                 c("Software Tool Development" = "",
                   'I have developed several software package tools related to my research, and to help track project work flows',
                   'See examples at <a href="http://douglask3.github.io/pages/tools.html" target = "_blank"> douglask3.github.io/pages/tools </a>')))


Referee = list(Name = "References",
             c("Prof. Sandy Harrison" = "http://www.reading.ac.uk/s-p-harrison.aspx",
               "s.p.harrison@reading.ac.uk"),

             c("Prof. Colin Prentice" = "http://www.imperial.ac.uk/people/c.prentice",
               "c.prentice@imperial.ac.uk"),

             c("Prof. Belinda Medlyn" = "https://bmedlyn.wordpress.com/",
               "b.medlyn@westernsydney.edu.au"),

             c("","Full contact information at end of Extended CV"))

AdditionalSection = list(Qualifications, Employment, Publications, Awards, Skills, "New Page", Referee)
