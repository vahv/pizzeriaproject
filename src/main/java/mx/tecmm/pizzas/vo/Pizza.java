/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.vo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author VictorAbel
 */
@Entity
@Table(name="pizza")
public class Pizza implements Serializable{
    
    private Integer id;
    private String pizzaName;
    private String pizzaImage;
    private String categoryName;
    private Byte   status; 

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="id")  
    public Integer getId(){
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    @Column(name="pizzaName") 
    public String getPizzaName() {
        return pizzaName;
    }

    public void setPizzaName(String pizzaName) {
        this.pizzaName = pizzaName;
    }
    @Column(name="pizzaImage") 
    public String getPizzaImage() {
        return pizzaImage;
    }

    public void setPizzaImage(String pizzaImage) {
        this.pizzaImage = pizzaImage;
    }
    @Column(name="categoryName") 
    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
    @Column(name="status") 
    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}
