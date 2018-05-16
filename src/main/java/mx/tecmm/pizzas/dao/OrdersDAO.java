/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.dao;

import mx.tecmm.pizzas.util.HibernateUtil;
import mx.tecmm.pizzas.vo.OrderItem;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author VictorAbel
 */
public class OrdersDAO {
    
    static public Integer addOrderItem(OrderItem registro){
            Session currentSession = null;
            Transaction currentTransaction = null;

            try{
                currentSession = HibernateUtil.getSessionFactory().openSession();
                currentTransaction = currentSession.beginTransaction();
                if(registro.getId()== null){
                    currentSession.save(registro);
                }else{
                    currentSession.update(registro);
                }
                currentTransaction.commit();

            }catch(HibernateException ex){

                if(currentTransaction != null && currentTransaction.isActive()){
                    currentTransaction.rollback();
                }
                if(currentSession != null && currentSession.isOpen()){
                    currentSession.close();
                }
            }
           return registro.getId();
        }
    
}
