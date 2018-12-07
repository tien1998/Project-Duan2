/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author QUOCTRONG
 */
public class CategoryModel {
    //Trả về danh sách Category
    public List<Category> getAllCategory (){
        
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Category> list = null;
        Transaction trans = ss.beginTransaction();
        list = ss.createQuery("from Category").list();
        trans.commit();
        return list;
    }
    
    //Lấy ra một Category để sửa (Theo ID)
    public Category getCategoryByID(int id){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Category category = new Category();
        ss.beginTransaction();
        category =(Category) ss.get(Category.class, id);
        ss.getTransaction().commit();
        return category;
    }
    
    //Thêm Category
    public void insertCategory(Category category){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction trans = ss.beginTransaction();
        ss.save(category);
        trans.commit();
    }
    
    //Sửa Category
    public void editCategory(Category category){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction trans = ss.beginTransaction();
        ss.update(category);
        trans.commit();
    }
    
    //Xoá Category
    public void delCategory(Category category){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction trans = ss.beginTransaction();
        ss.delete(category);
        trans.commit();
    }
}
