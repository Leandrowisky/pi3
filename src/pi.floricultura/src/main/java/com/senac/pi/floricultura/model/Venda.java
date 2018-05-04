/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.senac.pi.floricultura.model;

import com.senac.pi.floricultura.DAO.VendaDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author Vinicius
 */
public class Venda {

    private int id;
    private int codigo;
    private Calendar data;
    private int idPessoa;
    private int idVendedor;
    private ArrayList<ItensVenda> itensVenda;
    private double valorTotal;

    public Venda() {
        this.itensVenda = new ArrayList<>();
    }

    public Venda(ResultSet rs) throws SQLException, Exception {
        this.itensVenda = new ArrayList<>();
        codigo = rs.getInt("id");
        // cliente = DAO.ClienteDAO.obter(rs.getInt("idCliente"));
        valorTotal = rs.getFloat("ValorTotal");
        data = (Calendar) rs.getObject("Data");
        itensVenda = (ArrayList<ItensVenda>) VendaDAO.getItensVenda(rs.getInt("idVenda"));

    }

    //Ainda não tem produto
//    public void setProdutoNoItensVenda(Produto entrada) {
//
//        ItensVenda item = new ItensVenda();
//
//        item.setCodProduto(entrada.getId());
//        item.setNome(entrada.getNome());
//        item.setQuantidade(entrada.getQuantidadeVenda());
//        item.setPreco(entrada.getPreco());
//
//        itensVenda.add(item);
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codVenda) {
        this.codigo = codVenda;
    }

    public Calendar getDataVenda() {
        return data;
    }

    public void setDataVenda(Calendar dataVenda) {
        this.data = dataVenda;
    }

    public int getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(int pessoa) {
        this.idPessoa = pessoa;
    }

    public int getIdVendedor() {
        return idVendedor;
    }

    public void setIdVendedor(int idVendedor) {
        this.idVendedor = idVendedor;
    }

    public ArrayList<ItensVenda> getListaItensVenda() {
        return itensVenda;
    }

    public void setListaItensVenda(ArrayList<ItensVenda> listaProdutos) {
        this.itensVenda = listaProdutos;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }

}
