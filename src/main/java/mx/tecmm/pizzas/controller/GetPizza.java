/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.tecmm.pizzas.dao.PizzasDAO;
import mx.tecmm.pizzas.vo.Pizza;
import mx.tecmm.pizzas.vo.PizzaSize;
import mx.tecmm.pizzas.vo.Topping;

/**
 *
 * @author VictorAbel
 */
@WebServlet(name = "getPizza", urlPatterns = {"/getPizza"})
public class GetPizza extends HttpServlet {

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
        response.setContentType("application/json;charset=utf-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Integer id = Integer.parseInt(request.getParameter("id"));
            JsonArray array =  new JsonArray();
            JsonObject json= new JsonObject();
            
            Pizza pizza = PizzasDAO.getPizza(id);
            json.addProperty("id", pizza.getId());
            json.addProperty("pizzaName",pizza.getPizzaName());
            json.addProperty("pizzaImage",pizza.getPizzaImage());
            json.addProperty("categoryName",pizza.getCategoryName());
            json.addProperty("status",pizza.getStatus());
            array.add(json);
            
            
            String toppingQuery="SELECT * FROM pizzeria.topping inner join pizzeria.pizzatoppings on Topping_id = id and Pizza_id ="+id;
            List<Topping> lista = PizzasDAO.getToppings(toppingQuery);
            JsonArray toppings =  new JsonArray();
            for (Topping topping : lista) {
                JsonObject json2 = new JsonObject();
                json2.addProperty("id", topping.getId());
                json2.addProperty("name",topping.getName());
                json2.addProperty("price",topping.getPrice());
                json2.addProperty("canBeExtra",topping.getCanBeExtra());
                json2.addProperty("price",topping.getPrice());
                json2.addProperty("status",topping.getStatus());
                toppings.add(json2);
            }
            array.add(toppings);
            
            String pizzaSizeQuery = "SELECT * FROM pizzeria.pizzasize where pizza_id="+id;
            List<PizzaSize> pizzaSizesList = PizzasDAO.getPizzaSizes(pizzaSizeQuery);    
            JsonArray pizzaSizes =  new JsonArray();
            for(PizzaSize pizzaSize: pizzaSizesList){
                JsonObject parseSizeToJson = new JsonObject();
                parseSizeToJson.addProperty("size_id", pizzaSize.getSize_id());
                parseSizeToJson.addProperty("price", pizzaSize.getPrecio());
                parseSizeToJson.addProperty("pizza_id", pizzaSize.getPizza_id());
                pizzaSizes.add(parseSizeToJson);
            }
            
            array.add(pizzaSizes);
            Gson gson = new GsonBuilder().setPrettyPrinting().create();
            out.print(gson.toJson(array));
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
