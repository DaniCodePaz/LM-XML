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
				<title>Opel</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
			</head>
			<body>
				<div class="container p-0 shadow">
					<header class="py-2 bg-dark text-white">
						<div class="row">
							<div class="col-1"><img src="img/logo.png" alt=""/></div>
							<div class="col-11 justify-content-center d-flex align-items-center">
								<h1>Opel España</h1>
							</div>
						</div>
					</header>
					<xsl:for-each select="opel/modelo">
						<div class="row">
							<div class="col">
								<div class="card">
									<div class="card-body">
										<div class="row">
											<div class="col-md-6">
												<img class="card-img-top" src="{imagen}" alt=""/>
											</div>
											<div class="col-md-6">
												<h3 class="card-title bg-dark text-white"><xsl:value-of select="@nombre"/></h3>
												<h4 class="card-text">Acabados:</h4>
												<xsl:if test="acabados = ''">
													<h5 class="text-danger">Modelo único; sin acabados...</h5>
												</xsl:if>
												<div id="accordianId" role="tablist" aria-multiselectable="true">
													<xsl:for-each select="acabados/acabado">
														<div class="card">
															<div class="card-header" role="tab" id="section1HeaderId">
																<h5 class="mb-0">
																	<a class="text-secondary" data-toggle="collapse" data-parent="#accordianId" href="#s{@id}" aria-expanded="true" aria-controls="s{@id}">
																		<xsl:value-of select="@nombre"/>
																	</a>
																</h5>
															</div>
															<div id="s{@id}" class="collapse in" role="tabpanel" aria-labelledby="section1HeaderId">
																<div class="card-body">
																	<ul>
																		<xsl:for-each select="item">
																			<li>
																				<xsl:value-of select="."/>
																			</li>
																		</xsl:for-each>
																	</ul>
																</div>
															</div>
														</div>
													</xsl:for-each>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</xsl:for-each>
					<footer class="py-2 bg-dark text-white text-center">
						<h1 class="">XSLT - Azarquiel</h1>
					</footer>				
				</div>
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
												integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
												crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
												integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
												crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
												integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
												crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>