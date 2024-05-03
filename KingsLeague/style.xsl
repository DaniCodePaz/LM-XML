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
				<title>KingsLeague</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
			</head>
			
			<body class="bg-dark">
				<header>
					<nav class="navbar navbar-expand-lg navbar-light bg-dark">
						<div class="container">
							<div class="row w-100">
								<div class="col-4 d-flex">
									<a class="navbar-brand text-white" href="#"><img src="img/logo.svg" alt="logo" width="80px"
											class="img-fluid" /></a>
								</div>
								<div class="col-4 d-flex align-items-center justify-content-center">
									<h1 class="text-warning">KingsLeague</h1>
								</div>
								<div class="col-4 d-flex align-items-center justify-content-end">
									<button class="text-dark btn btn-warning">Tienda</button>
								</div>
							</div>
						</div>
					</nav>
				</header>
				<main>
					<section>
						<div class="row p-2 m-0">
							<xsl:for-each select="kingsleague/equipo">
								<div class="col-3 col-md-2 col-xl-1">
									<div class="text-center rounded-pill p-2" style="{gradiente}">
										<img src="{escudo}" alt="escudo" width="80px" class="img-fluid" onclick="hideall('@abr')" />
										<div class="text-white"><xsl:value-of select="@abr"/></div>
									</div>
								</div>
							</xsl:for-each>
						</div>
					</section>
					<xsl:for-each select="kingsleague/equipo">
						<section class="equipo" id="{@abr}">
							<div class="card border-0">
								<video autoplay="autoplay" loop="loop"
									src="{video}"
									poster="{poster}"></video>
								<div
									class="card-img-overlay text-white bg-dark bg-opacity-25 d-flex justify-content-center align-items-center">
									<div class="text-center bg-dark bg-opacity-50 rounded-pill p-4">
										<img src="{escudo}" alt="escudo" class="img-fluid" width="200px" />
										<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
									</div>
								</div>
							</div>
							<div class="row justify-content-center mt-3">
								<div class="col-md-6 col-xl-4">
									<div class="card" style="{gradiente}">
										<img class="card-img-top img-fluid"
											src="{presidente/imagen}"
											alt="Title" />
										<div class="card-body text-center text-white">
											<h4 class="card-title"><xsl:value-of select="presidente/@nombre"/></h4>
											<p class="card-text">Presidente</p>
										</div>
									</div>
								</div>
							</div>
							<div class="row justify-content-center mt-3">
								<div class="col-6 col-md-4 col-xl-3">
									<div class="card" style="{gradiente}">
										<img class="card-img-top img-fluid"
											src="{entrenador/imagen}"
											alt="Title" />
										<div class="card-body text-center text-white">
											<h4 class="card-title"><xsl:value-of select="entrenador/@nombre"/></h4>
											<p class="card-text">Entrenador</p>
										</div>
									</div>
								</div>
								<xsl:for-each select="players/player">
									<div class="col-6 col-md-4 col-xl-3">
										<div class="card" style="{../../gradiente}">
											<img class="card-img-top img-fluid"
												src="{imagen}"
												alt="Title" />
											<div class="card-body text-center text-white">
												<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
												<p class="card-text"><xsl:value-of select="demarcacion"/></p>
											</div>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</section>
					</xsl:for-each>
				</main>
				<footer class="bg-secondary text-white text-center p-2 mt-2">
					<h1>&copy; Daniel de Paz</h1>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
				<script>
					function hideall(abr) {
					document.querySelectorAll('.equipo').forEach(function(div) {
					div.style.display = "none"
					});
					console.log(abr)
					var divequipo = document.getElementById(abr);
					divequipo.style.display = "block"
					}
				</script>
				
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>