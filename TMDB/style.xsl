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
				<title>TMDB</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
			</head>
			
			<body>
				<header>
					<nav class="navbar navbar-expand-lg navbar-light bg-dark">
						<div class="container">
							<div class="col-2">
								<a class="navbar-brand" href="#">
									<img src="img/logotmdb.png" alt="logo" style="height: 80px;" />
								</a>
							</div>
							<div class="col-10 justify-content-center text-center">
								<button type="button" class="btn btn-success me-2" onclick="document.getElementById('personajes').style = 'display:flex;'; document.getElementById('pelis').style = 'display:none;';">
									Person
								</button>
								<button type="button" class="btn btn-success me-2" onclick="document.getElementById('personajes').style = 'display:none;'; document.getElementById('pelis').style = 'display:flex;';">
									Movies
								</button>
								<button type="button" class="btn btn-success me-2" onclick="document.getElementById('personajes').style = 'display:flex;'; document.getElementById('pelis').style = 'display:flex;';">
									All
								</button>
							</div>
						</div>
					</nav>
				</header>
				<main>
					<div class="container">
						<div class="row row-cols-1 row-cols-md-3 justify-content-center g-4" id="personajes">
							<xsl:for-each select="tmdb/persons/person">
								<div class="col pt-2">
									<div class="card h-100">
										<xsl:choose>
											<xsl:when test=" foto = ''">
												<img src="img/noimageperson.png" class="card-img-top" alt="..." />
											</xsl:when>
											<xsl:otherwise>
												<img src="{foto}" class="card-img-top" alt="..." />
											</xsl:otherwise>
										</xsl:choose>
										<div class="card-body">
											<h5 class="card-title"><xsl:value-of select="@nombre"/></h5>
											<p class="card-text"><xsl:value-of select="peliculas"/></p>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>
						<div class="row row-cols-1 row-cols-md-3 justify-content-center g-4 mt-1" id="pelis">
							<xsl:for-each select="tmdb/movies/movie">
								<div class="card" style="max-width: 540px;">
									<div class="row g-0">
										<div class="col-md-4">
											<xsl:choose>
												<xsl:when test=" foto = ''">
													<img src="img/noimagemovie.png" class="img-fluid rounded-start" alt="" />
												</xsl:when>
												<xsl:otherwise>
													<img src="{foto}" class="img-fluid rounded-start" alt="" />
												</xsl:otherwise>
											</xsl:choose>
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h5 class="card-title"><xsl:value-of select="@titulo"/></h5>
												<p class="card-text"><xsl:value-of select="fecha"/></p>
												<xsl:choose>
													<xsl:when test="rating &lt;= 60">
														<span class="card-text bg-danger rounded-pill p-1"><xsl:value-of select="rating"/></span>
													</xsl:when>
													<xsl:when test="rating &gt; 70">
														<span class="card-text bg-success rounded-pill p-1"><xsl:value-of select="rating"/></span>
													</xsl:when>
													<xsl:otherwise>
														<span class="card-text bg-warning rounded-pill p-1"><xsl:value-of select="rating"/></span>
													</xsl:otherwise>
												</xsl:choose>
											</div>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>
					</div>
				</main>
				<footer>
					<div class="container mt-2 bg-dark">
						<div class="row text-center text-success py-1">
							<h1>&copy; The Movie DB 2020</h1>
						</div>
					</div>
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