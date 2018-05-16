/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mx.tecmm.pizzas.dao.OrdersDAO;
import mx.tecmm.pizzas.dao.PizzasDAO;
import mx.tecmm.pizzas.vo.ExtraTopping;
import mx.tecmm.pizzas.vo.CartItem;
import mx.tecmm.pizzas.vo.Pizza;
import mx.tecmm.pizzas.vo.PizzaSize;
import mx.tecmm.pizzas.vo.Topping;

/**
 *
 * @author VictorAbel
 */
@WebServlet(name = "addToCart", urlPatterns = {"/addToCart"})
public class AddToCart extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            
            List<CartItem> cartItems = new ArrayList<>();
            Integer cartItemID = 1;
            if(session.getAttribute("cartItems")!= null){
                cartItems = (List<CartItem>)session.getAttribute("cartItems");
                cartItemID += cartItems.get(cartItems.size()-1).getId();
            }

            
            
            String itemId = request.getParameter("id");
            String size = request.getParameter("tamanio");
            String[] checkedExtraToppings = request.getParameterValues("extraTopping");
          
            
            PizzaSize pizzaSize = PizzasDAO.getPizzaSizes("select pizzasize.id, pizza_id, size_id, precio, pizzasize.status from pizzasize inner join size on (name='"+size+"' and size_id=size.id)where pizza_id="+itemId).get(0);
            Pizza pizza = PizzasDAO.getPizza(Integer.parseInt(itemId));
            
          

            CartItem cartItem = new CartItem();
                  cartItem.setId(cartItemID);
                  cartItem.setItem_id(pizza.getId());
                  cartItem.setOrderItemName(pizza.getPizzaName());
                  cartItem.setPrice(pizzaSize.getPrecio());
                  cartItem.setQuantity(1);
                  cartItem.setStatus(new Byte("1"));
                  cartItem.setExtraToppings(new Byte("0"));
                  cartItem.setExtraToppingList(new ArrayList<Topping>());
            
            if(checkedExtraToppings != null){
                cartItem.setExtraToppings(new Byte("1"));
                String queryToppings="SELECT * FROM topping where id in ( ";
                for(int i=0; i<checkedExtraToppings.length;i++){
                   queryToppings+=checkedExtraToppings[i]+((i+1 != checkedExtraToppings.length)?", ":")");
                }
                List<Topping> toppingList = PizzasDAO.getToppings(queryToppings);
                cartItem.setExtraToppingList((ArrayList<Topping>) toppingList);
            }
            cartItems.add(cartItem);
            
            session.setAttribute("cartItems", cartItems);
            
            out.print("Added");
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
