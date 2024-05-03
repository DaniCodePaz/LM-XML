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
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
            </head>
            <body>
                <a name="top"/>
                <header class="bg-dark text-warning py-2">
                    <div class="container">
                        <div class="row justify-content-between align-items-center">
                            <div class="col">
                                <img src="img/logo.svg" alt="" width="80" class="img-fluid"/>
                            </div>
                            <div class="col text-center">
                                <h1>KingsLeague</h1>
                            </div>
                            <div class="col text-end">
                                <button class="btn btn-warning">Tienda</button>
                            </div>
                        </div>
                    </div>
                </header>
                <section class="bg-dark">
                    <div class="row justify-content-center px-2">
                        <xsl:for-each select="kingsleague/equipo">
                            <div class="col-3 col-md-2 col-xl-1 my-2">
                                <div class="text-center rounded-pill p-2" style="{gradiente}"> 
                                    <img class="card-img-top img-fluid" src="{escudo}" alt="Title" onclick="hideall('{@abr}');" />
                                    <h6 class="card-title text-white pt-2"><xsl:value-of select="@abr"/></h6>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
                <main>
                    <xsl:for-each select="kingsleague/equipo">
                        <div class="equipo" id="{@abr}">
                            <section>
                                <div class="card border-0">
                                    <video autoplay="autoplay" loop="loop"
                                           src="{video}"
                                           poster="{poster}"></video>
                                    <div class="card-img-overlay d-flex justify-content-center align-items-center bg-dark bg-opacity-25">
                                        <div class="text-center bg-dark bg-opacity-50 rounded-pill p-5">
                                            <img src="{escudo}" alt="" width="200" />
                                            <h2 class="card-title text-white"><xsl:value-of select="@nombre"/></h2>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <section class="bg-dark text-white p-3">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col col-md-6 col-xl-4">
                                            <div class="card text-white text-center" style="{gradiente}">
                                                <img class="card-img-top" src="{presidente/imagen}" alt="Title" />
                                                <div class="card-body">
                                                    <h4 class="card-title"><xsl:value-of select="presidente/@nombre"/></h4>
                                                    <p class="card-text">Presidente</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <section class="bg-dark text-white p-3">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-6 col-md-4 col-xl-3 mb-2">
                                            <div class="card text-white text-center" style="{gradiente}">
                                                <img class="card-img-top" src="{entrenador/imagen}" alt="Title" />
                                                <div class="card-body">
                                                    <h4 class="card-title"><xsl:value-of select="entrenador/@nombre"/></h4>
                                                    <p class="card-text">Entrenador</p>
                                                </div>
                                            </div>
                                        </div>
                                        <xsl:for-each select="players/player">
                                            <div class="col-6 col-md-4 col-xl-3 mb-3 d-flex">
                                                <div class="card text-white text-center" style="{../../gradiente}">
                                                    <img class="card-img-top" src="{imagen}" alt="Title" />
                                                    <div class="card-body">
                                                        <h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
                                                        <p class="card-text"><xsl:value-of select="demarcacion"/></p>
                                                    </div>
                                                    <xsl:if test="media!=''">
                                                        <div class="bg-warning text-dark p-1 position-absolute top-0 end-0 m-2 rounded-3">
                                                            Media<br/>
                                                            <xsl:value-of select="media"/>
                                                        </div>
                                                    </xsl:if>
                                                </div>
                                            </div>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </xsl:for-each>	
                </main>
                <footer>
                    <h1 class="text-center text-warning bg-secondary py-3 m-0">&copy; Paco Pulido</h1>
                </footer>
                <a href="#top">
                    <i class="fa fa-3x text-warning fa-arrow-circle-o-up position-fixed bottom-0 end-0 m-3" aria-hidden="true"></i>
                </a>
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