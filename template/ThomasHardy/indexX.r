doc = c('')

if (headHtml) {
	print("yay")
	doc = c('
<!DOCTYPE html>
<html>
<head>
<title>', Name[1], ' - Curriculum Vitae</title>

<meta name="viewport" content="width=device-width"/>
<meta name="description" content="The Curriculum Vitae of ', Name[1], '"/>
<meta charset="UTF-8">

<link type="text/css" rel="stylesheet" href="style.css">
<link href="http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>')
}

doc = c(doc, '
<body id="top">
<div id="cv" class="instaFade">')
	if (!is.null(Top)) doc = c(doc, Top)

	doc = c(doc,'
	<div class="mainDetails">')
		if (length(Name) > 3) {
			doc = c(doc, '
				<div id="headshot" class="quickFade">
					<img src="', Name[4], '" alt="', Name[1], '" />
				</div>
				')
		}
		doc = c(doc, '
		<div id="name">
			<h1 class="quickFade delayTwo">', Name[1], '</h1>
			<h2 class="quickFade delayThree">', Name[2], '</h2>
			<h3 class="quickFade delayThree">', Name[3], '</h3>
		</div>')
		if (!is.null(Contact)) {
			Contact = c(
				paste('e: <a href="mailto:', Contact[1], '" target="_blank">',Contact[1], '</a>'),
				paste('w: <a href="', Contact[3], '">', Contact[3], '</a>'),
				paste('m: ', Contact[2]))

			doc = c(doc, '
				<div id="contactDetails" class="quickFade delayFour">
					<ul>
						<li>', Contact[1], '</li>
						<li>', Contact[2], '</li>
						<li>', Contact[3], '</li>
					</ul>
				</div>')
		}
		doc = c(doc, '
		<div class="clear"></div>
	</div>
	<div id="mainArea" class="quickFade delayFive">')


	addSection <- function(section) {
		ls = length(section)
			 #if (ls == 1 && section == "New Page") return(addNewPage())
			 if (ls == 1              ) return(addParaSection(c("", section)))
		lsSub = length(section[[2]])
		     if (ls == 2 && lsSub == 1) return(addParaSection    (section))
		else if (ls == 3 && lsSub == 1) return(addParaListSection(section))
		else                            return(addListedSection  (section))
		#else {
		#	warning("section not identifiable. Skipping over")
		#	return(doc)
		#}
	}



	addParaSection <- function(section) {
		c(doc, '
			<section>
				<article>
					<div class="sectionTitle">
						<h1>', section[1], '</h1>
					</div>

					<div class="sectionContent">
						', section[2], '
					</div>
				</article>
				<div class="clear"></div>
			</section>
		')
	}

	addParaListSection <- function(section) {
		doc = c(doc, '
		<section>
			<article>
				<div class="sectionTitle">
					<h1>', section[1], '</h1>
				</div>

				<div class="sectionContent">
					<h3>', section[2], '</h3>
				</div>
			</article>
			<div class="sectionContent">
				')
				for (sub in section[[3]]) doc = addItem(sub, doc)
		doc = c(doc, '
				</div>
				<div class="clear"></div>
			</section>')
		return(doc)
	}

	addListedSection <- function(section) {
		doc = c(doc,'
			<section>
				<div class="sectionTitle">
					<h1>', section[[1]], '</h1>
				</div>
				<div class="sectionContent">
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

	addNewPageSubSection <- function(doc) {
		if (!NewPage) return(doc)

		doc = c(doc, '
		</div>
			<div class="clear"></div>
		</section>')

		PAGE <<- PAGE + 1
		doc = addFooter(paste('YAY', PAGE), doc)

		doc = c(doc, '
		</div>
		<script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src=', "'", '+ gaJsHost + "google-analytics.com/ga.js', "' type='text/javascript'%3E%3C/script%3E", '"));
		</script>
		<script type="text/javascript">
		var pageTracker = _gat._getTracker("UA-3753241-1");
		pageTracker._initData();
		pageTracker._trackPageview();
		</script>Per
		</body>
		<body id="top">
		<div id="cv" class="instaFade">
		<div id="mainArea" class="quickFade delayFive">')

		doc = c(doc, '
			<div id="mainArea" class="quickFade delayFive">
				<section>
					<div class="sectionContent">
		')
	}

	addItem <- function(sub, ...) {
		if (is.list(sub))      return(addMultItem(sub, ...))
		if (length(sub) == 1  && sub == "New Page") return(addNewPageSubSection(...))
		if (length(sub) == 1 ) return(addListItem(sub, ...))
		if (length(sub) == 3 ) return(add3Item   (sub, ...))
		if (length(sub) == 4 ) return(add4Item   (sub, ...))
		if (length(sub) == 5 ) return(add5Item   (sub, ...))
		if (length(sub) == 6 ) return(addPubs    (sub, ...))
		for (i in sub) doc = addListItem(i, ...)
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

		if (is.na(sub[5]) || sub[5]=="")
			sub[5] = ": "
		else sub[5] = paste(' (', sub[5], ') ', sep = "")

		if (sub[6] == " 0") sub[6] = ""
		if (sub[6] != "") sub[6] = paste('<p class="subDetails"> Cited by:', sub[6], '</p>',sep = "")

		doc = c(doc, '<article>',
			        sub[1], sub[5], sub[2], ' <i>', sub[3], '</i> - ', sub[4], sub[6],'
		  </article><br>'
		)
	}

	add4Item <- function(sub, doc) {
		c(doc, '
			<article>
				<h2>', hrefIndex(sub, 1), '</h2>
				<p class="subDetails">', sub[2], '</p>
				<b>', hrefIndex(sub, 3), '</b>
				<p>', sub[4], '<p>
			</article>')
	}

	add3Item <- function(sub, doc) {
		c(doc, '
			<article>
				<h2>', hrefIndex(sub, 1), '</h2>
				<p>', sub[2], '<br>
				<small><i>', sub[3], '</i></small></p>
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


	for (section in AdditionalSection) doc = addSection(section)

	addFooter <- function(footer, doc) {
		doc = c(doc, '
		</div>
		<div id="mainArea" class=" mainDetails quickFade delayFive">')

			if (is.null(footer)) {
				if (!is.null(Contact)) {
					footer = c( Name = Name[1],
				 		       paste('<p class = "subDetails">',
							         paste(Contact, collapse = ';&nbsp;&nbsp;'),
									 '</p>'))
				} else footer = c("", "")
			}
			doc = addSection(footer)
			doc = c(doc, '
		</div>')

		return(doc)
	}

	doc = addFooter(Footer, doc)

	doc = c(doc, '<small><i>', Credits, '</i></small>
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=', "'", '+ gaJsHost + "google-analytics.com/ga.js', "' type='text/javascript'%3E%3C/script%3E", '"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-3753241-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>Per
</body>
</html>')
