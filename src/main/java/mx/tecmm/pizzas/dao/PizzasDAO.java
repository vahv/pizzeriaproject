/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.dao;

import java.util.List;
import mx.tecmm.pizzas.util.HibernateUtil;
import mx.tecmm.pizzas.vo.Pizza;
import mx.tecmm.pizzas.vo.PizzaSize;
import mx.tecmm.pizzas.vo.Topping;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author VictorAbel
 */
public class PizzasDAO {
    
    static public Pizza getPizza(Integer id){
        Session currentSession = null;
        Transaction currentTransaction = null;
        Pizza registro = null;
        
        try{
            currentSession = HibernateUtil.getSessionFactory().openSession();
            currentTransaction = currentSession.beginTransaction();
            registro = (Pizza) currentSession.get(Pizza.class, id);
            currentTransaction.commit();
        
        }catch(HibernateException ex){
            
            if(currentTransaction != null && currentTransaction.isActive()){
                currentTransaction.rollback();
            }
            if(currentSession != null && currentSession.isOpen()){
                currentSession.close();
            }
        }
        return registro;
    }
    
    static public List<Pizza> getPizzas(String sql){
        Session currentSession = null;
        Transaction currentTransaction = null;
        List<Pizza> registros = null;
        
        try{
            currentSession = HibernateUtil.getSessionFactory().openSession();
            currentTransaction = currentSession.beginTransaction();
            Query query = currentSession.createSQLQuery(sql).addEntity(Pizza.class);
            registros = query.list();
            currentTransaction.commit();
        
        }catch(HibernateException ex){
            
            if(currentTransaction != null && currentTransaction.isActive()){
                currentTransaction.rollback();
            }
         
            if(currentSession != null && currentSession.isOpen()){
                currentSession.close();
            }
        }
        return registros;    
    }
    
        static public List<Topping> getToppings(String sql){
        Session currentSession = null;
        Transaction currentTransaction = null;
        List<Topping> registros = null;
        
        try{
            currentSession = HibernateUtil.getSessionFactory().openSession();
            currentTransaction = currentSession.beginTransaction();
            Query query = currentSession.createSQLQuery(sql).addEntity(Topping.class);
            registros = query.list();
            currentTransaction.commit();
        
        }catch(HibernateException ex){
            
            if(currentTransaction != null && currentTransaction.isActive()){
                currentTransaction.rollback();
            }
         
            if(currentSession != null && currentSession.isOpen()){
                currentSession.close();
            }
        }
        return registros;    
    }
        
    static public List<PizzaSize> getPizzaSizes(String sql){
            Session currentSession = null;
            Transaction currentTransaction = null;
            List<PizzaSize> registros = null;

            try{
                currentSession = HibernateUtil.getSessionFactory().openSession();
                currentTransaction = currentSession.beginTransaction();
                Query query = currentSession.createSQLQuery(sql).addEntity(PizzaSize.class);
                registros = query.list();
                currentTransaction.commit();

            }catch(HibernateException ex){

                if(currentTransaction != null && currentTransaction.isActive()){
                    currentTransaction.rollback();
                }

                if(currentSession != null && currentSession.isOpen()){
                    currentSession.close();
                }
            }
            return registros;    
        }           
}
