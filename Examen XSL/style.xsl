<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Fitness</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
			</head>
			
			<body>
				<a name="top"/>
				<header class="bg-light py-2" style="color: #006BB5;">
					<div class="container">
						<div class="row justify-content-between align-items-center">
							<div class="col">
								<img src="img/logo.png" alt="logo" width="180px" class="img-fluid" />
							</div>
							<div class="col text-center">
								<h2>IES Azarquiel</h2>
							</div>
							<div class="col text-end">
								<img src="img/logo.png" alt="logo" width="180px" class="img-fluid" />
							</div>
						</div>
					</div>
				</header>
				<section class="pt-2">
					<div class="container">
						<div class="row justify-content-center">
							<xsl:for-each select="fitness/target">
								<div class="col-6 col-md-4 col-lg-3 col-xl-2 mb-3 d-flex">
									<div class="card text-center" style="color: #006BB5;">
										<a href="#marca-{position()}"><img class="card-img-top" src="img/targetmap.png" alt="Title" /></a>
										<div class="card-body">
											<h5 class="card-title"><xsl:value-of select="@name"/></h5>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>
					</div>
				</section>
				<main>
					<xsl:for-each select="fitness/target">
						<div>
							<a name="marca-{position()}" />
							<h2 class="text-center text-light py-3 m-0" style="background-color: #006BB5;">Target: <xsl:value-of select="@name"/></h2>
						</div>
						<section class="pt-2" id="marca">
							<div class="container">
								<div class="row justify-content-center">
									<xsl:for-each select="exercise">
										<div class="col-1 col-md-6 col-lg-6 col-xl-6">
											<div class="card mb-3 bg-light">
												<div class="row g-0">
													<div class="col-md-4">
														<img src="{gifUrl}" class="img-fluid rounded-start" alt="Card title" />
													</div>
													<div class="col-md-8">
														<div class="card-body" style="color: #006BB5;">
															<h4 class="card-title"><xsl:value-of select="name"/></h4>
															<p class="card-text">
																Body part: <xsl:value-of select="bodyPart"/>
															</p>
															<p class="card-text">
																Equipment: <xsl:value-of select="equipment"/>
															</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</xsl:for-each>
								</div>
							</div>
						</section>
					</xsl:for-each>
				</main>
				<footer>
					<h3 class="text-center bg-light py-3 m-0" style="color: #006BB5;">XSL - DAM - DAW</h3>
				</footer>
				<a href="#top">
					<i class="fa fa-3x text-danger fa-arrow-circle-o-up position-fixed bottom-0 start-0 m-3" aria-hidden="true"></i>
				</a>
				<a href="#top">
					<i class="fa fa-3x text-danger fa-arrow-circle-o-up position-fixed bottom-0 end-0 m-3" aria-hidden="true"></i>
				</a>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>