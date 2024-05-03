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
				<title>kiabi</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
			</head>
			
			<body>
				<header>
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
						<div class="container">
							<a class="navbar-brand" href="#">
								<img src="img/logo.png" alt="logo" width="120" />
							</a>
							<button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="collapsibleNavId">
								<ul class="navbar-nav mx-auto mt-2 mt-lg-0">
									<xsl:for-each select="kiabi/categoria">
										<li class="nav-item">
											<a class="nav-link" href="#{@nombre}"><xsl:value-of select="@nombre"/></a>
										</li>
									</xsl:for-each>
								</ul>
								<div class="d-flex my-2 my-lg-0">
									<div class="text-center mx-3">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
										<p>Tiendas</p>
									</div>
									<div class="text-center mx-3">
										<i class="fa fa-user" aria-hidden="true"></i>
										<p>Cuenta</p>
									</div>
									<div class="text-center mx-3">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<p>Cesta</p>
									</div>
								</div>
							</div>
						</div>
					</nav>
					
				</header>
				<main>
					<div class="container my-3">
						<div class="row justify-content-center">
							<xsl:for-each select="kiabi/categoria">
								<div class="col-6 col-md-4 col-xl-2 text-center">
									<a href="#{@nombre}" class="text-decoration-none text-dark"><img class="rounded-circle"
											src="{foto}"
											alt="" />
										<div class="fs-6 mt-2">
											<xsl:value-of select="@nombre"/>
										</div>
									</a>
								</div>
							</xsl:for-each>
						</div>
					</div>
					
					<div class="container">
						<xsl:for-each select="kiabi/categoria">
							<a name="{@nombre}" />
							<h4 class="py-3"><xsl:value-of select="@nombre"/></h4>
							<div class="row justify-content-center">
								<xsl:for-each select="prenda">
									<div class="col-md-6 col-lg-4 col-xxl-3 my-3 d-flex">
										<div class="card">
											<img class="card-img-top"
												src="{foto}"
												alt="Title" />
											<div class="card-body">
												<p class="card-text"><xsl:value-of select="producto"/></p>
												<h5 class="card-title"><xsl:value-of select="precio"/></h5>
											</div>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</xsl:for-each>
					</div>
				</main>
				<footer>
					<!-- place footer here -->
				</footer>
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