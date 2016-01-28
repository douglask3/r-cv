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

	if (!is.null(Profile)) {
		doc = c(doc, '
			<section>
				<article>
					<div class="sectionTitle">
						<h1>', Profile[1], '</h1>
					</div>

					<div class="sectionContent">
						<p>', Profile[2], '</p>
					</div>
				</article>
				<div class="clear"></div>
			</section>
		')
	}
	print("Employment")
	if (!is.null(Employment)) {
		doc = c(doc,'
		<section>
			<div class="sectionTitle">
				<h1>', Employment[[1]], '</h1>
			</div>
			<div class="sectionContent">
			')

			for (job in tail(Employment, -1)) {
				doc = c(doc, '
				<article>
					<h2>', hrefIndex(job, 1), '</h2>
					<p class="subDetails">', job[2], '</p>
					<b>', hrefIndex(job, 3), '</b>
					<p>', job[4], '</p>
				</article>')
			}
			doc = c(doc, '
				</div>
				<div class="clear"></div>
			</section>')
		}
		print("Skills")
		if (!is.null(Skills)) {
			doc = c(doc, '
				<section>
					<div class="sectionTitle">
						<h1>', Skills[1], '</h1>
					</div>

					<div class="sectionContent">
						<ul class="keySkills">
						')

						for (Skill in tail(Skills, -1)) {
							doc = c(doc, '<li>', Skill, '</li>
									')
						}
			doc = c(doc, '
					</ul>
				</div>
				<div class="clear"></div>
			</section>')
		}

		print("Qualifications")
		if (!is.null(Qualifications)) {
			doc = c(doc, '
			<section>
				<div class="sectionTitle">
					<h1>', Qualifications[1],'</h1>
				</div>

				<div class="sectionContent">
				')

			for (school in tail(Qualifications, -1)) {
				doc = c(doc, '
					<article>
					<h2>', hrefIndex(school, 1), '</h2>
					<p class="subDetails">', school[2], '</p>
					<b>', hrefIndex(school, 3), '</b>
					<p>', school[4], '</p>
				</article>
				')
			}

			doc = c(doc, '
					</div>
					<div class="clear"></div>
				</section>')
		}
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
