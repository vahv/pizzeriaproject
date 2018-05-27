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
@Table(name="extratopping")
public class ExtraTopping implements Serializable {
    private Integer id;
    private Integer topping_id;
    private Integer orderinteger_id;
    private Double price;
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
    @Column(name="topping_id") 
    public Integer getTopping_id() {
        return topping_id;
    }

    public void setTopping_id(Integer topping_id) {
        this.topping_id = topping_id;
    }
    @Column(name="order_integer") 
    public Integer getOrderinteger_id() {
        return orderinteger_id;
    }

    public void setOrderinteger_id(Integer orderinteger_id) {
        this.orderinteger_id = orderinteger_id;
    }
    @Column(name="price") 
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
    @Column(name="status") 
    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
    
    
}
