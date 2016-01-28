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
</head>
<body id="top">
<div id="cv" class="instaFade">
	<div class="mainDetails">
		<div id="headshot" class="quickFade">
			<img src="', Name[3], '" alt="', Name[1], '" />
		</div>

		<div id="name">
			<h1 class="quickFade delayTwo">', Name[1], '</h1>
			<h2 class="quickFade delayThree">', Name[2], '</h2>
		</div>

		<div id="contactDetails" class="quickFade delayFour">
			<ul>
				<li>e: <a href="mailto:', Contact[1], '" target="_blank">',Contact[1], '</a></li>
				<li>w: <a href="', Contact[3], '">', Contact[3], '</a></li>
				<li>m: ', Contact[2], '</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div id="mainArea" class="quickFade delayFive">')


	addSection <- function(section) {
		ls = length(section)
		     if (ls == 2) return(addParaSection    (section))
		else if (ls == 3) return(addParaListSection(section))
		else if (ls == 4) return(addListedSection  (section))
		else {
			warning("section not identifiable. Skipping over")
			return(doc)
		}
	}

	addParaSection <- function(section) {
		c(doc, '
			<section>
				<article>
					<div class="sectionTitle">
						<h1>', section[1], '</h1>
					</div>

					<div class="sectionContent">
						<p>', section[2], '</p>
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

				for (sub in tail(section, -1)) doc = addItem(sub, doc)

		doc = c(doc, '
				</div>
				<div class="clear"></div>
			</section>')

		return(doc)
	}

	addItem <- function(sub, ...) {
		if (length(sub) == 1 ) return(addListItem(sub, ...))
		if (length(sub) == 4 ) return(addDetailItem(sub, ...))
	}

	addDetailItem <- function(sub, doc) {
		c(doc, '
			<article>
				<h2>', hrefIndex(sub, 1), '</h2>
				<p class="subDetails">', sub[2], '</p>
				<b>', hrefIndex(sub, 3), '</b>
				<p>', sub[4], '</p>
			</article>')
	}

	addListItem <- function(sub, doc) c(doc, '<li>', sub, '</li>\n')


	for (section in AdditionalSection) doc = addSection(section)


		doc = c(doc,'
	</div>
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
