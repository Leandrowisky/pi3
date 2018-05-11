<%-- 
    Document   : CadastroFilial
    Created on : 10/05/2018, 18:59:33
    Author     : Marcelo Pereira <macope727@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pagina Generica</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="css/main.css" />
    </head>
    <body>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <!-- Header -->
                    <header id="header">
                        <a href="index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
                        <ul class="icons">
                            <li><a href="#"><span class="label">User Name</span></a></li>
                            <li><a href="#"><span class="label">User Foto</span></a></li>
                            <li><a href="#"><span class="label">Sair</span></a></li>
                            <!--										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                                                                                                            <li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>-->
                        </ul>
                    </header>

                    <!-- Content -->
                    <section>
                        <header class="main">
                            <h1>Corpo MSG</h1>
                        </header>

                        <hr class="major" />

                        <div class="formCadFilial">
                            <form action="CadastrarFilial" method="POST">
                                <div id="formTop">
                                    <label for="codFilial">Cod. Filial</label>
                                    <input type="text" name="codFilial" id="codFilial">
                                    <label for="dtCadastro">Dt. Cadastro</label>
                                    <input type="date" name="dtCadastro" id="dtCadastro">
                                </div>
                                <div class="formBody">
                                    <label for="rSocial">Razão Social</label>
                                    <input type="text" name="rSocial" id="rSocial">
                                    <label for="nFant">Nome Fantasia</label>
                                    <input type="text" name="nFant" id="nFant">
                                    <label for="cnpj">CNPJ</label>
                                    <input type="text" name="cnpj" id="cnpj">
                                    <label for="inscEst">IE</label>
                                    <input type="text" name="inscEst" id="inscEst">
                                    <label for="gerente">Gerente</label>
                                    <input type="text" name="gerente" id="gerente">
                                    <label for="email">E-mail</label>
                                    <input type="email" name="email" id="email">
                                    <label for="tel1">Telefone</label>
                                    <input type="tel" name="tel1" id="tel1">
                                    <label for="tel2">Telefone 2</label>
                                    <input type="tel" name="tel2" id="tel2">
                                    <label for="endereco">Endereço</label>
                                    <input type="text" name="endereco" id="endereco">
                                    <label for="numero">Num.</label>
                                    <input type="text" name="numero" id="numero">
                                    <label for="comp">Complemento</label>
                                    <input type="text" name="comp" id="comp">
                                    <label for="bairro">Bairro</label>
                                    <input type="text" name="bairro" id="bairro">
                                    <label for="cep">CEP</label>
                                    <input type="text" name="cep" id="cep">
                                    <label for="cid">Cidade</label>
                                    <input type="text" name="cid" id="cid">
                                    <label for="uf">UF</label>
                                    <input type="text" name="uf" id="uf">
                                    <div id="formButton">
                                        <input type="submit" name="btCad" id="btCad" value="Cadastrar">
                                        <input type="reset" value="Cancelar">
                                    </div>
                                </div>
                            </form>

                        </div>
                        <hr class="major" />


                    </section>

                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">

                    <!-- Search -->
                    <section id="topSidBar" class="alt">
                        <img class="imgTopSB" src="img/logo_flor_vetorizada_03.png"/>
                    </section>

                    <!-- Menu -->
                    <nav id="menu">
                        <header class="major">
                            <h2>Menu</h2>
                        </header>
                        <ul>
                            <li><a href="index.html">Homepage</a></li>
                            <!--										<li><a href="generic.html"></a></li>
                                                                                                            <li><a href="elements.html">Elements</a></li>-->
                            <li>
                                <span class="opener">Vendas</span>
                                <ul>
                                    <li><a href="#">Lorem Dolor</a></li>
                                    <li><a href="#">Ipsum Adipiscing</a></li>
                                    <li><a href="#">Tempus Magna</a></li>
                                    <li><a href="#">Feugiat Veroeros</a></li>
                                </ul>
                            </li>
                            <li>
                                <span class="opener">Produto</span>
                                <ul>
                                    <li><a href="#">Lorem Dolor</a></li>
                                    <li><a href="#">Ipsum Adipiscing</a></li>
                                    <li><a href="#">Tempus Magna</a></li>
                                    <li><a href="#">Feugiat Veroeros</a></li>
                                </ul>
                            </li>
                            <li>
                                <span class="opener">Cliente</span>
                                <ul>
                                    <li><a href="/pi.floricultura/ListarClientes">Consultar</a></li>
                                    <li><a href="#">Ipsum Adipiscing</a></li>
                                    <li><a href="#">Tempus Magna</a></li>
                                    <li><a href="#">Feugiat Veroeros</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- Footer -->
                    <footer id="footer">
                        <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
                    </footer>

                </div>
            </div>

        </div>

        <!-- Scripts -->
        <script src="js/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/util.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>