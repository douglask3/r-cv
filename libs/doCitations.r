doCitations <- function(txt) {
    refs = openRefencesFile(txt)
    refsIndex = rep(FALSE, length(refs))

    txti = findCiteInfo(txt, 'cite')

    index = seq(2, length(txti), 2)
    cites = txti[index]

    for (i in 1:length(cites)) {
        test = FALSE
        for (j in 1:length(refs)) {
            if (cites[i] == refs[[j]][[1]]) {
                cites[i] = refs[[j]][[2]]
                refsIndex[j] = TRUE
            }
        }
    }

    refs = refs[refsIndex]
    refs = sapply(refs, function(i) i[[3]])
    refs = paste(refs, collapse = '\n')

    txti [index] = cites
    txti = paste(txti, collapse = ' ')
    return(txti)
}

findCiteInfo <- function(txt, command) {
    command = paste('<', c('','/'), command, '>', sep = '')

    txti = strsplit(txt, command[1])[[1]]
    txti = sapply(txti, function(i) strsplit(i, command[2]))
    txti = unlist(txti)
    names(txti) = NULL

    return(txti)
}

openRefencesFile <- function(txt) {
    file = findCiteInfo(txt, 'References')[2]
    file = gsub(' ', '', file, fixed = TRUE)

    refs = readTxtFile(file)

    refs = strsplit(refs, '@')[[1]]

    refs = lapply(refs, sortRef)
}

sortRef <- function(ref) {
    if (ref == "") return(c('','',''))
    ref = strsplit(ref, "\n")[[1]]

    c(type, key) := strsplit(ref[1], '{', fixed = TRUE)[[1]]
    key = strsplit(key, ',')[[1]][1]
    authors = findFieldInfo('author', ref)
    authors = strsplit(authors, ' and ')[[1]]

    if(length(authors) == 2) {
        author = sapply(authors, function(i) strsplit(i,',')[[1]])[1,]
        paste(author, collapse = '&')
    } else {
        author = strsplit(authors[1],',')[[1]][1]
        if (length(author>1)) author = paste(author, 'et al.')
    }

    Year = findFieldInfo('year', ref)

    txtReplace = paste(author, Year)

    referance = paste(c(authors, Year), collapse = ' ')

    return(list(key, txtReplace, referance))
}

findFieldInfo <- function(pattern, ref) {
    pattern2 = paste(pattern, '=')
    pattern  = paste(pattern, '=', sep = '')
    test = grepl(pattern, ref) | grepl(pattern2, ref)

    if (all(!test)) return('')

    ref = strsplit(ref[test], '{', fixed = TRUE)[[1]][2]
    return(strsplit(ref, '}')[[1]][1])
}

readTxtFile <- function(file)
    paste(readLines(file), collapse = '\n')
