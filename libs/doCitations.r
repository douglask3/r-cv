doCitations <- function(txt, Authors) {
    c(refs, NewPageLetter) := openRefencesFile(txt)

    c(txt, refsIndex1) := findAndReplaceCite('cite', c(''  , '' , '' , '' ), txt, refs)
    c(txt, refsIndex2) := findAndReplaceCite('citep', c('(', '' , '' , ')'), txt, refs)
    c(txt, refsIndex3) := findAndReplaceCite('citet', c('' , '(', ')', '' ), txt, refs)

    refs = refs[unique(c(refsIndex1, refsIndex2, refsIndex3))]

    if (length(refs) > 0) {
        refs = sapply(refs, function(i) i[[4]])
        refs = sort(refs)

        findNewPage <- function(i) {
            Letters = substr(refs, 1, nchar(i))
            Letters = which(Letters == i)[1]
        }
        Letters = sapply(NewPageLetter, findNewPage)
        Letters = Letters + (1:length(Letters))-1
        
        refs = sapply(refs, BoldAuthors, Authors)

        refs = paste('<div class = "refList">', refs, '</div>')

        for (i in Letters) refs = c(refs[1:(i-1)], "<NewPage>", refs[i:length(refs)])
        refs = paste(refs, collapse = ' ')
        #refs = paste('\t', refs)


        txt = findCiteInfo(txt, 'References')
        txt[2] = refs
        txt = paste(txt, collapse = '')
    }
    return(txt)
}

BoldAuthors <- function(ref, Authors) {
    BoldAuthor <- function(Author) {
        if (!grepl(Author,ref)) return(ref)
        ref = strsplit(ref, Author)[[1]]
        ref = paste(ref, collapse = paste('<b>', Author, '</b>'))
        return(ref)
    }
    #browser()
    for (i in Authors) ref = BoldAuthor(Authors)
    return(ref)
}

findAndReplaceCite <- function(cite, paras, txt, refs) {
    txti = findCiteInfo(txt, cite)

    if(length(txti) == 1) return(list(txti, NULL))
    index = seq(2, length(txti), 2)
    cites = txti[index]

    out = sapply(cites, ReplaceCite, refs, paras)

    cites = unlist(out[1,])
    refsIndex = unique(unlist(out[2,]))

    txti [index] = cites
    txti = paste(txti, collapse = ' ')

    return(list(txti, refsIndex))
}

ReplaceCite <- function(cite, refs, paras) {
    cite = strsplit(cite, ';')[[1]]
    cite = sapply(cite, function(i) gsub(' ', '', i))
    refsIndex = c()

    for (i in 1:length(cite)) {
        test = FALSE
        for (j in 1:length(refs)) {
            if (cite[i] == refs[[j]][[1]]) {
                cite[i] = paste( refs[[j]][2], ' ',
                                 paras[2], refs[[j]][3],
                                 paras[3], sep = '')
                refsIndex = c(refsIndex, j)
                test = TRUE
                break
            }
        }
        if (!test) cite[i] = '((Cite Not Found))'
    }

    cite = paste(cite, collapse = '; ')
    cite = paste( paras[1], cite, paras[4], sep = '')
    return(list(cite, refsIndex))
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
    file = findCiteInfo(file, 'NewPage')

    NewPageLetter = file[-1]; file = file[1];
    NewPageLetter = NewPageLetter[NewPageLetter!= " "]

    file = gsub(' ', '', file, fixed = TRUE)

    refs = readTxtFile(file)

    refs = strsplit(refs, '@')[[1]]

    refs = lapply(refs, sortRef)

    refsID = lapply(refs, function(i) i[[6]])
    refs = mapply(avoidRefRep, refs, 1:length(refs), MoreArgs = list(refsID),
                  SIMPLIFY = FALSE)

    refs = lapply(refs, constructReference)

    return(list(refs, NewPageLetter))
}

