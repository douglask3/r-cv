doc = c('')


sectionTitle = paste('<div class="sectionTitle">')

sectionContent = paste('<div class="sectionContent">')

addHeadInfo <- function() {

	doc = c(doc, '
		<!DOCTYPE html>
		<html>
		<head>
		<title>', Name[1], ' - Curriculum Vitae</title>

		<meta name="viewport" content="width=device-width"/>
		<meta name="description" content="The Curriculum Vitae of ', Name[1], '"/>
		<meta charset="UTF-8">

		<link type="text/css" rel="stylesheet" href="style.css">\n')
		for (i in style2) doc = c(doc, '<link type="text/css" rel="stylesheet" href="', i ,'">\n')

		doc = c(doc,
		'<link href="http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300" rel="stylesheet" type="text/css">

		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		</head>')
}

addDocStart <- function(doc, top) {
	doc = c(doc, '<body id="top">
		<div id="cv" class="instaFade">')
				if (!is.null(top) && !is.na(top) && top!='NaN') doc = c(doc, top)
	return(doc)
}

addNameMainArea <- function(doc, name, contact, addMain = TRUE) {
	if (addMain) {
		doc = c(doc,'
		<div class="mainDetails">')
			if (length(name) > 3) {
				doc = c(doc, '
					<div id="headshot" class="quickFade">
						<img src="', name[4], '" alt="', name[1], '" />
					</div>
					')
			}
			if (is.null(name[3]) || is.na(name[3])) {
				name2 = c('<h3 class="quickFade delayThree">', name[2], '</h3>')
				name3 = ''
			} else {
				name2 = c('<h2 class="quickFade delayThree">', name[2], '</h2>')
				name3 = c('<h3 class="quickFade delayThree">', name[3], '</h3>')
			}

			doc = c(doc, '
			<div id="name">
				<h1 class="quickFade delayTwo">', name[1], '</h1>',
				name2, name3, '</div>')
			if (!is.null(contact)) {
				if (substr(contact[3], 1, 7) == 'http://') web = contact[3]
					else web = paste('http://', contact[3], sep = '')
				 contact = c(
					paste('e: <a href="mailto:', contact[1], '" target="_blank">',contact[1], '</a>'),
					paste('w: <a href="', web, '" target = "_blank">', contact[3], '</a>'),
					paste('m: ', contact[2]))

				doc = c(doc, '
					<div id="contactDetails" class="quickFade delayFour">
						<ul>
							<li>', contact[1], '</li>
							<li>', contact[2], '</li>
							<li>', contact[3], '</li>
						</ul>
					</div>')
			}

			doc = c(doc, '
			<div class="clear"></div></div>')
		}
	doc = c(doc,'
	<div id="mainArea" class="quickFade delayFive">')

	return(doc)
}


	addSection <- function(section, doc) {
		ls = length(section)
			 if (ls == 1 && section == "New Page")
										return(addNewPageSection(doc, TRUE))
			 if (ls == 1 && section == "New Slide")
										return(addNewPageSection(doc, FALSE))
			 if (ls == 1              ) return(addParaSection(c("", section), doc))
			 if (section[[1]] == "slide")return(addSlide(section[-1], doc))
		lsSub = length(section[[2]])

		     if (ls == 2 && lsSub == 1) return(addParaSection    (section, doc))
		else if (ls == 3 && lsSub == 1) return(addParaListSection(section, doc))
		else                            return(addListedSection  (section, doc))
	}

	addSlideH1 <- function(bit) {
		out = c(
			'
				<table  class = "table2" style="width:100%;height: 100%;">
					<tr><td height="33%"></td></tr>
					<tr>
						<td><div class="sectionTitle"><h1>',bit[1],'</h1></div></td>
					</tr>
					<tr><td></td></tr>
				</table>
			')
		return(list(out,0))
	}

	listIfy <- function(sec) {
		if (!is.null(sec)) {
			if (length(sec) == 1) return(sec)
			else return(paste('<li>', sec, '</li>'))
		} else return('')
	}

	addSlideCenterImage <- function(bit) {
		#return(list('',0))
		out = c('
			<div class = "sectionContent">
				<table  class = "table2" style="width: 100%;">
					<col width="25%">
					<col width="50%">
					<col width="25%">

  					<tr><td colspan="3" height = "70mm">
						<h2>',bit$Title,'</h2>
					</td></tr>
					<tr>
						<td colspan="3">
							<h3>',listIfy(bit$Sub),'</h3>
						</td>
					</tr>
					<tr>
						<td>',listIfy(bit$Left),'</td>
						<td>
						&nbsp;<img src="',bit$Image,'"  align="middle" width = "100%">
						&nbsp;</td>
						<td>',listIfy(bit$Right),'</td>
					</tr>
					<tr>
						<td colspan="3">',listIfy(bit$Footer),'</td>
					</tr>
				</table>
			</div>')
		return(list(out,0))
	}

	addSlideRightNarrowImage <- function(...) addSlideRightImage(..., wImg = 38.2)

	addSlideRightImage <- function(bit, wImg = 61.8) {
		#return(list('',0))
		out = c('
			<div class = "sectionContent">
				<table  class = "table2"  style="width: 100%;">
					<col width="',100-wImg,'%">
					<col width="',    wImg,'%">

  					<tr><td colspan="2" height = "70mm">
						<h2>',bit$Title,'</h2>
					</td></tr>
					<tr>
						<td colspan="2">
							<h3>',listIfy(bit$Sub),'</h3>
						</td>
					</tr>
					<tr>
						<td>',listIfy(bit$Text),'</td>
						<td>
						<small>&nbsp;</small><img src="',bit$Image,'"  align="middle" width = "100%" style="margin-Top:-20mm">
						&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2">',listIfy(bit$Footer),'</td>
					</tr>
				</table>
			</div>')
		return(list(out,0))
	}

	addSlideLeftNarrowImage <- function(...) addSlideLeftImage(..., wImg = 38.2)

	addSlideLeftImage <- function(bit, wImg = 61.8) {
		#return(list('',0))
		out = c('
			<div class = "sectionContent">
				<table  class = "table2"  style="width: 100%;">
					<col width="',    wImg,'%">
					<col width="',100-wImg,'%">

  					<tr><td colspan="2" height = "70mm">
						<h2>',bit$Title,'</h2>
					</td></tr>
					<tr>
						<td colspan="2">
							<h3>',listIfy(bit$Sub),'</h3>
						</td>
					</tr>
					<tr>
						<td>
						&nbsp;<img src="',bit$Image,'"  align="middle" width = "100%"  style="margin-Top:-15mm">
						&nbsp;</td>
						<td>',listIfy(bit$Text),'</td>
					</tr>
					<tr>
						<td colspan="2">',listIfy(bit$Footer),'</td>
					</tr>
				</table>
			</div>')
		return(list(out,0))
	}

	addSlideImage <- function(bit) {
		#return(list('',0))
		out = c('
			<div class = "sectionContent">
			<table class = "table2" style="height: 100%; width: 100%;">
				<tr><td height="33%">
					<h2>',bit$Title,'</h2>
				</td></tr>
				<tr>
					<td>
						<h3>',listIfy(bit$Sub),'</h3>
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;
						<img src="',bit$Image,'"  align="middle" width = "100%"  style="margin-Top:-5mm">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>',listIfy(bit$Footer),'</td>
				</tr>
			</table>
			</div>')
		return(list(out,0))
	}

	addSlideText <- function(bit) {
		#return(list('',0))
		out = c('
			<div class = "sectionContent">
			<table class = "table2" style="height: 100%; width: 100%;">
				<tr><td height="33%">
					<h2>',bit$Title,'</h2>
				</td></tr>
				<tr>
					<td>
						<h3>',listIfy(bit$Sub),'</h3>
					</td>
				</tr>
				<tr><td>',listIfy(bit$Text),'</td></tr>
				<tr>
					<td>',listIfy(bit$Footer),'</td>
				</tr>
			</table>
			</div>')
		return(list(out,0))
	}

	addSlideList <- function(bit) {
		out = c('
			<div class = "sectionContent">
			<table class = "table2" style="height: 100%; width: 100%;">
				<tr><td height="33%">
					<h2>',bit$Title,'</h2>
				</td></tr>
				<tr>
					<td>
						<h3>',listIfy(bit$SubHead),'</h3>
					</td>
				</tr>
				<tr>
					<td>',listIfy(bit$Text),'</td>
				</tr>
				<tr>
					<td>',listIfy(bit$Footer),'</td>
				</tr>
			</table>
			</div>')
		return(list(out,0))
	}

	addSlideHTML <- function(bit) {
		out = c('
			<div class = "sectionContent">
			<table class = "table2" style="height: 100%; width: 100%;">
				<tr><td height="33%">
					<h2>',bit$Title,'</h2>
				</td></tr>
				<tr>
					<td>',listIfy(bit$html),'</td>
				</tr>
			</table>
			</div>')
		return(list(out,0))
	}

	addSlide <- function(section, doc) {
		nms = names(section)
		addSlidebgImage <- function(bit) {
			out = c('<div style="height: 100%; background-size: contain; background-image: url(', bit[1], '";">')
			return(list(out,1))

		}
		#browser()

		addSlideBit <- function(nm, bit) {
			funName = paste('addSlide',nm, sep = '')
			if (!exists(funName)) browser()
			return( do.call(funName, args = list(bit)))
		}

		outs = mapply(addSlideBit, nms, section)

		doc = c(doc, unlist(outs[1,]))
		for (i in 1:sum(unlist(outs[2,]))) doc = c(doc, '</div>')
		return(doc)
	}

	addNewPageSection <- function(doc, addPage,...) {
		if (is.null(NewPage)) return(doc)

		doc = pageFooter(doc, addPage)
		doc = addDocStart(doc, Top[2])


		if (!is.na(Name[3]))
			name = c(paste ('<small>', Name[3], '</small>'), "", "")
		else name = NULL
		doc = addNameMainArea(doc, name, NULL, ...)

		return(doc)
	}


	addParaSection <- function(section, doc) {
		c(doc, '
			<section>
				<article>
					', sectionTitle, '
						<h1>', section[1], '</h1>
					</div>

					', sectionContent, '
						', section[2], '
					</div>
				</article>
				<div class="clear"></div>
			</section>
		')
	}

	addParaListSection <- function(section, doc) {
		doc = c(doc, '
		<section>
			<article>
				', sectionTitle, '
					<h1>', section[1], '</h1>
				</div>

				', sectionContent, '
					<h3>', section[2], '</h3>
				</div>
			</article>
			', sectionContent, '
				')
				for (sub in section[[3]]) doc = addItem(sub, doc)
		doc = c(doc, '
				</div>
				<div class="clear"></div>
			</section>')
		return(doc)
	}

	addListedSection <- function(section, doc) {
		doc = c(doc,'
			<section>
				', sectionTitle, '
					<h1>', section[[1]], '</h1>
				</div>
				', sectionContent, '
				')

				subs = tail(section, -1)
				makeBoldName <- function(nm, txt) paste('<b>', nm, '</b>:', txt)
				if (is.character(subs)) subs = mapply(makeBoldName, names(subs), subs)
				for (sub in subs) doc = addItem(sub, doc)

		doc = c(doc, '
				</div>
				<div class="clear"></div>
			</section>')

		return(doc)
	}

	addItem <- function(sub, doc) {
		lSub = length(sub)
		if (is.list(sub)) return(addMultItem(sub, doc))
		if (lSub == 1 && sub[1] == "New Page" )
						  return(addNewPageItem(sub, doc, TRUE))
		if (lSub == 1 && sub[1] == "New Slide" )
						  return(addNewPageItem(sub, doc, FALSE))
		if (lSub == 1 )   return(addListItem(sub, doc))
		if (lSub == 2 )   return(add2Item   (sub, doc))
		if (lSub == 3 )   return(add3Item   (sub, doc))
		if (lSub == 4 )   return(add4Item   (sub, doc))
		if (lSub == 5 )   return(add5Item   (sub, doc))
		if (lSub == 6 )   return(addPubs    (sub, doc))
		for (i in sub) doc = addListItem(i, doc)
		return(doc)
	}

    add2Item <- function(sub, doc) {
		doc = c(doc, '\n <article> \n')
        if (!is.null(hrefIndex(sub, 1))) doc = c(doc, '<h2>', hrefIndex(sub, 1), '</h2>')
		doc = c(doc, sub[2], '<p></p></article>')
		return(doc)
	}

	pageFooter <- function (doc, addPage, ...) {

		if (addPage)  {
			PAGE = PAGE +1
			PAGE <<- PAGE
		}
		NewPage[NewPage == ""] = paste('page ', PAGE, '/', PAGES)
		footer = paste('<p class = "subDetailsPage"><left>', NewPage[1],'</left><centre>', NewPage[2], '</centre><right>', NewPage[3], '</right></p><br>')
	 	addEndSection(doc, footer, ...)
	}


	addNewPageItem <- function(sub, doc, addPage,...) {
		if (is.null(NewPage)) return(doc)
		doc = c(doc, '
				</div>
				<div class="clear"></div>
			</section>')

		doc = pageFooter(doc, addPage, Credits, ...)
		doc = addDocStart(doc, Top[2])

		name = c(paste ('<small>', Name[3], '</small>'), "", "")
		doc = addNameMainArea(doc,name,NULL)

		doc = c(doc, '<section>
			', sectionTitle, '
				<h1>', paste(section[[1]], 'Continued'), '</h1>
			</div>
			', sectionContent)

		return(doc)
	}

	addMultItem <- function(sub, doc) {
		doc = c(doc, '
				<br>
				<article>
					<h2>', hrefIndex(sub, 1), '</h2>
				</article>')

		for (i in tail(sub, -1)) doc = addItem(i, doc)
		doc = c(doc, '<br>')

		return(doc)
	}

	addPubs  <- function(sub, doc) {

		if (!is.null(Authors)){
			for (Author in Authors) {
        		if (grepl(Author, sub[1])) {
            		X = strsplit(sub[1], Author)[[1]]
					if (length(X) == 1) sub[1] = paste('<b>', Author, '</b>')
            			else sub[1] = paste(X, collapse = paste('<b>', Author, '</b>'))
        		}
			}
		}

		if (is.na(sub[5]) || sub[5]=="") sub[5] = ": "
            else sub[5] = paste(' (', sub[5], ') ', sep = "")

		if (sub[6] == " 0") sub[6] = ""
		if (sub[6] != "") sub[6] = paste('<p class="subDetails"> Cited by:', sub[6], '</p>',sep = "")
        if (sub[4] == "") sub[3] = paste(' <i>', sub[3], '</i> ')
            else sub[3] = paste(' <i>', sub[3], '</i> - ')
		doc = c(doc, '<article>',
			        sub[1], sub[5], sub[2], sub[3], sub[4], sub[6],'
		  </article><br>'
		)
	}

	add4Item <- function(sub, doc) {
		c(doc, '
			<article>
				<h2>', hrefIndex(sub, 1), '</h2>
				<p class="subDetails">', hrefIndex(sub, 2), '</p>
				<b>', hrefIndex(sub, 3), '</b>
				<p>', sub[4], '<p>
			</article>')
	}

	add3Item <- function(sub, doc) {
		if (substr(sub[2], nchar(sub[2])-7, nchar(sub[2])) == '</table>')
			sep ='' else sep ='<br>'
		c(doc, '
			<article>
				<h2>', hrefIndex(sub, 1), '</h2>
				', sub[2], sep, '
				<small><i>', sub[3], '</i></small><p></p?
			</article>')
	}

	add5Item <- function(sub, doc) {
		c(doc, '
			<article>
				<h2>', hrefIndex(sub, 1), '</h2>
				<b>' , hrefIndex(sub, 2), '</b>
				<p class="subDetails">', sub[3], '</p>
				<h3>', hrefIndex(sub, 4), '</h3>
				<small>', sub[5], '</small><p></p>
			</article>')
	}

	addListItem <- function(sub, doc) c(doc, '<li>', hrefIndex(sub, 1), '</li>\n')



addEndSection <-function(doc, footer, credits = NULL) {
		doc = c(doc, '
		</div>
		</div>
		<div id="mainFoot" class=" mainDetails quickFade delayFive">')

			doc = addSection(footer, doc)

			doc = c(doc, '
		')
		doc = c(doc, '<p color = "white"> <small><i>', credits, '</i></small></p>
	</div>
	<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src=', "'", '+ gaJsHost + "google-analytics.com/ga.js', "' type='text/javascript'%3E%3C/script%3E", '"));
	</script>
	<script type="text/javascript">
	var pageTracker = _gat._getTracker("UA-3753241-1");
	pageTracker._initData();
	pageTracker._trackPageview();
	</script></br>
	</body>
	</html>')

	return(doc)
}

addLetter <- function(section, doc) {

	section = doCitations(section, Authors)

	section = gsub("&", "<i>&</i>", section)
	section = gsub("et al.", "<i>et al.</i>", section)
	section = gsub("\t", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ", section)
	section = gsub("    ", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ", section)
	section = gsub("\n\n\n", "<br><br>", section)
	section = gsub("\n\n", "<br>", section)
	section = gsub("CO2", "CO<sub>2</sub>", section)
	section = gsub("21st", "21<sup>st</sup>", section)

	section = strsplit(section, '################################################################################')[[1]]
	section = unlist(strsplit(section, '<NewPage>'))

	addLetterContent <- function(i) c(doc,'<div class = "letterContent">\n', i, '\n</div>')
	for (i in head(section, -1)) {
		doc = addLetterContent(i)
		doc = addNewPageSection(doc, TRUE, TRUE)
	}
	doc = addLetterContent(tail(section, 1))
	return(doc)
}


if (headHtml) doc = addHeadInfo()

			  doc = addDocStart(doc, Top[1])
		      doc = addNameMainArea(doc, Name, Contact)

if (class(AdditionalSection) == "character") {
	doc = addLetter(AdditionalSection,doc)
} else {
	for (section in AdditionalSection) doc = addSection(section, doc)
}

if (is.null(Footer)) {
	if (!is.null(Contact)) {
		Footer = c( Name = Name[1],
					paste('<p class = "subDetails">',
						paste(Contact, collapse = ';&nbsp;&nbsp;'),
						'</p>'))
	} else Footer = c("", "")
}

if (is.null(NewPage)) doc = addEndSection(doc,Footer, Credits) else doc = pageFooter(doc, TRUE, Credits)
