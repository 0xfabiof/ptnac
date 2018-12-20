<?xml	version="1.0"	encoding="UTF-8"?>
<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0">
    <xsl:template match="/">
        <xsl:for-each	select="computadores/computador">
        <xsl:result-document method="html"	href="computador{@identificador}.html">     
        <html>
            <head>
                <title> PTNAC - <xsl:value-of select="@identificador"/> </title>
                <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
            </head>
            <body>
                <div class="base">
                    <section>
                        <h1> PTNAC </h1>
                    </section>
                    <nav class="menuvertical">
                        <ul>
                            <li><a href="index.html">Página Inicial</a></li>
                            <li><a href="2pagina.html">Computadores</a></li>
                            <li><a href="#">Tablets</a></li>
                            <li><a href="#">Smartphones</a></li>
                            <li><a href="#">Câmaras Fotográficas</a></li>
                        </ul>
                    </nav>
                    <section>
                        <input type="text" name="search" placeholder="Pesquisar produtos" id="pesquisa3"/>
                    </section>
                    <div class="slideshow">
                        <img class="asuspics" alt="" width="255" height="190">
                            <xsl:attribute name="src">
                                <xsl:value-of select="imagem/@file"/>
                            </xsl:attribute>
                        </img>
                        <img class="asuspics" alt="" width="255" height="190">
                            <xsl:attribute name="src">
                            <xsl:value-of select="imagem2/@file"/>
                        </xsl:attribute>
                        </img>
                        <img class="asuspics" alt="" width="255" height="190">
                            <xsl:attribute name="src">
                                <xsl:value-of select="imagem3/@file"/>
                            </xsl:attribute>
                        </img>
                    </div>
                    <script>
                        <![CDATA[
                        var slideIndex = 0;
                        carousel();
                        
                        function carousel() {
                        var i;
                        var x = document.getElementsByClassName("asuspics");
                        for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none"; 
                        }
                        slideIndex++;
                        if (slideIndex > x.length) {slideIndex = 1} 
                        x[slideIndex-1].style.display = "block"; 
                        setTimeout(carousel, 2300); // 2 segundos
                        }
]]>
                    </script>
                    <h4 id="spectitle"> Especificações: </h4>
                    <div class="listagem">
                        <ul id="listaspecs">
                            <li> <strong>Marca:</strong></li>
                            <li> <strong>Processador:</strong></li>
                            <li> <strong>Memória RAM:</strong></li>
                            <li> <strong>Disco:</strong></li>
                            <li> <strong>Placa Gráfica:</strong></li>
                            <li> <strong>Tamanho do Ecrã:</strong></li>
                            <li> <strong>Resolução do Ecrã:</strong></li>
                            <li> <strong>Sistema Operativo:</strong></li>
                        </ul>
                        <ul id="listaspecs2">
                            <li><xsl:value-of select="marca"/></li>
                            <li><xsl:value-of select="processador/fabricante"/><xsl:text> </xsl:text><xsl:value-of select="processador/versao"/><xsl:text> </xsl:text><xsl:value-of select="processador/numero_processador"/><xsl:text> </xsl:text><xsl:value-of select="processador/frequencia"/><xsl:value-of select="processador/frequencia/@unidade"/></li>
                            <li><xsl:value-of select="memoria/quantidade"/><xsl:text> </xsl:text><xsl:value-of select="memoria/quantidade/@unidade"/> </li>
                            <li><xsl:value-of select="disco/primario"/><xsl:text> </xsl:text><xsl:value-of select="disco/primario/@unidade"/><xsl:text> </xsl:text><xsl:value-of select="disco/primario/@tipo"/> + <xsl:value-of select="disco/secundario"/><xsl:text> </xsl:text><xsl:value-of select="disco/secundario/@unidade"/><xsl:text> </xsl:text><xsl:value-of select="disco/secundario/@tipo"/></li>
                            <li><xsl:value-of select="placa_grafica/fabricante"/><xsl:text> </xsl:text><xsl:value-of select="placa_grafica/gama"/><xsl:text> </xsl:text><xsl:value-of select="placa_grafica/numero_placa"/><xsl:text> </xsl:text><xsl:value-of select="placa_grafica/memoria_grafica/quantidade"/><xsl:value-of select="placa_grafica/memoria_grafica/quantidade/@unidade"/><xsl:text> </xsl:text><xsl:value-of select="placa_grafica/memoria_grafica/tipo"/></li>
                            <li><xsl:value-of select="tamanho_ecra"/><xsl:value-of select="tamanho_ecra/@unidade"/></li>
                            <li><xsl:value-of select="resolucao_ecra/horizontal"/>x<xsl:value-of select="resolucao_ecra/vertical"/></li>
                            <li><xsl:value-of select="sistema_operativo/sistema"/><xsl:text> </xsl:text><xsl:value-of select="sistema_operativo/versao"/></li>
                        </ul>
                        <ul id="listaspecscont" style="display:none">
                            <li><strong>Drive:</strong></li>
                            <li><strong>Conetividade s/ fios:</strong></li>
                            <li><strong>Ligações:</strong></li>
                            <li><strong>Ligações Áudio:</strong></li>
                            <li><strong>Ligações Vídeo:</strong></li>
                            <li><strong>Sistema de Som:</strong></li>
                            <li><strong>Webcam Incorporada:</strong></li>
                            <li><strong>Altura:</strong></li>
                            <li><strong>Comprimento:</strong></li>
                            <li><strong>Espessura:</strong></li>
                            <li><strong>Peso:</strong></li>
                        </ul>
                        <ul id="listaspecscont2" style="display:none">
                            <li><xsl:value-of select="drive"/></li>
                            <li><xsl:choose>
                                <xsl:when test="conetividade_sem_fios/wifi = 0">
                                </xsl:when>
                                <xsl:otherwise>
                                    Wi-fi
                                </xsl:otherwise>
                            </xsl:choose><xsl:text>, </xsl:text>
                                <xsl:choose>
                                    <xsl:when test="conetividade_sem_fios/bluetooth = 0">
                                    </xsl:when>
                                    <xsl:otherwise>
                                        Bluetooth
                                    </xsl:otherwise>
                                </xsl:choose> </li>
                            <li><xsl:for-each select="ligacoes/outras/ligacao"><xsl:value-of select="quantidade"/>x<xsl:text> </xsl:text> <xsl:value-of select="tipo"/><xsl:text>; </xsl:text></xsl:for-each></li>
                            <li><xsl:for-each select="ligacoes/audio/ligacao"><xsl:value-of select="quantidade"/>x<xsl:text> </xsl:text> <xsl:value-of select="tipo"/><xsl:text>; </xsl:text></xsl:for-each> </li>
                            <li><xsl:for-each select="ligacoes/video/ligacao"><xsl:value-of select="quantidade"/>x<xsl:text> </xsl:text> <xsl:value-of select="tipo"/><xsl:text>; </xsl:text></xsl:for-each> </li>
                            <li><xsl:choose>
                                <xsl:when test="sistema_de_som/coluna_imbutida = 0">
                                </xsl:when>
                                <xsl:otherwise>
                                    Coluna Imbutida
                                </xsl:otherwise>
                            </xsl:choose><xsl:text>, </xsl:text><xsl:choose>
                                <xsl:when test="sistema_de_som/microfone_imbutido = 0">
                                </xsl:when>
                                <xsl:otherwise>
                                    Microfone Imbutido
                                </xsl:otherwise>
                            </xsl:choose></li>
                            <li><xsl:choose>
                                <xsl:when test="webcam_incorporada = 0">
                                </xsl:when>
                                <xsl:otherwise>
                                    Sim
                                </xsl:otherwise>
                            </xsl:choose></li>
                            <li><xsl:value-of select="altura"/><xsl:text> </xsl:text><xsl:value-of select="altura/@unidade"/> </li>
                            <li><xsl:value-of select="comprimento"/><xsl:text> </xsl:text><xsl:value-of select="comprimento/@unidade"/> </li>
                            <li><xsl:value-of select="espessura"/><xsl:text> </xsl:text><xsl:value-of select="espessura/@unidade"/> </li>
                            <li><xsl:value-of select="peso"/><xsl:text> </xsl:text><xsl:value-of select="peso/@unidade"/></li>
                        </ul>
                    </div>
                    <div id="partebaixo">
                        <a id="seeMore" onclick="toggleSeeMore()" href="javascript:void(0);">Ver mais</a>
                        <script>
                            <![CDATA[
                            function toggleSeeMore() {
                            if(document.getElementById("listaspecscont").style.display == 'none') {
                            document.getElementById("listaspecscont").style.display = 'block';
                            document.getElementById("listaspecscont2").style.display = 'block';
                            document.getElementById("seeMore").innerHTML = "Ver menos";
                            document.getElementById("partebaixo").style.top = '120px';
                            }
                            else {
                            document.getElementById("listaspecscont").style.display = 'none';
                            document.getElementById("listaspecscont2").style.display = 'none';
                            document.getElementById("partebaixo").style.top = '-80px';
                            document.getElementById("seeMore").innerHTML = 'Ver mais';        
                            }
                            }
]]>
                        </script>
                        <ul id="listadesc">
                            <li><xsl:value-of select="descricao1"/></li>
                            <li><xsl:value-of select="descricao2"/></li>
                            <li><xsl:value-of select="descricao3"/></li>
                        </ul>
                        <h4 id="preco"> Preço: <strong><xsl:value-of select="preco"/><xsl:text> </xsl:text> <xsl:value-of select="preco/@moeda"/> </strong></h4>
                        <nav class="menu2">
                            <ul>
                                <li><a href="#">Contactos</a></li>
                                <li><a href="#">Apoio ao Cliente</a></li>
                                <li><a href="#">Parcerias</a></li>
                                <li><a href="#">Facebook</a></li>
                            </ul>
                        </nav>
                        <nav>
                            <p> <a href="#" id="botaocarrinho"> Adicionar ao Carrinho </a></p>
                        </nav>
                    </div>
                    <h2><xsl:value-of select="@identificador"/></h2>
                    <div id="produtos">
                        <h3> Produtos Semelhantes: </h3>
                        <a href="#"><img alt="" width="165" height="115">
                            <xsl:attribute name="src">
                                <xsl:value-of select="relacionados/relacionado1/imagem/@file"/>
                            </xsl:attribute>
                        </img></a>
                        <a href="#"><p><xsl:value-of select="relacionados/relacionado1/nome"/> <br/>
                            <xsl:value-of select="relacionados/relacionado1/preco"/><xsl:value-of select="relacionados/relacionado1/preco/@moeda"/></p></a>
                        <br/>
                            <br/>
                        <a href="#"><img alt="" width="165" height="115">
                            <xsl:attribute name="src">
                                <xsl:value-of select="relacionados/relacionado2/imagem/@file"/>
                            </xsl:attribute>
                        </img></a>
                        <a href="#"><p><xsl:value-of select="relacionados/relacionado2/nome"/> <br/>
                            <xsl:value-of select="relacionados/relacionado2/preco"/><xsl:value-of select="relacionados/relacionado2/preco/@moeda"/></p></a>
                    </div>
                </div>
            </body>    
        </html>	
        </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>