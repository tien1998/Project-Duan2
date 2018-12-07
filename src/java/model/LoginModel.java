/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author QUOCTRONG
 */
public class LoginModel {
    //Hàm trả về username và password từ database
    public Users login (String username, String password){
        Users u = null;
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("from Users where username =:user and password =:pass");
        query.setString("user", username);
        query.setString("pass", password);
        u = (Users) query.uniqueResult();
        return u;
    }
    
}
