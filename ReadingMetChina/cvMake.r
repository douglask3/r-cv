dir = 'ReadingMetChina'
post = 'Re: Research Scientist GE15229'


shrtCVchange = paste('
    Name[2] = "', post, '"
    Name[3] = "CV - Summary"
    Name[4] = "docs/agua_png_by_eross_666-d56zr6u.png"

    Skills[[3]] = c(Skills[[3]][c(1,3)], "New Page", Skills[[3]][4])

    AdditionalSection = list(Qualifications, Employment, Publications, Awards, Skills, Referee)
', sep = '')

source('standardApplications/cv-combine.r')
