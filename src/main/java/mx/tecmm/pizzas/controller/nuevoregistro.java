/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.tecmm.pizzas.dao.userDAO;
import mx.tecmm.pizzas.vo.Account;
import mx.tecmm.pizzas.vo.Address;
import mx.tecmm.pizzas.vo.User;

/**
 *
 * @author daniel
 */
@WebServlet(name = "nuevoregistro", urlPatterns = {"/nuevoregistro"})
public class nuevoregistro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("inputEmail2");
            String contraseña = request.getParameter("inputPassword2");
            String contraseña2 = request.getParameter("inputPassword3");
            String nombre = request.getParameter("inputName");
            String calle = request.getParameter("inputStreet");
            Integer numeroint = Integer.parseInt( request.getParameter("inputNumber1"));
            if (!request.getParameter("inputNumber2").equals("")) {
                Integer numeroext = Integer.parseInt(request.getParameter("inputNumber2"));
            }
            if (contraseña.equals(contraseña2)) {
                Account cuenta = new Account();
                cuenta.setEmail(email);
                cuenta.setPassword(contraseña);
                
                Address adres = new Address();
                adres.setStreet(calle);
                adres.setBuildingNumber(numeroint);
                User user = new User();
                user.setAddress(address);
                user.setName(nombre);
                user.set;
                int i = userDAO.addUser(user);
                out.print(i);
            }else
                out.print("equivocado");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
