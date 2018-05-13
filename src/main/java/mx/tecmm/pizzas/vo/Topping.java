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
@Table(name="topping")

public class Topping implements Serializable{
    private Integer id;
    private String name;
    private Double price;
    private Byte canBeExtra;
    private Byte status;
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="id") 
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    @Column(name="name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name="price")
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
    @Column(name="canBeExtra")
    public Byte getCanBeExtra() {
        return canBeExtra;
    }

    public void setCanBeExtra(Byte canBeExtra) {
        this.canBeExtra = canBeExtra;
    }
    @Column(name="status")
    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }   
}

