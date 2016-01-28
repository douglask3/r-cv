href <- function(txt, link = "", target = "_blank") {
    if (link == "") return(txt)

    out = c('<a href="', link, '" target="', target, '">', txt, '</a>')
    out = paste(out, sep = "")
    return(out)
}


hrefIndex <- function(var, i)
    href(names(var)[i], var[i])
