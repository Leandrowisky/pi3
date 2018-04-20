/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.senac.pi.floricultura.teste;

import com.senac.pi.floricultura.controllers.ServicoCliente;
import com.senac.pi.floricultura.model.PessoaFisica;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcelo Pereira <macope727@gmail.com>
 */
@WebServlet(urlPatterns = "/dadosCliente")
public class GetPessoaFisica extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         int cod = Integer.parseInt(req.getParameter("edit"));
         PessoaFisica pf =  ServicoCliente.procuraClientePF(cod);
         
         req.setAttribute("pf", pf);
         RequestDispatcher dispatcher = req.getRequestDispatcher("/AlterarClientePF.jsp");
         dispatcher.forward(req, resp);
         
    }
    
    
    
}