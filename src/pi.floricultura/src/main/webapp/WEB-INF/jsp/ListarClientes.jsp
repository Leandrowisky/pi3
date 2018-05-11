<%-- 
    Document   : ListarClientes
    Created on : 17/04/2018, 15:56:08
    Author     : Marcelo Pereira
--%>

<%@page import="java.util.List"%>
<%@page import="com.senac.pi.floricultura.controllers.ServicoCliente"%>
<%@page import="com.senac.pi.floricultura.model.PessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <title>JSP Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    </head>
    <!-- Scripts -->
    <script src="../../js/jquery.min.js"></script>
    <script src="../../js/skel.min.js"></script>
    <script src="../../js/util.js"></script>
    <script src="../../js/main.js"></script>
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
                            <h1>Consulta Clientes</h1>
                        </header>
                        <!-- Search -->
                        <section id="search" class="alt">
                            <form method="POST" action="ConsultarCliente">
                                <input type="text" name="cpf" id="cpf" placeholder="CPF apenas números" />
                            </form>
                        </section>

                        <hr class="major" />


                        <!--%
                            List<PessoaFisica> listPessoa = ServicoCliente.listarClientes();
                        %-->
                        <table>
                            <theader>
                                <tr>
                                    <td>Nome</td>
                                    <td>E-mail</td>
                                    <td>Telefone</td>
                                    <td>Ação</td>
                                </tr>
                            </theader>

                            <!--%
                                for (PessoaFisica pf : listPessoa) {
                            %-->
                            <c:forEach var="cli" items="${listaCliPF}">
                                <tr>
                                    <td><c:out value="${cli.nome}"></c:out></td>
                                    <td><c:out value="${cli.email}"></c:out></td>
                                    <td><c:out value="${cli.telefone}"></c:out></td>
                                    <td id="btsAltExc">
                                            <form action="dadosCliente" method="POST" class="listCli">
                                                <input type="image" src="../../img/edit_icon.png" 
                                                       name="edit" value="${cli.id}"></form>
                                        <form action="excluirPessoa" method="POST" class="listCli">
                                            <input type="image" src="../../img/delete_icon.jpg"
                                                   name="excluir" value="${cli.id}"></form>
                                    </td>
                                </tr>
                            </c:forEach>
                            <!--%
                                }
                            %-->

                        </table>


                        <hr class="major" />


                    </section>

                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">

                    <!-- Top -->
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
                                    <li><a href="/floricultura/ListarClientes">Consultar</a></li>
                                    <li><a href="/floricultura/cadCli">Cadastro</a></li>
                                </ul>
                            </li>
                            <li>
                                <span class="opener">Filiais</span>
                                <ul>
                                    <li><a href="/floricultura/CadastroFilial">Cadastrar</a></li>
                                    <li><a href="/floricultura/ListaFiliais">Unidades</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Ante interdum</h2>
                        </header>
                        <div class="mini-posts">
                            <article>
                                <a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
                                <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
                                <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
                                <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
                            </article>
                        </div>
                        <ul class="actions">
                            <li><a href="#" class="button">More</a></li>
                        </ul>
                    </section>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Get in touch</h2>
                        </header>
                        <p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
                        <ul class="contact">
                            <li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
                            <li class="fa-phone">(000) 000-0000</li>
                            <li class="fa-home">1234 Somewhere Road #8254<br />
                                Nashville, TN 00000-0000</li>
                        </ul>
                    </section>

                    <!-- Footer -->
                    <footer id="footer">
                        <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
                    </footer>

                </div>
            </div>

        </div>

    </body>
</html>
