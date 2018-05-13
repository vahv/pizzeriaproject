/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.tecmm.pizzas.dao;

import java.util.List;
import mx.tecmm.pizzas.util.HibernateUtil;
import mx.tecmm.pizzas.vo.Account;
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
    static public int addUser(Account acount){
        Session session = null;
        Transaction transaction = null;
        try{
            session = HibernateUtil.getSessionFactory().getCurrentSession();
            transaction = session.beginTransaction();//desde aqui se inician las transacciones
            session.saveOrUpdate(acount);
            transaction.commit();
            return acount.getId();
        }catch(HibernateException ex){
            transaction.rollback();
        }
        return 0;
    }
}
