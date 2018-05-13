/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.dao;

import mx.tecmm.pizzas.util.HibernateUtil;
import mx.tecmm.pizzas.vo.Account;
import mx.tecmm.pizzas.vo.Address;
import mx.tecmm.pizzas.vo.Province;
import mx.tecmm.pizzas.vo.Role;
import mx.tecmm.pizzas.vo.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author daniel
 */
public class userDAO {
    static public Account addAccount(Account acount){
        Session session = null;
        Transaction transaction = null;
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();//desde aqui se inician las transacciones
            session.saveOrUpdate(acount);
            transaction.commit();
            
        }catch(HibernateException ex){
            transaction.rollback();
        }
        finally{
            if (session != null) {
                session.close();
            }
            
        }
        return acount;
    }
    
    static public int addUser(User user){
        Session session = null;
        Transaction transaction = null;
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();//desde aqui se inician las transacciones
            session.save(user);
            transaction.commit();
            return user.getId();
        }catch(HibernateException ex){
            transaction.rollback();
        }
        finally{
            if (session != null) {
                session.close();
            }
            
        }
        return 0;
    }
    
    static public int addAddress(Address adres){
        Session session = null;
        Transaction transaction = null;
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();//desde aqui se inician las transacciones
            session.save(adres);
            transaction.commit();
            return 1;
        }catch(HibernateException ex){
            transaction.rollback();
        }
        finally{
            if (session != null) {
                session.close();
            }
            
        }
        return 0;
    }
    
    static public Role getRol(String sql){
        Session session = null;
        Transaction transaction = null;
        Role rol = null;
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();//desde aqui se inician las transacciones
            Query query = session.createSQLQuery(sql).addEntity(Role.class);
            rol = (Role) query.list().get(0);
            transaction.commit();
            
        }catch(HibernateException ex){
            transaction.rollback();
        }
        finally{
            if (session != null) {
                session.close();
            }
        }
        return  rol;
    }
    static public Province getProvince(String sql){
        Session session = null;
        Transaction transaction = null;
        Province rol = null;
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();//desde aqui se inician las transacciones
            Query query = session.createSQLQuery(sql).addEntity(Province.class);
            rol = (Province) query.list().get(0);
            transaction.commit();
            
        }catch(HibernateException ex){
            transaction.rollback();
        }
        finally{
            if (session != null) {
                session.close();
            }
        }
        return  rol;
    }
}
