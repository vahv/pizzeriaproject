/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;
import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.tecmm.pizzas.dao.userDAO;
import mx.tecmm.pizzas.vo.Account;
import mx.tecmm.pizzas.vo.Address;
import mx.tecmm.pizzas.vo.Role;
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
            String apep = request.getParameter("inputLastName");
            String apem = request.getParameter("inputSecndLastName");
            String calle = request.getParameter("inputStreet");
            String numeroint = request.getParameter("inputNumber1");
            String numeroext = null;
            String municipio = request.getParameter("inputDistrict");
            
            Account cuenta = new Account();
            Address adres = new Address();
            
            if (!request.getParameter("inputNumber2").equals("")) {
                numeroext = request.getParameter("inputNumber2");
                adres.setApartmentNumber(numeroext);
            }
            if (contraseña.equals(contraseña2)) {
                
                cuenta.setEmail(email);
                cuenta.setPassword(contraseña);
                cuenta.setRole(userDAO.getRol("select * from role where rolename =\"cliente\""));
                cuenta.setStatus(true);
                
                adres.setStreet(calle);
                adres.setBuildingNumber(numeroint);
                adres.setDistrict(municipio);
                adres.setStatus(true);
                adres.setProvince(userDAO.getProvince("select * from province where id=1"));
                
                User user = new User();
                user.setAddress(adres);
                user.setName(nombre);
                user.setLastName(apep);
                user.setSecondLastName(apem);
                user.setAccount(cuenta);
                user.setStatus(true);
                adres.setUser(user);
                
                user.setAccount(userDAO.addAccount(cuenta));
                adres.setUserId(userDAO.addUser(user));
                int  i = userDAO.addAddress(adres);
                if (i == 1) {
                    request.login(cuenta.getEmail(), cuenta.getPassword());
                    
                }
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
