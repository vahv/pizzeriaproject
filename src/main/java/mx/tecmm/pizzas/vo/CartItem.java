/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.vo;

import java.util.ArrayList;

/**
 *
 * @author VictorAbel
 */
public class CartItem {
    private Integer id;
    private Integer item_id;
    private String orderItemName;
    private Byte extraToppings;
    private Double price;
    private Integer quantity;
    private Byte status;
    private ArrayList<Topping> extraToppingList;

  
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
    public Integer getItem_id() {
        return item_id;
    }

    public void setItem_id(Integer item_id) {
        this.item_id = item_id;
    }
   
    public String getOrderItemName() {
        return orderItemName;
    }

    public void setOrderItemName(String orderItemName) {
        this.orderItemName = orderItemName;
    }
   
    public Byte getExtraToppings() {
        return extraToppings;
    }

    public void setExtraToppings(Byte extraToppings) {
        this.extraToppings = extraToppings;
    }
    
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
   
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    
    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
    
    public ArrayList<Topping> getExtraToppingList() {
        return extraToppingList;
    }
    
    public void setExtraToppingList(ArrayList<Topping> extraToppingList) {
        this.extraToppingList = extraToppingList;
    }
}   