avoidRefRep <- function(ref, i, refsID) {
    index = which(ref[[6]]==refsID)
    if (length(index) == 1) return(ref)
    letter = letters[which(i == index)]
    ref[[3]] = paste(ref[[3]], letter, sep ='')
    return(ref)
}

sortRef <- function(ref) {
    if (ref == "") return(rep('', 7))
    ref = strsplit(ref, "\n")[[1]]

    c(type, key) := strsplit(ref[1], '{', fixed = TRUE)[[1]]
    key = strsplit(key, ',')[[1]][1]
    authors = findFieldInfo('author', ref)
    authors = strsplit(authors, ' and ')[[1]]

    if(length(authors) == 2) {
        author = sapply(authors, function(i) strsplit(i,',')[[1]])[1,]
        author = paste(author, collapse = ' & ')
    } else {
        author = strsplit(authors[1],',')[[1]][1]
        if (length(authors)>1) author = paste(author, 'et al.')
    }

    Year = findFieldInfo('year', ref)

    #referance = constructReference(ref, type, authors, Year)
    refID = paste(c(author, Year), collapse = '')

    return(list(key, author, Year, type, authors, refID, ref))
}

constructReference <- function(ref) {
    referance = ref[[7]]
    year = ref[[3]]
    type = ref[[4]]
    authors = ref[[5]]
    #, type, authors, year
         if (type == "") referance = ""
    else if (type == "article") referance = constructArticleReference(referance)
    else if (type == "inproceedings") referance = constructBookReference(referance)
    else if (type == "book") referance = constructBookReference(referance)
    else if (type == "incollection") referance = constructBookReference(referance)
    else if (type == "phdthesis") referance = constructPhdthesisReference(referance)
    else if (type == "manual") referance = constructArticleReference(referance)
    else if (type == "misc") referance = constructArticleReference(referance)
    else browser()

    authors = makeAuthorList(authors)
    ref[[4]] = paste(authors, ' (', year, ') ', referance, sep = '')
    return(ref[1:4])
}

makeAuthorList <- function(authors) {

    makeAuthor <- function(author) {
        author = strsplit(author, ',')[[1]]
        if (length(author) !=1) {
            firstName = substr(strsplit(author[2],' ')[[1]],1,1)
            firstName = firstName[firstName != '']
            firstName = paste(firstName, '. ', sep = '')

            author = paste(c(author[1], firstName), collapse = ' ')
        }
        return(author)
    }

    authors = sapply(authors, makeAuthor)
    authors = paste(authors, collapse = ', ')
    return(authors)
}

constructPhdthesisReference <- function(ref)
    constructArticleReference(ref, title = 'title', journal = 'type',
                                          volume = 'school', number = 'pages')

constructBookReference <- function(ref)
    constructArticleReference(ref, title = 'title', journal = 'booktitle',
                                          volume = 'publisher', number = 'pages')


constructArticleReference <- function(ref, title = 'title', journal = 'journal',
                                      volume = 'volume', number = 'number') {
    title   = findFieldInfo(title  , ref)
    journal = findFieldInfo(journal, ref)
    volume  = findFieldInfo(volume , ref)
    number  = findFieldInfo(number , ref)

    if (volume == '') {
        volume =  number
        number =  ''
    }

    if (volume != "") volume = paste('', '-', volume)
    if (number != "") number = paste(' (', number, ') ', sep = '')

    ref = paste(title, '<i> ', journal, '</i> ', volume, number , sep = '')

    return(ref)
}

findFieldInfo <- function(pattern, ref) {
    pattern2 = paste(pattern, '=')
    pattern  = paste(pattern, '=', sep = '')
    test = grepl(pattern, ref) | grepl(pattern2, ref)

    if (all(!test)) return('')

    ref = tail(strsplit(ref[test], '{', fixed = TRUE)[[1]], 1)
    return(strsplit(ref, '}')[[1]][1])
}

readTxtFile <- function(file)
    paste(readLines(file), collapse = '\n')
